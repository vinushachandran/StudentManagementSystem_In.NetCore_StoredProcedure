using SMS.Model.Subject;
using SMS.ViewModel.RepositoyResponse;
using SMS.ViewModel.Subject;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMS.BL.Subject.Interface
{
    public interface ISubjectRepository
    {
        /// <summary>
        /// Get all subject list
        /// </summary>
        /// <param name="subjectViewModel"></param>
        /// <returns></returns>
        RepositoryResponse<IEnumerable<SubjectBO>> GetAllSubject(SubjectViewModel subjectViewModel);

        /// <summary>
        /// upsert Subject
        /// </summary>
        /// <param name="subject"></param>
        /// <returns></returns>
        RepositoryResponse<bool> UpsertSubject(SubjectBO subject);


        /// <summary>
        /// get the particular subject details
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        RepositoryResponse<SubjectBO> GetSubjectByID(long id);


        /// <summary>
        /// Check the subject name is available or not
        /// </summary>
        /// <param name="subjectBO"></param>
        /// <returns></returns>
        RepositoryResponse<bool> CheckSubjectName(SubjectBO subjectBO);


        /// <summary>
        /// Check the subject code is available or not
        /// </summary>
        /// <param name="subjectBO"></param>
        /// <returns></returns>
        RepositoryResponse<bool> CheckSubjectCode(string subjectCode, long subjectId);

        /// <summary>
        /// check the subject is Allocated or not
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        RepositoryResponse<bool> IsSubjectAllocated(long id);

        /// <summary>
        /// Delete the subject
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        RepositoryResponse<bool> DeleteSubject(long id);


        /// <summary>
        /// Search the Subject 
        /// </summary>
        /// <param name="subjectSearchViewModel"></param>
        /// <returns></returns>
        RepositoryResponse<IEnumerable<SubjectBO>> SearchSubject(SubjectSearchViewModel subjectSearchViewModel);


        /// <summary>
        /// toggle the student status
        /// </summary>
        /// <param name="id"></param>
        /// <param name="isEnable"></param>
        /// <returns></returns>
        RepositoryResponse<bool> ToggleSubject(long id, bool isEnable);

    }
}
