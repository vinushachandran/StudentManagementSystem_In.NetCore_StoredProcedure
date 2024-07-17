using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMS.ViewModel.Teacher
{
    public class TeacherSearchViewModel
    {
        /// <summary>
        /// Get search criteria
        /// </summary>
        public string? TeacherSearchCriteria { get; set; }

        /// <summary>
        /// Get searching term
        /// </summary>
        public string? TeacherSearchQuery { get; set; }
    }
}
