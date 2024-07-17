using SMS.Model.Allocation;
using SMS.Model.Subject;
using SMS.Model.Teacher;
using SMS.ViewModel.Allocations;
using SMS.ViewModel.RepositoyResponse;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMS.BL.Allocation.Interface
{
    public interface IAllocationRepository
    {
        /*************************************************Subject Allocation***************************************************************/

        /// <summary>
        /// get all the subject allocaton details
        /// </summary>
        /// <returns></returns>
        RepositoryResponse<IEnumerable<SubjectAllocationGroupBySubjectViewModel>> GetAllSubjectAllocation();

        /// <summary>
        /// Check this subject allocation is allocated for any student
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        RepositoryResponse<bool> IsSubjectAllocationInUse(long id);

        /// <summary>
        /// Update or insert a subject allocation data
        /// </summary>
        /// <param name="subjectAllocationBO"></param>
        /// <returns></returns>
        RepositoryResponse<bool> UpsertSubjectAllocation(SubjectAllocationBO subjectAllocationBO);
        /// <summary>
        /// Get one subject allocation details
        /// </summary>
        /// <param name="subjectAllocationID"></param>
        /// <returns></returns>
        RepositoryResponse<SubjectAllocationBO> GetSubjectAllocationByID(long subjectAllocationID);
        /// <summary>
        /// Delete subject allocation
        /// </summary>
        /// <param name="subjectAllocationID"></param>
        /// <returns></returns>
        RepositoryResponse<bool> DeleteSubjectAllocation(long subjectAllocationID);

        /// <summary>
        /// Get All Subject Allocation
        /// </summary>
        /// <returns></returns>
        RepositoryResponse<IEnumerable<SubjectAllocationGroupBySubjectViewModel>> SearchSubjectAllocation(string term, string category);


        /****************************************************Student Allocation*******************************************************************/

        /// <summary>
        /// get all the subject allocaton details
        /// </summary>
        /// <returns></returns>
        RepositoryResponse<IEnumerable<StudentAllocationGroupByStudentViewModel>> GetAllStudentAllocation(bool? isActive=null);


        /// <summary>
        /// add or edit student allocation
        /// </summary>
        /// <param name="studentAllocationBO"></param>
        /// <returns></returns>
        RepositoryResponse<bool> UpsertStudentAllocation(StudentAllocationBO studentAllocationBO);


        /// <summary>
        /// Get All allocated Subjects
        /// </summary>
        /// <returns></returns>
        RepositoryResponse<IEnumerable<SubjectBO>> GetAllocatedSubjects();


        /// <summary>
        /// Get All TEachers for Subjects
        /// </summary>
        /// <returns></returns>
        RepositoryResponse<IEnumerable<TeacherBO>> GetTeacherForSubject(long subjectId);

        /// <summary>
        /// Delete Student Allocation
        /// </summary>
        /// <param name="studentAllocationID"></param>
        /// <returns></returns>
        RepositoryResponse<bool> DeleteStudentAllocation(long studentAllocationID);


        /// <summary>
        /// Get All Subject Allocation
        /// </summary>
        /// <returns></returns>
        RepositoryResponse<IEnumerable<StudentAllocationGroupByStudentViewModel>> SearchStudentAllocation(string term, string category);
    }
}
