/// <summary>
///
/// </summary>
/// <author>Vinusha</author>
///

using SMS.Model.Student;
using SMS.ViewModel.RepositoyResponse;
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
        /// Get all student detailss
        /// </summary>
        /// <param name="pageNo"></param>
        /// <param name="pageSize"></param>
        /// <param name="isEnable"></param>
        /// <param name="totalPage"></param>
        /// <returns></returns>
        RepositoryResponse<IEnumerable<StudentBO>>GetAllStudents(int pageNo, int pageSize, bool? isEnable, out int totalPage);

        /// <summary>
        /// Get one student details by it's id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        RepositoryResponse<StudentBO> GetOneStudent(long id);

        /// <summary>
        ///  Delete one student details by it's id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        RepositoryResponse<bool> DeleteStudent(long id);

        /// <summary>
        /// Add a new student or edit exsiting student
        /// </summary>
        /// <param name="student"></param>
        /// <returns></returns>
        RepositoryResponse<bool> SaveStudent(StudentBO student);

        /// <summary>
        /// To handle enable disable button
        /// </summary>
        /// <param name="id"></param>
        /// <param name="isEnable"></param>
        /// <returns></returns>
        RepositoryResponse<bool> ToggleEnable(long id, bool isEnable);

        /// <summary>
        /// Check on this student allocated for any subject
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        RepositoryResponse<bool> CheckStudentInUse(long id);

        /// <summary>
        /// Searching the student
        /// </summary>
        /// <param name="item"></param>
        /// <param name="criteria"></param>
        /// <returns></returns>
        RepositoryResponse<IEnumerable<StudentBO>> GetSearchStudents(string item, string criteria);


        /// <summary>
        /// Check this student reg no already used or not
        /// </summary>
        /// <param name="studentRegNumber"></param>
        /// <returns></returns>
        RepositoryResponse<bool> CheckStudentRegNo(string studentRegNumber, long studentId);

        /// <summary>
        /// Check this student name is already used or not
        /// </summary>
        /// <param name="studentname"></param>
        /// <returns></returns>
        RepositoryResponse<bool> CheckStudentName(string studentname, long studentId);

        /// <summary>
        /// Check this student email address already in used or not
        /// </summary>
        /// <param name="studentEmail"></param>
        /// <returns></returns>
        RepositoryResponse<bool> CheckStudentEmail(string studentEmail, long studentId);
    }
}
