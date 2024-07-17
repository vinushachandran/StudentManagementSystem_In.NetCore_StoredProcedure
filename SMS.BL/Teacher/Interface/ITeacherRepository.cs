using SMS.Model.Student;
using SMS.Model.Teacher;
using SMS.ViewModel.RepositoyResponse;
using SMS.ViewModel.Teacher;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMS.BL.Teacher.Interface
{
    public interface ITeacherRepository
    {
        /// <summary>
        /// Get all teachers details
        /// </summary>
        /// <param name="teacherModel">The view model containing parameters for fetching teachers.</param>
        /// <returns>A repository response containing a collection of TeacherBO objects.</returns>
        RepositoryResponse<IEnumerable<TeacherBO>> GetAllTeachers(TeacherViewModel teacherModel);

        /// <summary>
        /// Get one teache full data
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        RepositoryResponse<TeacherBO> GetOneTeacher(long id);

        /// <summary>
        /// Search teacher
        /// </summary>
        /// <param name="searchTeacherModel"></param>
        /// <returns></returns>
        RepositoryResponse<IEnumerable<TeacherBO>> GetSearchTeachers(TeacherSearchViewModel searchTeacherModel);

        /// <summary>
        ///  Delete one teacher details by it's id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        RepositoryResponse<bool> DeleteTeacher(long id);

        /// <summary>
        /// Chack one teacher is allocated for a subject
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        RepositoryResponse<bool> CheckTeacherInUse(long id);

        /// <summary>
        /// update or insert teacher
        /// </summary>
        /// <param name="teacherBO"></param>
        /// <returns></returns>
        RepositoryResponse<bool> UpsertTeacher(TeacherBO teacherBO);


        /// <summary>
        /// Check this teacher reg no already used or not
        /// </summary>
        /// <param name="teacherRegNumber"></param>
        /// <param name="teacherId"></param>
        /// <returns></returns>
        RepositoryResponse<bool> CheckTeacherRegNo(string teacherRegNumber, long teacherId);

        /// <summary>
        /// Check this teacher name is already used or not
        /// </summary>
        /// <param name="teacherName"></param>
        /// <param name="teacherId"></param>
        /// <returns></returns>
        RepositoryResponse<bool> CheckTeacherName(string teacherName, long teacherId);

        /// <summary>
        /// Check this teacher email address already in used or not
        /// </summary>
        /// <param name="teacherEmail"></param>
        /// <param name="teacherId"></param>
        /// <returns></returns>
        RepositoryResponse<bool> CheckTeacherEmail(string teacherEmail, long teacherId);

        /// <summary>
        /// To handle enable disable button
        /// </summary>
        /// <param name="id"></param>
        /// <param name="isEnable"></param>
        /// <returns></returns>
        RepositoryResponse<bool> ToggleEnableTeacher(long id, bool isEnable);
    }

}

