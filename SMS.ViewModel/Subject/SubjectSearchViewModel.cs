using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMS.ViewModel.Subject
{
    public class SubjectSearchViewModel
    {
        /// <summary>
        /// Get search criteria
        /// </summary>
        public string? SubjectSearchCriteria { get; set; }

        /// <summary>
        /// Get searching tearm
        /// </summary>
        public string? SubjectSearchQuery { get; set; }
    }
}
