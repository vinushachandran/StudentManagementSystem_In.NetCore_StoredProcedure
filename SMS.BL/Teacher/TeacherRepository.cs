using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using SMS.BL.Student.Interface;
using SMS.BL.Teacher.Interface;
using SMS.Data;
using SMS.Model.Student;
using SMS.Model.Teacher;
using SMS.ViewModel.RepositoyResponse;
using SMS.ViewModel.StaticData;
using SMS.ViewModel.Teacher;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMS.BL.Teacher
{
    public class TeacherRepository : ITeacherRepository
    {
        private readonly StudentManagementSystemContext _dataContext;

        public TeacherRepository(StudentManagementSystemContext dataContext)
        {
            _dataContext = dataContext;
        }

        public RepositoryResponse<IEnumerable<TeacherBO>> GetAllTeachers(TeacherViewModel teacherModel)
        {
            var response = new RepositoryResponse<IEnumerable<TeacherBO>>();

            var pageNoParam = new SqlParameter("@PageNo", teacherModel.PageNumber);
            var pageSizeParam = new SqlParameter("@PageSize", teacherModel.PageSize);
            var isEnableParam = new SqlParameter("@IsEnable", teacherModel.IsEnable.HasValue ? (object)teacherModel.IsEnable.Value : DBNull.Value);

            var totalPageParam = new SqlParameter
            {
                ParameterName = "@TotalPage",
                SqlDbType = System.Data.SqlDbType.Int,
                Direction = System.Data.ParameterDirection.Output
            };

            var pageData = _dataContext.Teachers
                                    .FromSqlRaw("EXEC sp_GetAllTeacherDetails @PageNo, @PageSize, @IsEnable, @TotalPage OUT",
                                                pageNoParam, pageSizeParam, isEnableParam, totalPageParam)
                                    .ToList();

            if (pageData.Count > 0)
            {
                response.Data = pageData;
                response.Message.Add(string.Format(StaticData.SUCCESS_MESSAGE, "get all data"));
            }
            else
            {
                response.Success = false;
                response.Message.Add(string.Format(StaticData.NO_DATA_FOUND, "Teacher"));
            }
            if(totalPageParam.Value!=null) {
                response.TotalPages = (int)totalPageParam.Value;
            }
           

            return response;
        }

        /// <summary>
        /// Retrieves details of a teacher by their ID.
        /// </summary>
        /// <param name="id">The ID of the teacher to retrieve.</param>
        /// <returns>A repository response containing the teacher details.</returns>
        public RepositoryResponse<TeacherBO> GetOneTeacher(long id)
        {
            var response = new RepositoryResponse<TeacherBO>();

            try
            {
                var teacherIdParam = new SqlParameter("@TeacherID", id);
                var teacher = _dataContext.Teachers
                                         .FromSqlRaw("EXEC GetOneTeacherDetails @TeacherID", teacherIdParam)
                                         .AsEnumerable()
                                         .FirstOrDefault();

                if (teacher != null)
                {
                    response.Data = teacher;
                    response.Success = true;
                    response.Message.Add(string.Format(StaticData.SUCCESS_MESSAGE, $"{id} get data"));
                }
                else
                {
                    response.Success = false;
                    response.Message.Add(string.Format(StaticData.NO_DATA_FOUND, $"{id} data"));
                }
            }
            catch (Exception ex)
            {
                response.Success = false;
                response.Message.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, ex.Message));
                
            }

            return response;
        }


        /// <summary>
        /// Delete a teacher by their ID
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public RepositoryResponse<bool> DeleteTeacher(long id)
        {
            var response = new RepositoryResponse<bool>();

            if (id <= 0)
            {
                response.Success = false;
                response.Message.Add("Invalid teacher ID.");
                return response;
            }

            try
            {
                var teacherIdParam = new SqlParameter("@TeacherID", id);
                var isDeletedParam = new SqlParameter
                {
                    ParameterName = "@IsDeleted",
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

                _dataContext.Database.ExecuteSqlRaw("EXEC sp_DeleteTeacher @TeacherID, @IsDeleted OUTPUT, @ErrorMessage OUTPUT", teacherIdParam, isDeletedParam, errorMessageParam);

                response.Data = (bool)isDeletedParam.Value;
                response.Message.Add(errorMessageParam.Value as string ?? string.Empty);

                return response;
            }
            catch
            {
                response.Success = false;
                response.Message.Add(string.Format(StaticData.SOMETHING_WENT_WRONG));
                return response;
            }
        }


        /// <summary>
        /// To check if this teacher is already allocated for a subject
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public RepositoryResponse<bool> CheckTeacherInUse(long id)
        {
            var response = new RepositoryResponse<bool>();
            try
            {
                var TeacherID = new SqlParameter("@TeacherID", id);
                var result = new SqlParameter
                {
                    ParameterName = "@Result",
                    SqlDbType = SqlDbType.Bit,
                    Direction = ParameterDirection.Output
                };

                _dataContext.Database.ExecuteSqlRaw("SELECT @Result = dbo.fn_CheckTeacherAllocation(@TeacherID)", TeacherID, result);

                response.Data = (bool)result.Value;
                return response;
            }
            catch
            {
                response.Success = false;
                response.Message.Add(string.Format(StaticData.SOMETHING_WENT_WRONG));
                return response;
            }
        }



        /// <summary>
        /// Seacher by dispaly name and registration number
        /// </summary>
        /// <param name="searchTeacherModel"></param>
        /// <returns></returns>
        public RepositoryResponse<IEnumerable<TeacherBO>> GetSearchTeachers(TeacherSearchViewModel searchTeacherModel)
        {
            var response = new RepositoryResponse<IEnumerable<TeacherBO>>();

            try
            {
                var searchItem = new SqlParameter("@Item", $"%{searchTeacherModel.TeacherSearchQuery}%");
                var searchCriteria = string.IsNullOrEmpty(searchTeacherModel.TeacherSearchCriteria)
                    ? new SqlParameter("@Criteria", DBNull.Value)
                    : new SqlParameter("@Criteria", searchTeacherModel.TeacherSearchCriteria);

                string sqlQuery = "EXEC sp_SearchTeachersDetails @Criteria, @Item";

                var teachers = _dataContext.Teachers
                                          .FromSqlRaw(sqlQuery, searchCriteria, searchItem)
                                          .ToList();

                response.Data = teachers;
                response.Message.Add(string.Format(StaticData.SUCCESS_MESSAGE, $"search all data"));
            }
            catch (Exception ex)
            {
                response.Success = false;
                response.Message.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, ex.Message));
            }

            return response;
        }


        /// <summary>
        /// Add a new teacher or update existing teacher
        /// </summary>
        /// <param name="teacher"></param>
        /// <returns></returns>
        public RepositoryResponse<bool> UpsertTeacher(TeacherBO teacher)
        {
            var response = new RepositoryResponse<bool>();

            try
            {
                var teacherIdParam = new SqlParameter("@TeacherID", teacher.TeacherID ?? (object)DBNull.Value);
                var successParam = new SqlParameter
                {
                    ParameterName = "@Success",
                    SqlDbType = System.Data.SqlDbType.Bit,
                    Direction = System.Data.ParameterDirection.Output
                };
                var parameters = new[]
                {
                    teacherIdParam,
                    new SqlParameter("@TeacherRegNo", teacher.TeacherRegNo),
                    new SqlParameter("@FirstName", teacher.FirstName),
                    new SqlParameter("@MiddleName", teacher.MiddleName),
                    new SqlParameter("@LastName", teacher.LastName),
                    new SqlParameter("@DisplayName", teacher.DisplayName),
                    new SqlParameter("@Email", teacher.Email),
                    new SqlParameter("@Gender", teacher.Gender),
                    new SqlParameter("@DOB", teacher.DOB),
                    new SqlParameter("@Address", teacher.Address),
                    new SqlParameter("@ContactNo", teacher.ContactNo),
                    new SqlParameter("@IsEnable", teacher.IsEnable),
                    new SqlParameter
                {
                ParameterName = "@ErrorMessage",
                SqlDbType = System.Data.SqlDbType.NVarChar,
                Size = 255,
                Direction = System.Data.ParameterDirection.Output
                },
                successParam
                 };

                _dataContext.Database.ExecuteSqlRaw("EXEC sp_SaveTeacher @TeacherID, @TeacherRegNo, @FirstName, @MiddleName, @LastName, @DisplayName, @Email, @Gender, @DOB, @Address, @ContactNo, @IsEnable, @ErrorMessage OUTPUT, @Success OUTPUT", parameters);

                response.Data = (bool)successParam.Value;
                response.Message.Add(parameters.First(p => p.ParameterName == "@ErrorMessage").Value as string ?? string.Empty);

                if (!(bool)successParam.Value)
                {
                    response.Success = false;
                }

                return response;
            }
            catch
            {
                response.Message.Add(string.Format(StaticData.SOMETHING_WENT_WRONG));
                response.Success = false;
                return response;
            }
        }

        /// <summary>
        /// To access search bar based on search criteria
        /// </summary>
        /// <param name="teacherRegNumber"></param>
        /// <param name="teacherId"></param>
        /// <returns></returns>
        public RepositoryResponse<bool> CheckTeacherRegNo(string teacherRegNumber, long teacherId)
        {
            var response = new RepositoryResponse<bool>();
            try
            {
                var teacherRegNo = new SqlParameter("@TeacherRegNo", teacherRegNumber);
                var teacherID = new SqlParameter("@TeacherID", teacherId);
                var result = new SqlParameter
                {
                    ParameterName = "@Result",
                    SqlDbType = SqlDbType.Bit,
                    Direction = ParameterDirection.Output
                };

                _dataContext.Database.ExecuteSqlRaw("SELECT @Result = dbo.fn_CheckTeacherRegNo(@TeacherID, @TeacherRegNo)", teacherID, teacherRegNo, result);
                response.Data = (bool)result.Value;
                return response;
            }
            catch
            {
                response.Success = false;
                response.Message.Add(string.Format(StaticData.SOMETHING_WENT_WRONG));
                return response;
            }
        }


        /// <summary>
        /// Check this teacher's display name already exists
        /// </summary>
        /// <param name="teacherName"></param>
        /// <param name="teacherId"></param>
        /// <returns></returns>
        public RepositoryResponse<bool> CheckTeacherName(string teacherName, long teacherId)
        {
            var response = new RepositoryResponse<bool>();
            try
            {
                var displayName = new SqlParameter("@DisplayName", teacherName);
                var teacherID = new SqlParameter("@TeacherID", teacherId);
                var result = new SqlParameter
                {
                    ParameterName = "@Result",
                    SqlDbType = SqlDbType.Bit,
                    Direction = ParameterDirection.Output
                };

                _dataContext.Database.ExecuteSqlRaw("SELECT @Result = dbo.fn_CheckTeacherName(@TeacherID, @DisplayName)", teacherID, displayName, result);

                response.Message.Add(StaticData.SUCCESS_MESSAGE);
                response.Data = (bool)result.Value;
                return response;
            }
            catch
            {
                response.Success = false;
                response.Message.Add(StaticData.SOMETHING_WENT_WRONG); 
                return response;
            }
        }



        /// <summary>
        /// Check this teacher's email already exists
        /// </summary>
        /// <param name="teacherEmail"></param>
        /// <param name="teacherId"></param>
        /// <returns></returns>
        public RepositoryResponse<bool> CheckTeacherEmail(string teacherEmail, long teacherId)
        {
            var response = new RepositoryResponse<bool>();
            try
            {
                var email = new SqlParameter("@Email", teacherEmail);
                var teacherID = new SqlParameter("@TeacherID", teacherId);
                var result = new SqlParameter
                {
                    ParameterName = "@Result",
                    SqlDbType = SqlDbType.Bit,
                    Direction = ParameterDirection.Output
                };

                _dataContext.Database.ExecuteSqlRaw("SELECT @Result = dbo.fn_CheckTeacherEmail(@TeacherID, @Email)", teacherID, email, result);

                response.Data = (bool)result.Value;
                return response;
            }
            catch
            {
                response.Success = false;
                response.Message.Add(string.Format(StaticData.SOMETHING_WENT_WRONG));
                return response;
            }
        }

        /// <summary>
        /// Handling enable/disable button for teacher
        /// </summary>
        /// <param name="id"></param>
        /// <param name="isEnable"></param>
        /// <returns></returns>
        public RepositoryResponse<bool> ToggleEnableTeacher(long id, bool isEnable)
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
                    new SqlParameter("@TeacherID", id),
                    new SqlParameter("@IsEnable", isEnable),
                    errorMessageParam,
                    successParam
                };

                _dataContext.Database.ExecuteSqlRaw("EXEC sp_ToggleEnableTeacher @TeacherID, @IsEnable, @ErrorMessage OUTPUT, @Success OUTPUT", parameters);

                response.Data = (bool)successParam.Value;
                response.Message.Add(errorMessageParam.Value as string ?? string.Empty);

                response.Success = (bool)successParam.Value;

                return response;
            }
            catch
            {
                response.Success = false;
                response.Message.Add(string.Format(StaticData.SOMETHING_WENT_WRONG));
                return response;
            }
        }




    }
}
