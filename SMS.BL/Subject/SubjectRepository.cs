using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using SMS.BL.Subject.Interface;
using SMS.Data;
using SMS.Model.Subject;
using SMS.ViewModel.RepositoyResponse;
using SMS.ViewModel.StaticData;
using SMS.ViewModel.Subject;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMS.BL.Subject
{
    public class SubjectRepository:ISubjectRepository
    {
        private readonly StudentManagementSystemContext _dataContext;

        public SubjectRepository(StudentManagementSystemContext dataContext)
        {
            _dataContext = dataContext;
        }

        /// <summary>
        /// Check SubjectCode available or not
        /// </summary>
        /// <param name="subjectBO"></param>
        /// <returns></returns>
        public RepositoryResponse<bool> CheckSubjectCode(string subjectCode, long subjectId)
        {
            var response = new RepositoryResponse<bool>();
            try
            {
                var subjectCodeParam = new SqlParameter("@SubjectCode", subjectCode);
                var subjectIDParam = new SqlParameter("@SubjectID", subjectId == 0 ? DBNull.Value : (object)subjectId); 
                var result = new SqlParameter
                {
                    ParameterName = "@Result",
                    SqlDbType = SqlDbType.Bit,
                    Direction = ParameterDirection.Output
                };

                _dataContext.Database.ExecuteSqlRaw("SELECT @Result = dbo.FN_CheckSubjectCode(@SubjectCode, @SubjectID)", subjectCodeParam, subjectIDParam, result);
                response.Data = (bool)result.Value;
                response.Success = true;
                return response;
            }
            catch
            {
                response.Success = false;
                response.Message.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "Subject"));
                return response;
            }
        }


        /// <summary>
        /// Check Subject name available or not
        /// </summary>
        /// <param name="subjectBO"></param>
        /// <returns></returns>
        public RepositoryResponse<bool> CheckSubjectName(SubjectBO subjectBO)
        {
            var response = new RepositoryResponse<bool>();
            try
            {

                if (subjectBO.Name is null)
                {
                    response.Success = false;
                    response.Message.Add(string.Format("Subject Name is required"));
                    return response;
                }

                var subjectName = new SqlParameter("@Name", subjectBO.Name);
                var subjectID = new SqlParameter("@SubjectID", subjectBO.SubjectID);
                var result = new SqlParameter
                {
                    ParameterName = "@Result",
                    SqlDbType = SqlDbType.Bit,
                    Direction = ParameterDirection.Output
                };


                _dataContext.Database.ExecuteSqlRaw("SELECT @Result = dbo.FN_CheckSubjectName(@Name,@SubjectID)", subjectName, subjectID, result);

                response.Success = (bool)result.Value;

                if (!response.Success)
                {
                    response.Message.Add(string.Format("Subject Name already exists."));
                }
                return response;
            }
            catch
            {
                response.Success = false;
                response.Message.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "Subject"));
                return response; ;
            }

        }

        /// <summary>
        /// Delete the subject
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public RepositoryResponse<bool> DeleteSubject(long id)
        {
            var response = new RepositoryResponse<bool>();

            try
            {
                var subjectID = new SqlParameter("@SubjectID", id);
                var result = new SqlParameter
                {
                    ParameterName = "@Result",
                    SqlDbType = SqlDbType.Bit,
                    Direction = ParameterDirection.Output
                };
                var resultMsg = new SqlParameter
                {
                    ParameterName = "@ResultMsg",
                    SqlDbType = SqlDbType.VarChar,
                    Size = 50,
                    Direction = ParameterDirection.Output
                };

                var outputDelete = _dataContext.Database.ExecuteSqlRaw("EXEC sp_DeleteSubject @SubjectID, @Result OUTPUT, @ResultMsg OUTPUT",
                                                  subjectID, result, resultMsg);

                response.Success = (bool)result.Value;

                response.Message.Add(string.Format(resultMsg.Value.ToString()));
                return response;

            }
            catch
            {
                response.Success = false;
                response.Message.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "Subject"));
                return response;

            }
        }

        /// <summary>
        /// Get all subject details
        /// </summary>
        /// <param name="subjectViewModel"></param>
        /// <returns></returns>
        public RepositoryResponse<IEnumerable<SubjectBO>> GetAllSubject(SubjectViewModel subjectViewModel)
        {
            var response = new RepositoryResponse<IEnumerable<SubjectBO>>();
            try
            {
                var pageNo = new SqlParameter("@PageNumber", subjectViewModel.PageNumber ?? (object)DBNull.Value);
                var pageSizee = new SqlParameter("@PageSize", subjectViewModel.PageSize ?? (object)DBNull.Value);
                var status = new SqlParameter("@IsEnable", (bool)subjectViewModel.IsEnable.HasValue ? (object)subjectViewModel.IsEnable.Value : DBNull.Value);


                var totalPage = new SqlParameter
                {
                    ParameterName = "@TotalPages",
                    SqlDbType = System.Data.SqlDbType.Int,
                    Direction = System.Data.ParameterDirection.Output
                };

                var pageData = _dataContext.Subjects.FromSqlRaw("EXEC sp_GetAllSubject @PageNumber, @PageSize, @IsEnable, @TotalPages OUT", pageNo, pageSizee, status, totalPage).ToList();

                if (pageData.Count > 0)
                {
                    response.Data = pageData;
                    response.Message.Add(string.Format(StaticData.SUCCESS_MESSAGE, "GetAllSubject"));
                }
                else
                {
                    response.Success = false;
                    response.Message.Add(string.Format(StaticData.NO_DATA_FOUND, "Subject"));
                }
                if(totalPage.Value!=null)
                {
                    response.TotalPages = (int)totalPage.Value;
                }
               

                return response;
            }
            catch
            {
                response.Success = false;
                response.Message.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "Subject"));
                return response;
            }
        }

        /// <summary>
        /// Get particular subject details
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public RepositoryResponse<SubjectBO> GetSubjectByID(long id)
        {
            var response = new RepositoryResponse<SubjectBO>();
            try
            {
                var subject = _dataContext.Subjects.FromSqlRaw("EXEC sp_GetSubjectDetails @SubjectId = {0}", id).ToList().FirstOrDefault();

                if (subject != null)
                {
                    response.Data = subject;
                    response.Message.Add(string.Format(StaticData.SUCCESS_MESSAGE, "GetSubjectByID"));
                }
                else
                {
                    response.Success = false;
                    response.Message.Add(string.Format(StaticData.NO_DATA_FOUND, "Subject"));
                }

                return response;
            }
            catch
            {
                response.Success = false;
                response.Message.Add(string.Format(StaticData.NO_DATA_FOUND, "Subject"));
                return response;
            }
        }

        /// <summary>
        /// Check the subject allocated or not
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        /// <exception cref="NotImplementedException"></exception>
        public RepositoryResponse<bool> IsSubjectAllocated(long id)
        {
            var response = new RepositoryResponse<bool>();
            try
            {
                var subjectID = new SqlParameter("@SubjectID", id);
                var result = new SqlParameter
                {
                    ParameterName = "@Result",
                    SqlDbType = SqlDbType.Bit,
                    Direction = ParameterDirection.Output
                };


                _dataContext.Database.ExecuteSqlRaw("SELECT @Result = dbo.FN_CheckSubjectAllocated(@SubjectID)", subjectID, result);

                response.Success = (bool)result.Value;
                response.Message.Add(string.Format(StaticData.SUCCESS_MESSAGE, "IsSubjectAllocated"));
                return response;
            }
            catch
            {
                response.Success = false;
                response.Message.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "Subject"));
                return response;
            }
        }

        /// <summary>
        /// Search Subject
        /// </summary>
        /// <param name="subjectSearchViewModel"></param>
        /// <returns></returns>
        public RepositoryResponse<IEnumerable<SubjectBO>> SearchSubject(SubjectSearchViewModel subjectSearchViewModel)
        {
            var response = new RepositoryResponse<IEnumerable<SubjectBO>>();
            try
            {

                var searchQuery = new SqlParameter("@SearchQuery", $"%{subjectSearchViewModel.SubjectSearchQuery}%");
                var searchCategory = string.IsNullOrEmpty(subjectSearchViewModel.SubjectSearchCriteria)
                     ? new SqlParameter("@SearchCategory", DBNull.Value)
                     : new SqlParameter("@SearchCategory", subjectSearchViewModel.SubjectSearchCriteria);

                string sqlQuery = "EXEC sp_SearchSubject @SearchCategory, @SearchQuery";


                var subject = _dataContext.Subjects
                                         .FromSqlRaw(sqlQuery, searchCategory, searchQuery)
                                         .ToList();

                response.Data = subject;
                response.Message.Add(string.Format(StaticData.SUCCESS_MESSAGE, "SearchSubject"));
                return response;
            }
            catch
            {
                response.Success = false;
                response.Message.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "SearchSubject"));
                return response;
            }
        }

        /// <summary>
        /// Toggle Subject Status
        /// </summary>
        /// <param name="id"></param>
        /// <param name="isEnable"></param>
        /// <returns></returns>
        public RepositoryResponse<bool> ToggleSubject(long id, bool isEnable)
        {
            var response = new RepositoryResponse<bool>();
            try
            {
                var successParam = new SqlParameter
                {
                    ParameterName = "@Success",
                    SqlDbType = System.Data.SqlDbType.Bit,
                    Direction = System.Data.ParameterDirection.Output
                };
                var errorMessageParam = new SqlParameter
                {
                    ParameterName = "@ErrorMessage",
                    SqlDbType = System.Data.SqlDbType.NVarChar,
                    Size = 255,
                    Direction = System.Data.ParameterDirection.Output
                };
                var parameters = new[]
                {
                    new SqlParameter("@SubjectID", id),
                    new SqlParameter("@IsEnable", isEnable),
                    errorMessageParam,
                    successParam
                };

                _dataContext.Database.ExecuteSqlRaw("EXEC sp_ToggleEnableSubject @SubjectID, @IsEnable, @ErrorMessage OUTPUT, @Success OUTPUT", parameters);

                response.Data = (bool)successParam.Value;
                response.Message.Add(errorMessageParam.Value as string ?? string.Empty);

                response.Success = response.Data;

                return response;
            }
            catch (Exception ex)
            {
                response.Success = false;
                response.Message.Add($"An error occurred: {ex.Message}");
                return response;
            }
        }


        /// <summary>
        /// upsert Subject information
        /// </summary>
        /// <param name="subject"></param>
        /// <returns></returns>
        public RepositoryResponse<bool> UpsertSubject(SubjectBO subject)
        {
            var response = new RepositoryResponse<bool>();
            try
            {
                var subjectIdParam = new SqlParameter("@SubjectID", subject.SubjectID ?? (object)DBNull.Value);
                var parameters = new[]
                {
                new SqlParameter("@SubjectID", subjectIdParam.Value ?? DBNull.Value),
                new SqlParameter("@SubjectCode", subject.SubjectCode),
                new SqlParameter("@Name", subject.Name),
                new SqlParameter("@IsEnable", subject.IsEnable),
                new SqlParameter("@Result", SqlDbType.Bit) { Direction = ParameterDirection.Output },
                new SqlParameter("@ResultMsg", SqlDbType.VarChar, 50) { Direction = ParameterDirection.Output }
            };
                string sqlQuery = "EXEC sp_UpsertSubject " +
                                  "@SubjectID, @SubjectCode, @Name, @IsEnable, " +
                                  "@Result OUTPUT, @ResultMsg OUTPUT";

                _dataContext.Database.ExecuteSqlRaw(sqlQuery, parameters);

                response.Message.Add(string.Format(parameters[parameters.Length - 1].Value.ToString()));

                response.Success = (bool)parameters[parameters.Length - 2].Value;

                return response;

            }
            catch
            {
                response.Success = false;
                response.Message.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "Subject"));
                return response;
            }
        }
    }
}

