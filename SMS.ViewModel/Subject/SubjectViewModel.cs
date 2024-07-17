using SMS.Model.Subject;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMS.ViewModel.Subject
{
    public class SubjectViewModel
    {
        public IEnumerable<SubjectBO> Subjects { get; set; }

        public SubjectSearchViewModel SubjectSearch { get; set; }
        /// <summary>
        /// get page number
        /// </summary>
        public int? PageNumber { get; set; }

        /// <summary>
        /// get page size
        /// </summary>
        public int? PageSize { get; set; }

        /// <summary>
        /// get active state
        /// </summary>
        public bool? IsEnable { get; set; }

        /// <summary>
        /// get total pages
        /// </summary>
        public int? TotalPages { get; set; }
    }
}
