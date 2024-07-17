using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
using SMS.BL.Allocation.Interface;
using SMS.Data;
using SMS.Model.Allocation;
using SMS.Model.Subject;
using SMS.Model.Teacher;
using SMS.ViewModel.Allocations;
using SMS.ViewModel.RepositoyResponse;
using SMS.ViewModel.StaticData;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMS.BL.Allocation
{
    public class AllocationRepository:IAllocationRepository
    {
        private readonly StudentManagementSystemContext _dataContext;

        public AllocationRepository(StudentManagementSystemContext dataContext)
        {
            _dataContext = dataContext;
        }

        

        /// <summary>
        /// Get All Subject Allocation
        /// </summary>
        /// <returns></returns>
        public RepositoryResponse<IEnumerable<SubjectAllocationGroupBySubjectViewModel>> GetAllSubjectAllocation()
        {
            var response = new RepositoryResponse<IEnumerable<SubjectAllocationGroupBySubjectViewModel>>();

            try
            {
                var subjectAllocations = new List<SubjectAllocationGroupBySubjectViewModel>();

                using (var command = _dataContext.Database.GetDbConnection().CreateCommand())
                {
                    command.CommandText = "sp_GetAllSubjectAllocation";
                    command.CommandType = CommandType.StoredProcedure;

                    _dataContext.Database.OpenConnection();

                    using (var reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            SubjectAllocationGroupBySubjectViewModel viewModel = new SubjectAllocationGroupBySubjectViewModel
                            {
                                SubjectId = reader.GetInt64(reader.GetOrdinal("SubjectId")),
                                SubjectName = reader["SubjectName"].ToString(),
                                SubjectCode = reader["SubjectCode"].ToString(),
                                SubjectAllocation = ParseSubjectAllocations(reader["SubjectAllocations"].ToString())
                            };

                            subjectAllocations.Add(viewModel);
                        }
                    }

                }
                response.Data = subjectAllocations;

                return response;
            }

            catch (Exception ex)
            {
                response.Success = false;
                response.Message.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "Subject Allocation"));
                return response;
            }

        }

        /// <summary>
        /// Check the subject allocation in use or not
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public RepositoryResponse<bool> IsSubjectAllocationInUse(long id)
        {
            var response = new RepositoryResponse<bool>();
            try
            {
                var subjectAllocationID = new SqlParameter("@SubjectAllocationID", id);
                var result = new SqlParameter
                {
                    ParameterName = "@Result",
                    SqlDbType = SqlDbType.Bit,
                    Direction = ParameterDirection.Output
                };


                _dataContext.Database.ExecuteSqlRaw("SELECT @Result = dbo.FN_IsSubjectAllocationInUse(@SubjectAllocationID)", subjectAllocationID, result);

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
        /// Update or insert allocation
        /// </summary>
        /// <param name="subjectAllocationBO"></param>
        /// <returns></returns>
        public RepositoryResponse<bool> UpsertSubjectAllocation(SubjectAllocationBO subjectAllocationBO)
        {

            var response = new RepositoryResponse<bool>();
            try
            {
                var subjectAllocationIdParam = new SqlParameter("@SubjectAllocationID", subjectAllocationBO.SubjectAllocationID ?? (object)DBNull.Value);
                var parameters = new[]
                {
                    new SqlParameter("@SubjectAllocationID", subjectAllocationIdParam.Value ?? DBNull.Value),
                    new SqlParameter("@SubjectID", subjectAllocationBO.SubjectID),
                    new SqlParameter("@TeacherID", subjectAllocationBO.TeacherID),
                    new SqlParameter("@Result", SqlDbType.Bit) { Direction = ParameterDirection.Output },
                    new SqlParameter("@ResultMsg", SqlDbType.VarChar, 50) { Direction = ParameterDirection.Output }
                };

                string sqlQuery = "EXEC sp_UpsertSubjectAllocation " +
                                  "@SubjectAllocationID, @SubjectID, @TeacherID, @Result OUTPUT, " +
                                  "@ResultMsg OUTPUT";

                _dataContext.Database.ExecuteSqlRaw(sqlQuery, parameters);

                response.Message.Add(string.Format(parameters[parameters.Length - 1].Value.ToString()));

                response.Success = (bool)parameters[parameters.Length - 2].Value;

                return response;

            }
            catch
            {
                response.Success = false;
                response.Message.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "Subject Allocation"));
                return response;
            }
        }

        /// <summary>
        /// Get one allocation details by it's id
        /// </summary>
        /// <param name="subjectAllocationID"></param>
        /// <returns></returns>
        public RepositoryResponse<SubjectAllocationBO> GetSubjectAllocationByID(long subjectAllocationID)
        {
            var response = new RepositoryResponse<SubjectAllocationBO>();
            try
            {
                var subjectAllocation = _dataContext.SubjectAllocations.FromSqlRaw("EXEC sp_GetSubjectAllocation @SubjectAllocationID = {0}", subjectAllocationID).ToList().FirstOrDefault();

                if (subjectAllocation != null)
                {
                    response.Data = subjectAllocation;
                    response.Message.Add(string.Format(StaticData.SUCCESS_MESSAGE, "GetSubjectAllocationByID"));
                }
                else
                {
                    response.Success = false;
                    response.Message.Add(string.Format(StaticData.NO_DATA_FOUND, "Subject Allocation"));
                }

                return response;
            }
            catch
            {
                response.Success = false;
                response.Message.Add(string.Format(StaticData.NO_DATA_FOUND, "Subject Allocation"));
                return response;
            }

        }

        /// <summary>
        /// Delete one allocation
        /// </summary>
        /// <param name="subjectAllocationID"></param>
        /// <returns></returns>
        public RepositoryResponse<bool> DeleteSubjectAllocation(long subjectAllocationID)
        {
            var response = new RepositoryResponse<bool>();
            try
            {
                var subjectAllocationIDParam = new SqlParameter("@SubjectAllocationID", subjectAllocationID);
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

                var outputDelete = _dataContext.Database.ExecuteSqlRaw("EXEC sp_DeleteSubjectAllocation @SubjectAllocationID, @Result OUTPUT, @ResultMsg OUTPUT",
                                                  subjectAllocationIDParam, result, resultMsg);

                response.Success = (bool)result.Value;

                response.Message.Add(string.Format(resultMsg.Value.ToString()));
                return response;
            }
            catch
            {
                response.Success = false;
                response.Message.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "Subject Allocation"));
                return response;
            }

        }

        public RepositoryResponse<IEnumerable<SubjectAllocationGroupBySubjectViewModel>> SearchSubjectAllocation(string term, string category)
        {
            var response = new RepositoryResponse<IEnumerable<SubjectAllocationGroupBySubjectViewModel>>();

            try
            {
                var subjectAllocations = new List<SubjectAllocationGroupBySubjectViewModel>();

                var termParam = new SqlParameter("@SearchQuery", SqlDbType.VarChar, 100);
                termParam.Value = $"%{term}%";

                var categoryParam = new SqlParameter("@SearchCriteria", SqlDbType.VarChar, 50);
                categoryParam.Value = category;

                using (var command = _dataContext.Database.GetDbConnection().CreateCommand())
                {
                    command.CommandText = "sp_SearchSubjectAllocations";
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.Add(termParam);
                    command.Parameters.Add(categoryParam);

                    _dataContext.Database.OpenConnection();

                    using (var reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {

                            
                            var subject = new SubjectAllocationGroupBySubjectViewModel
                            {
                                SubjectId = reader.GetInt64(reader.GetOrdinal("SubjectID")),
                                SubjectName = reader["SubjectName"].ToString(),
                                SubjectCode = reader["SubjectCode"].ToString(),
                                SubjectAllocation = ParseSubjectAllocations(reader["SubjectAllocations"].ToString()),
                            };

                            subjectAllocations.Add(subject);
                        }
                    }
                }
                response.Data = subjectAllocations;
                return response;


             }
            catch
            {
                response.Success = false;
                response.Message.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "Subject Allocation"));
                return response;
            }
           }




        /*******************************************Student Allocation*********************************************************************/
            /// <summary>
            /// Get all studet details
            /// </summary>
            /// <returns></returns>
        [HttpGet]
        public RepositoryResponse<IEnumerable<StudentAllocationGroupByStudentViewModel>> GetAllStudentAllocation(bool? isActive = null)
        {
            var response = new RepositoryResponse<IEnumerable<StudentAllocationGroupByStudentViewModel>>();

            try
            {
                var studentAllocations = new List<StudentAllocationGroupByStudentViewModel>();

                using (var command = _dataContext.Database.GetDbConnection().CreateCommand())
                {
                    command.CommandText = "sp_GetAllStudentAllocation";
                    command.CommandType = CommandType.StoredProcedure;

                    _dataContext.Database.OpenConnection();

                    // Optional parameter for isActive
                    if (isActive.HasValue)
                    {
                        var isActiveParam = new SqlParameter("@isActive", SqlDbType.Bit);
                        isActiveParam.Value = isActive.Value;
                        command.Parameters.Add(isActiveParam);
                    }

                    using (var reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {

                            // Create a new student allocation view model
                            var student = new StudentAllocationGroupByStudentViewModel
                            {
                                StudentID = reader.GetInt64(reader.GetOrdinal("StudentID")),
                                StudentName = reader["StudentName"].ToString(),
                                StudentRegNo = reader["StudentRegNo"].ToString(),
                                IsEnable = reader.GetBoolean(reader.GetOrdinal("IsStudentEnable")),
                                StudentAllocations = ParseStudentSubjectAllocations(reader["StudentAllocations"].ToString()),
                            };

                            studentAllocations.Add(student);
                        }
                    }

                }

                response.Data = studentAllocations;

                return response;
            }
            catch (Exception ex)
            {
                response.Success = false;
                response.Message.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "Student Subject Allocation"));
                return response;
            }

        }

        /// <summary>
        /// add or edit student allocation
        /// </summary>
        /// <param name="studentAllocationBO"></param>
        /// <returns></returns>
        public RepositoryResponse<bool> UpsertStudentAllocation(StudentAllocationBO studentAllocationBO)
        {
            var response = new RepositoryResponse<bool>();
            try
            {
                var studentAllocationIdParam = new SqlParameter("@studentAllocationID", studentAllocationBO.StudentAllocationID ?? (object)DBNull.Value);
                var parameters = new[]
                {
                    new SqlParameter("@StudentAllocationID", studentAllocationIdParam.Value ?? DBNull.Value),
                    new SqlParameter("@StudentID", studentAllocationBO.StudentID),
                    new SqlParameter("@SubjectAllocationID", studentAllocationBO.SubjectAllocationID),
                    new SqlParameter("@Result", SqlDbType.Bit) { Direction = ParameterDirection.Output },
                    new SqlParameter("@ResultMsg", SqlDbType.VarChar, 50) { Direction = ParameterDirection.Output }
                };

                string sqlQuery = "EXEC sp_AddStudentAllocation " +
                                  "@StudentAllocationID, @StudentID, @SubjectAllocationID, @Result OUTPUT, " +
                                  "@ResultMsg OUTPUT";

                _dataContext.Database.ExecuteSqlRaw(sqlQuery, parameters);

                response.Message.Add(string.Format(parameters[parameters.Length - 1].Value.ToString()));

                response.Success = (bool)parameters[parameters.Length - 2].Value;

                return response;

            }
            catch
            {
                response.Success = false;
                response.Message.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "Subject Allocation"));
                return response;
            }


        }


        /// <summary>
        /// Get All allocated Subjects
        /// </summary>
        /// <returns></returns>
        public RepositoryResponse<IEnumerable<SubjectBO>> GetAllocatedSubjects()
        {
            var response = new RepositoryResponse<IEnumerable<SubjectBO>>();
            try
            {

                var pageData = _dataContext.Subjects.FromSqlRaw("EXEC sp_GetAllAllocatedSubject").ToList();

                if (pageData.Count > 0)
                {
                    response.Data = pageData;
                    response.Message.Add(string.Format(StaticData.SUCCESS_MESSAGE, "GetAllocatedSubjects"));
                }
                else
                {
                    response.Success = false;
                    response.Message.Add(string.Format(StaticData.NO_DATA_FOUND, "AllocatedSubjects"));
                }

                return response;
            }
            catch
            {
                response.Success = false;
                response.Message.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "AllocatedSubjects"));
                return response;
            }
        }

        /// <summary>
        /// Get All allocated Subjects
        /// </summary>
        /// <returns></returns>
        public RepositoryResponse<IEnumerable<TeacherBO>> GetTeacherForSubject(long subjectId)
        {
            var response = new RepositoryResponse<IEnumerable<TeacherBO>>();
            try
            {
                var subjectID = new SqlParameter("@subjectID", subjectId);

                var pageData = _dataContext.Teachers.FromSqlRaw("EXEC sp_GetAllTeachersForSubject @subjectID", subjectID).ToList();

                if (pageData.Count > 0)
                {
                    response.Data = pageData;
                    response.Message.Add(string.Format(StaticData.SUCCESS_MESSAGE, "GetTeacherForSubject"));
                }
                else
                {
                    response.Success = false;
                    response.Message.Add(string.Format(StaticData.NO_DATA_FOUND, "GetTeacherForSubject"));
                }

                return response;
            }
            catch
            {
                response.Success = false;
                response.Message.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "AllocatedSubjects"));
                return response;
            }
        }

        /// <summary>
        /// Delete subject allocation
        /// </summary>
        /// <param name="subjectAllocationID"></param>
        /// <returns></returns>
        public RepositoryResponse<bool> DeleteStudentAllocation(long studentAllocationID)
        {
            var response = new RepositoryResponse<bool>();
            try
            {
                var subjectAllocationIDParam = new SqlParameter("@StudentAllocationID", studentAllocationID);
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

                var outputDelete = _dataContext.Database.ExecuteSqlRaw("EXEC sp_DeleteStudentAllocation @StudentAllocationID, @Result OUTPUT, @ResultMsg OUTPUT",
                                                  subjectAllocationIDParam, result, resultMsg);

                response.Success = (bool)result.Value;

                response.Message.Add(string.Format(resultMsg.Value.ToString()));
                return response;
            }
            catch
            {
                response.Success = false;
                response.Message.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "Subject Allocation"));
                return response;
            }

        }


        /// <summary>
        /// Get All Subject Allocation
        /// </summary>
        /// <returns></returns>
        public RepositoryResponse<IEnumerable<StudentAllocationGroupByStudentViewModel>> SearchStudentAllocation(string term, string category)
        {
            var response = new RepositoryResponse<IEnumerable<StudentAllocationGroupByStudentViewModel>>();

            try
            {
                var studentAllocations = new List<StudentAllocationGroupByStudentViewModel>();

                var termParam = new SqlParameter("@Term", SqlDbType.VarChar, 100);
                termParam.Value = $"%{term}%";

                var categoryParam = new SqlParameter("@Category", SqlDbType.VarChar, 50);
                categoryParam.Value = category;


                using (var command = _dataContext.Database.GetDbConnection().CreateCommand())
                {
                    command.CommandText = "sp_SearchStudentAllocation";
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.Add(termParam);
                    command.Parameters.Add(categoryParam);

                    _dataContext.Database.OpenConnection();


                    using (var reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {

                            // Create a new student allocation view model
                            var student = new StudentAllocationGroupByStudentViewModel
                            {
                                StudentID = reader.GetInt64(reader.GetOrdinal("StudentID")),
                                StudentName = reader["StudentName"].ToString(),
                                StudentRegNo = reader["StudentRegNo"].ToString(),
                                IsEnable = reader.GetBoolean(reader.GetOrdinal("IsStudentEnable")),
                                StudentAllocations = ParseStudentSubjectAllocations(reader["StudentAllocations"].ToString()),
                            };

                            studentAllocations.Add(student);
                        }
                    }

                }

                response.Data = studentAllocations;

                return response;
            }
            catch (Exception ex)
            {
                response.Success = false;
                response.Message.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "Student Subject Allocation"));
                return response;
            }


        }

        /*Common*/

        /// <summary>
        /// Student Subject Allocations
        /// </summary>
        /// <param name="json"></param>
        /// <returns></returns>
        private List<SubjectAllocationGroupBySubjectViewModel> ParseStudentSubjectAllocations(string json)
        {
            if (string.IsNullOrEmpty(json))
                return new List<SubjectAllocationGroupBySubjectViewModel>();

            var allocations = JsonConvert.DeserializeObject<List<SubjectAllocationGroupBySubjectViewModel>>(json);

            
            return allocations;
        }

        /// <summary>
        /// parse subject allocation
        /// </summary>
        /// <param name="json"></param>
        /// <returns></returns>
        private List<SubjectAllocationViewModel> ParseSubjectAllocations(string json)
        {
            if (string.IsNullOrEmpty(json))
                return new List<SubjectAllocationViewModel>();

            return Newtonsoft.Json.JsonConvert.DeserializeObject<List<SubjectAllocationViewModel>>(json);
        }



    }
}





