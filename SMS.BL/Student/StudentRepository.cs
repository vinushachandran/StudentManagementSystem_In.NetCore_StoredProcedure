/// <summary>
///
/// </summary>
/// <author>Vinusha</author>
///

using Azure;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using SMS.BL.Student.Interface;
using SMS.Data;
using SMS.Model.Student;
using SMS.ViewModel.RepositoyResponse;
using SMS.ViewModel.StaticData;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMS.BL.Student
{
	public class StudentRepository : IStudentRepository
	{
		private readonly StudentManagementSystemContext _dataContext;

		public StudentRepository(StudentManagementSystemContext dataContext)
		{
			_dataContext = dataContext;
		}

        /// <summary>
        /// Get all the student details
        /// </summary>
        /// <param name="pageNo"></param>
        /// <param name="pageSize"></param>
        /// <param name="isEnable"></param>
        /// <param name="totalPage"></param>
        /// <returns></returns>
        public RepositoryResponse<IEnumerable<StudentBO>> GetAllStudents(int pageNo, int pageSize, bool? isEnable, out int totalPage)
		{	
			var response=new RepositoryResponse<IEnumerable<StudentBO>>();

            var pageNoParam = new SqlParameter("@PageNo", pageNo);
            var pageSizeParam = new SqlParameter("@PageSize", pageSize);
            var isEnableParam = new SqlParameter("@IsEnable", isEnable.HasValue ? (object)isEnable.Value : DBNull.Value);

            var totalPageParam = new SqlParameter
            {
                ParameterName = "@TotalPage",
                SqlDbType = System.Data.SqlDbType.Int,
                Direction = System.Data.ParameterDirection.Output
            };

            var pageData = _dataContext.Students.FromSqlRaw("EXEC sp_GetAllStudentDetails @PageNo, @PageSize, @IsEnable, @TotalPage OUT", pageNoParam, pageSizeParam, isEnableParam, totalPageParam).ToList();

			if(pageData.Count > 0 )
			{
				response.Data = pageData;

			}
			else
			{
				response.Success = false;
				response.Message.Add(string.Format(StaticData.NO_DATA_FOUND,"Student"));
			}


            totalPage = (int)totalPageParam.Value;

            return response;
        }

		/// <summary>
		/// Get one student details by it's id
		/// </summary>
		/// <param name="id"></param>
		/// <returns></returns>
		/// <exception cref="KeyNotFoundException"></exception>
		public RepositoryResponse<StudentBO> GetOneStudent(long id)
		{
			var response= new RepositoryResponse<StudentBO>();

			var studentIdParam = new SqlParameter("@StudentID", id);
			var student = _dataContext.Students.FromSqlRaw("EXEC GetOneStudentDetails @StudentID",studentIdParam).AsEnumerable().FirstOrDefault();

			if (student == null)
			{
				response.Success=false;
				response.Message.Add(string.Format(StaticData.NO_DATA_FOUND,$"{id} data "));
			}
			return response;
		}

        /// <summary>
        /// Delete on student by it's id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public RepositoryResponse<bool> DeleteStudent(long id)
		{
			var responce= new RepositoryResponse<bool>();

			if (id <= 0)
			{
				responce.Success = false;
				responce.Message.Add("Invalid student ID.");
				return responce;
			}

			try
			{
				var studentIdParam = new SqlParameter("@StudentID", id);
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

				_dataContext.Database.ExecuteSqlRaw("EXEC sp_DeleteStudent @StudentID, @IsDeleted OUTPUT, @ErrorMessage OUTPUT", studentIdParam, isDeletedParam, errorMessageParam);

				responce.Data=(bool)isDeletedParam.Value;
				responce.Message.Add (errorMessageParam.Value as string ?? string.Empty);
				

				return responce;
			}
			catch
			{
				responce.Success = false;
				responce.Message.Add(string.Format(StaticData.SOMETHING_WENT_WRONG));
				return responce;
			}
		}

        /// <summary>
        /// Add a new student or update exsisting student
        /// </summary>
        /// <param name="student"></param>
        /// <returns></returns>
        public RepositoryResponse<bool> SaveStudent(StudentBO student)
		{
			var response=new RepositoryResponse<bool>();

			try
			{
				var studentIdParam = new SqlParameter("@StudentID", student.StudentID ?? (object)DBNull.Value);
				var successParam = new SqlParameter
				{
					ParameterName = "@Success",
					SqlDbType = System.Data.SqlDbType.Bit,
					Direction = System.Data.ParameterDirection.Output
				};
				var parameters = new[]
				{
					studentIdParam,
					new SqlParameter("@StudentRegNo", student.StudentRegNo),
					new SqlParameter("@FirstName", student.FirstName),
					new SqlParameter("@MiddleName", student.MiddleName),
					new SqlParameter("@LastName", student.LastName),
					new SqlParameter("@DisplayName", student.DisplayName),
					new SqlParameter("@Email", student.Email),
					new SqlParameter("@Gender", student.Gender),
					new SqlParameter("@DOB", student.DOB),
					new SqlParameter("@Address", student.Address),
					new SqlParameter("@ContactNo", student.ContactNo),
					new SqlParameter("@IsEnable", student.IsEnable),
					new SqlParameter
					{
						ParameterName = "@ErrorMessage",
						SqlDbType = System.Data.SqlDbType.NVarChar,
						Size = 255,
						Direction = System.Data.ParameterDirection.Output
					},
					successParam
				};

				_dataContext.Database.ExecuteSqlRaw("EXEC sp_SaveStudent @StudentID, @StudentRegNo, @FirstName, @MiddleName, @LastName, @DisplayName, @Email, @Gender, @DOB, @Address, @ContactNo, @IsEnable, @ErrorMessage OUTPUT, @Success OUTPUT", parameters);

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
        /// handling enable disable button
        /// </summary>
        /// <param name="id"></param>
        /// <param name="isEnable"></param>
        /// <returns></returns>
        public RepositoryResponse<bool> ToggleEnable(long id, bool isEnable)
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
				var parameters = new[]
				{
					new SqlParameter("@StudentID", id),
					new SqlParameter("@IsEnable", isEnable),
					new SqlParameter
					{
						ParameterName = "@ErrorMessage",
						SqlDbType = System.Data.SqlDbType.NVarChar,
						Size = 255,
						Direction = System.Data.ParameterDirection.Output
					},
					successParam
				};

				_dataContext.Database.ExecuteSqlRaw("EXEC sp_ToggleEnableStudent @StudentID, @IsEnable, @ErrorMessage OUTPUT, @Success OUTPUT", parameters);

				response.Data=(bool)successParam.Value;
				response.Message.Add(parameters.First(p => p.ParameterName == "@ErrorMessage").Value as string ?? string.Empty);

                if (!(bool)successParam.Value)
                {
                    response.Success = false;
                }

                return response;
			}
			catch
			{
				response.Success=false;
				response.Message.Add(string.Format(StaticData.SOMETHING_WENT_WRONG));
				return response;
			}
		}



        /// <summary>
		/// To check this student  allready allocated for a subject
		/// </summary>
		/// <param name="id"></param>
		/// <returns></returns>
        public RepositoryResponse<bool> CheckStudentInUse(long id)
        {
			var response = new RepositoryResponse<bool>();
			try
			{
                var StdID = new SqlParameter("@StdID", id);
                var result = new SqlParameter
                {
                    ParameterName = "@Result",
                    SqlDbType = SqlDbType.Bit,
                    Direction = ParameterDirection.Output
                };


                _dataContext.Database.ExecuteSqlRaw("SELECT @Result = dbo.fn_CheckStudentAllocation(@StdID)", StdID, result);

				response.Data=(bool)result.Value;
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
		/// To access search bar based on search criteria
		/// </summary>
		/// <param name="item"></param>
		/// <param name="criteria"></param>
		/// <returns></returns>
        public RepositoryResponse<IEnumerable<StudentBO>> GetSearchStudents(string item, string criteria)
        {
			var response= new RepositoryResponse<IEnumerable<StudentBO>>();
            try
            {

                var searchItem = new SqlParameter("@Item", $"%{item}%");
                var searchCriteria = string.IsNullOrEmpty(criteria)
                     ? new SqlParameter("@Criteria", DBNull.Value)
                     : new SqlParameter("@Criteria", criteria);

                string sqlQuery = "EXEC sp_SearchStudentsDetails @Criteria, @Item";


                var students = _dataContext.Students
                                         .FromSqlRaw(sqlQuery, searchCriteria, searchItem)
                                         .ToList();

                if (students.Count > 0)
                {
                    response.Data = students;
                }
                else
                {
                    response.Success = false;
                    response.Message.Add(string.Format(StaticData.NO_DATA_FOUND,"student"));
                }

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
		/// To access search bar based on search criteria
		/// </summary>
		/// <param name="studentRegNumber"></param>
		/// <param name="studentId"></param>
		/// <returns></returns>
        public RepositoryResponse<bool> CheckStudentRegNo(string studentRegNumber, long studentId)
        {
			var response=new RepositoryResponse<bool>();
			try
			{
				var studentRegNo = new SqlParameter("@StudentRegNo", studentRegNumber);
				var studentID = new SqlParameter("@StudentID", studentId);
                var result = new SqlParameter
                {
                    ParameterName = "@Result",
                    SqlDbType = SqlDbType.Bit,
                    Direction = ParameterDirection.Output
                };

				_dataContext.Database.ExecuteSqlRaw("SELECT @Result = dbo.fn_CheckStudentRegNo(@StudentID,@StudentRegNo)", studentID, studentRegNo, result);
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
        /// Check this students Display name already exist
        /// </summary>
        /// <param name="studentname"></param>
        /// <param name="studentId"></param>
        /// <returns></returns>
        public RepositoryResponse<bool> CheckStudentName(string studentname, long studentId)
        {
			var response=new RepositoryResponse<bool>();
            try
            {
                var studentName = new SqlParameter("@DisplayName", studentname);
                var studentID = new SqlParameter("@StudentID", studentId);
                var result = new SqlParameter
                {
                    ParameterName = "@Result",
                    SqlDbType = SqlDbType.Bit,
                    Direction = ParameterDirection.Output
                };

                _dataContext.Database.ExecuteSqlRaw("SELECT @Result = dbo.fn_CheckStudentName(@StudentID,@DisplayName)", studentID, studentName,  result);
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
		/// Check this students email name already exist
		/// </summary>
		/// <param name="studentEmail"></param>
		/// <param name="studentId"></param>
		/// <returns></returns>
        public RepositoryResponse<bool> CheckStudentEmail(string studentEmail, long studentId)
		{
			var response=new RepositoryResponse<bool>();
			try
			{
				var email = new SqlParameter("@Email", studentEmail);
				var studentID = new SqlParameter("@StudentID", studentId);
				var result = new SqlParameter
				{
					ParameterName = "@Result",
					SqlDbType = SqlDbType.Bit,
					Direction = ParameterDirection.Output
				};


				_dataContext.Database.ExecuteSqlRaw("SELECT @Result = dbo.fn_CheckStudentEmail(@StudentID,@Email)", studentID, email,  result);

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



	}
}
