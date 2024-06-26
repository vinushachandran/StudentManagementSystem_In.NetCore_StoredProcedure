using SMS.Model.Student;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMS.BL.Student.Interface
{
	public interface IStudentRepository
	{
		/// <summary>
		/// Get all the student details by it's id
		/// </summary>
		/// <returns></returns>
        IEnumerable<StudentBO> GetAllStudents(int pageNo, int pageSize, bool? isEnable, out int totalPage);

        /// <summary>
        /// Get one student details by it's id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        StudentBO GetOneStudent(long id);

		/// <summary>
		/// Delete one student details by it's id
		/// </summary>
		/// <param name="id"></param>
		/// <param name="msg"></param>
		/// <returns></returns>
		bool DeleteStudent(long id, out string msg);

		/// <summary>
		/// Add a new student or edit exsiting student
		/// </summary>
		/// <param name="student"></param>
		/// <param name="msg"></param>
		/// <returns></returns>
		bool SaveStudent(StudentBO student, out string msg);

		/// <summary>
		/// To handle enable disable button
		/// </summary>
		/// <param name="id"></param>
		/// <param name="isEnable"></param>
		/// <param name="msg"></param>
		/// <returns></returns>
		bool ToggleEnable(long id, bool isEnable, out string msg);

        /// <summary>
        /// Check on this student allocated for any subject
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        bool CheckStudentInUse(long id);

        /// <summary>
        /// Searching the student
        /// </summary>
        /// <param name="item"></param>
        /// <param name="criteria"></param>
        /// <returns></returns>
        IEnumerable<StudentBO> GetSearchStudents(string item, string criteria);
    }
}
