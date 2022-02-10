using System;
using System.Collections.Generic;
using System.Linq;

namespace AspNetCoreFileUploading
{
    /// <summary>
    /// Management of set of trackers that track file uploads
    /// </summary>
    public class ProgressTrackers
    {
        public static List<ProgressTracker> ProgressTrackerList { get; private set; }

        public static ProgressTracker NewProgressTracker()
        {
            if (ProgressTrackerList == null)
            {
                ProgressTrackerList = new List<ProgressTracker>();
            }
            else
            {
                CheckTrackers();
            }
            ProgressTracker result = new();
            ProgressTrackerList.Add(result);
            return result;
        }

        /// <summary>
        /// Remove any old trackers that might be lingering
        /// </summary>
        public static void CheckTrackers()
        {
            foreach (var progressTracker in ProgressTrackerList.ToArray())
            {
                if ((DateTime.Now - progressTracker.Created).TotalMinutes > 60)
                {
                    ProgressTrackerList.Remove(progressTracker);
                }
            }
        }

        public static void RemoveTracker(ProgressTracker tracker)
        {
            ProgressTrackerList.Remove(tracker);
        }
        public static ProgressTracker GetTracker(string id)
        {
            return ProgressTrackerList.FirstOrDefault(p => p.ID == id);
        }

        public static void UpdateProgressTracker(string id, int progress)
        {
            var tracker = GetTracker(id);
            if (tracker == null)
            {
                throw new Exception("Unable to find corresponding tracker");
            }
            else
            {
                tracker.SetProgress(progress);
            }
        }

    }
}
