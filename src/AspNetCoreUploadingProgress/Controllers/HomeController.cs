// Copyright © 2017 Dmitry Sikorsky. All rights reserved.
// Licensed under the Apache License, Version 2.0. See License.txt in the project root for license information.

using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;

namespace AspNetCoreFileUploading
{
    public class HomeController : Controller
    {
        private IConfiguration Configuration { get; }

        public HomeController(IConfiguration configuration)
        {
            Configuration = configuration;
        }


        public ActionResult Index()
        {            
            long fileSizeLimit = Configuration.GetValue<long>("FileSizeLimit");

            return this.View(fileSizeLimit);
        }
    }
}