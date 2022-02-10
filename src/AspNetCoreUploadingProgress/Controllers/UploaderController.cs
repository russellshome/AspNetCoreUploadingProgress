// Copyright © 2017 Dmitry Sikorsky. All rights reserved.
// Licensed under the Apache License, Version 2.0. See License.txt in the project root for license information.

using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Net.Http.Headers;

namespace AspNetCoreFileUploading
{
    public class UploaderController : Controller
    {
        private readonly IWebHostEnvironment HostingEnvironment;
        private  IConfiguration Configuration { get; }

        public UploaderController(
            IWebHostEnvironment hostingEnvironment, IConfiguration configuration)
        {
            HostingEnvironment = hostingEnvironment;
            Configuration = configuration;
        }

        [HttpPost]
        public async Task<IActionResult> Index(IList<IFormFile> files, string id)
        {
            long totalBytes = files.Sum(f => f.Length);

            long fileSizeLimit = Configuration.GetValue<long>("FileSizeLimit");
            if (totalBytes > fileSizeLimit)
            {
                throw new ArgumentException("Exceeded total file size limit", nameof(files));
            }
            var tracker = ProgressTrackers.GetTracker(id);
            long totalReadBytes = 0;
            bool aborted = false;
            foreach (IFormFile source in files)
            {
                if (!aborted)
                {
                    string filename = ContentDispositionHeaderValue.Parse(source.ContentDisposition).FileName.ToString().Trim('"');
                    filename = this.EnsureCorrectFilename(filename);
                    byte[] buffer = new byte[16 * 1024];

                    using (FileStream output = System.IO.File.Create(this.GetPathAndFilename(filename)))
                    {
                        using (Stream input = source.OpenReadStream())
                        {
                            int readBytes;
                            while ((readBytes = input.Read(buffer, 0, buffer.Length)) > 0 && !aborted)
                            {
                                await output.WriteAsync(buffer, 0, readBytes);
                                totalReadBytes += readBytes;
                                tracker.SetProgress((int)((float)totalReadBytes / (float)totalBytes * 100.0));
                                await Task.Delay(100); // It is only to make the process slower
                                var token = HttpContext.RequestAborted;
                                aborted = token.IsCancellationRequested;
                            }
                            if (aborted)
                            {
                                // At this point we know that the output is open
                                // and we are about to delete the file so make sure the 
                                // stream is closed
                                output.Close();
                                break;
                            }
                        }
                    }
                }
            }
            if (aborted)
            {
                foreach (IFormFile source in files)
                {
                    string filename = ContentDispositionHeaderValue.Parse(source.ContentDisposition).FileName.ToString().Trim('"');
                    filename = this.EnsureCorrectFilename(filename);
                    System.IO.File.Delete(this.GetPathAndFilename(filename));
                }
            }
            ProgressTrackers.RemoveTracker(tracker);
            return this.Content("success");
        }


        [HttpPost]
        public ActionResult GetTrackerId()
        {
            return this.Content(ProgressTrackers.NewProgressTracker().ID);
        }

        [HttpPost]
        public ActionResult ProgressById(string id)
        {
            string result = "0";
            var tracker = ProgressTrackers.GetTracker(id);
            if (tracker != null)
            {
                result = tracker.Progress.ToString();
            }
            return this.Content(result);
        }

        private string EnsureCorrectFilename(string filename)
        {
            if (filename.Contains("\\"))
                filename = filename.Substring(filename.LastIndexOf("\\") + 1);

            return filename;
        }

        private string GetPathAndFilename(string filename)
        {
            string path = HostingEnvironment.WebRootPath + "\\uploads\\";

            if (!Directory.Exists(path))
                Directory.CreateDirectory(path);

            return path + filename;
        }
    }
}