using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using SMS.BL.Student.Interface;
using SMS.Data;
using SMS.Model.Student;
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
		/// <returns></returns>
		public IEnumerable<StudentBO> GetAllStudents(int pageNo, int pageSize, bool? isEnable, out int totalPage)
		{	

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

            totalPage = (int)totalPageParam.Value;

            return pageData;
        }

		/// <summary>
		/// Get one student details by it's id
		/// </summary>
		/// <param name="id"></param>
		/// <returns></returns>
		/// <exception cref="KeyNotFoundException"></exception>
		public StudentBO GetOneStudent(long id)
		{
			var studentIdParam = new SqlParameter("@StudentID", id);
			var student = _dataContext.Students.FromSqlRaw("EXEC GetOneStudentDetails @StudentID",studentIdParam).AsEnumerable().FirstOrDefault();

			if (student == null)
			{
				throw new KeyNotFoundException($"Student with ID {id} not found.");
			}
			return student;
		}

		/// <summary>
		/// Delete on student by it's id
		/// </summary>
		/// <param name="id"></param>
		/// <param name="msg"></param>
		/// <returns></returns>
		public bool DeleteStudent(long id, out string msg)
		{
			msg = "";

			if (id <= 0)
			{
				msg = "Invalid student ID.";
				return false;
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

				bool isDeleted = (bool)isDeletedParam.Value;
				msg = errorMessageParam.Value as string ?? string.Empty; 

				return isDeleted;
			}
			catch (Exception ex)
			{
				msg = "An error occurred while deleting the student: " + ex.Message;
				return false;
			}
		}

		/// <summary>
		/// Add a new student or update exsisting student
		/// </summary>
		/// <param name="student"></param>
		/// <param name="msg"></param>
		/// <returns></returns>
		public bool SaveStudent(StudentBO student, out string msg)
		{
			msg = "";

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

				msg = parameters.First(p => p.ParameterName == "@ErrorMessage").Value as string ?? string.Empty;

				return (bool)successParam.Value;
			}
			catch (Exception ex)
			{
				msg = "An error occurred while saving the student: " + ex.Message;
				return false;
			}
		}


		/// <summary>
		/// handling enable disable button
		/// </summary>
		/// <param name="id"></param>
		/// <param name="isEnable"></param>
		/// <param name="msg"></param>
		/// <returns></returns>
		public bool ToggleEnable(long id, bool isEnable, out string msg)
		{
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

				msg = parameters.First(p => p.ParameterName == "@ErrorMessage").Value as string ?? string.Empty;

				return (bool)successParam.Value;
			}
			catch (Exception ex)
			{
				msg = "An error occurred while toggling the student's enable status: " + ex.Message;
				return false;
			}
		}



        ///<summary>
        /// To check this teacher allready in the database
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public bool CheckStudentInUse(long id)
        {
            var StdID = new SqlParameter("@StdID", id);
            var result = new SqlParameter
            {
                ParameterName = "@Result",
                SqlDbType = SqlDbType.Bit,
                Direction = ParameterDirection.Output
            };


            _dataContext.Database.ExecuteSqlRaw("SELECT @Result = dbo.fn_CheckStudentAllocation(@StdID)", StdID, result);

            return (bool)result.Value;

        }


        /// <summary>
        /// To access search bar based on search criteria
        /// </summary>
        /// <param name="item"></param>
        /// <param name="criteria"></param>
        /// <returns></returns>
        public IEnumerable<StudentBO> GetSearchStudents(string item, string criteria)
        {
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

                return students;
            }
            catch
            {
                return Enumerable.Empty<StudentBO>();
            }
        }



    }
}
