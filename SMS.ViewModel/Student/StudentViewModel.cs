using SMS.Model.Student;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMS.ViewModel.Student
{
	public class StudentViewModel
	{
		/// <summary>
		/// get all students as list
		/// </summary>
		public IEnumerable<StudentBO> Students { get; set; }

        /// <summary>
        /// get one student details
        /// </summary>
        public StudentBO StudentDetail { get; set; }

        /// <summary>
        /// get search result
        /// </summary>
        public StudentSearchViewModel searchViewModel { get; set; }

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
