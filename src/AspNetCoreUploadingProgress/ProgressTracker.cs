using System;

namespace AspNetCoreFileUploading
{
    /// <summary>
    /// Keeps track of a single upload of files
    /// </summary>
    public class ProgressTracker
    {
        public int Progress { get; private set; }

        public string ID { get; private set; }

        public DateTime Created { get; private set; }

        public ProgressTracker()
        {
            ID = Guid.NewGuid().ToString();
            Created = DateTime.Now;
            Progress = 0;
        }

        public void SetProgress(int value)
        {
            if (value < 0 || value > 100)
            {
                throw new ArgumentOutOfRangeException("value");
            }
            Progress = value;
        }

    }

    
}
