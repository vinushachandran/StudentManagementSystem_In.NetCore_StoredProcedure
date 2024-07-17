using SMS.Model.Teacher;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMS.ViewModel.Teacher
{
    public class TeacherViewModel
    {
        /// <summary>
        /// get all teachers as list
        /// </summary>
        public IEnumerable<TeacherBO> Teachers { get; set; }

        /// <summary>
        /// get one teacher's details
        /// </summary>
        public TeacherBO TeacherDetail { get; set; }

        /// <summary>
        /// get search result
        /// </summary>
        public TeacherSearchViewModel SearchViewModel { get; set; }

        /// <summary>
        /// get page number
        /// </summary>
        public int PageNumber { get; set; }

        /// <summary>
        /// get page size
        /// </summary>
        public int PageSize { get; set; }

        /// <summary>
        /// get active state
        /// </summary>
        public bool? IsEnable { get; set; }

        /// <summary>
        /// get total pages
        /// </summary>
        public int TotalPages { get; set; }
    }
}
