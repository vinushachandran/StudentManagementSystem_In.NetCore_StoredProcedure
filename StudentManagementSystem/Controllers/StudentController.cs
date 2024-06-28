using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.CodeAnalysis.Elfie.Diagnostics;
using Microsoft.EntityFrameworkCore;
using SMS.BL.Student.Interface;
using SMS.Model.Student;
using SMS.ViewModel.ErrorResponse;
using SMS.ViewModel.StaticData;
using SMS.ViewModel.Student;


namespace StudentManagementSystem.Controllers
{
    public class StudentController : Controller
    {
		IStudentRepository _studentRepository;

        ErrorResponse errorResponse=new ErrorResponse();
		
        public StudentController(IStudentRepository studentRepository)
        {
            _studentRepository = studentRepository;
        }

        // GET: Student
        public IActionResult Index()
        {
            return View();
        }

        // GET: Student/Details/5
        public IActionResult DisplayAllStudents(int pageNumber, int pageSize, bool? isActive = null)
        {
            int totalPage;
            try
            {
                var response = _studentRepository.GetAllStudents(pageNumber, pageSize, isActive, out totalPage);

                var pageData = response.Data.ToList();


                if (pageData.Count > 0)
                {
                    return (Json(new { success = true, data = pageData, totalPages = totalPage }));
                }
                else
                {
                    errorResponse.Messages.Add(string.Format(response.Message.ToString()));
                    return new JsonResult(errorResponse);
                }

            }
            catch (Exception ex)
            {
                return (Json(new { success = false, message = "Error retrieving student data", error = ex.Message }));
            }

        }

       

		/// <summary>
		/// Delete one student by it's id
		/// </summary>
		/// <param name="id"></param>
		/// <returns></returns>
		public ActionResult DeleteStudent(int id)
		{
			try
			{
				var response = _studentRepository.DeleteStudent(id);

				return Json(new { success = response.Success, message = response.Message});
			}
			catch
			{
                
				return Json(new { success = errorResponse.Success, message = StaticData.SOMETHING_WENT_WRONG });
			}
		}


		public ActionResult UpsertStudent(long id = 0)
		{
			if (id == 0)
			{
				return PartialView("_Add", new StudentBO());

			}
			else
			{

				var exsitingStudent = _studentRepository.GetOneStudent(id);
				return PartialView("_Add", exsitingStudent);
			}

		}

		/// <summary>
		/// To add a new data
		/// </summary>
		/// <param name="teacher"></param>
		/// <returns></returns>
		[HttpPost]
		[ValidateAntiForgeryToken]
		public ActionResult UpsertStudent(StudentBO student)
		{
			if (ModelState.IsValid)
			{
				try
				{

                    var response = _studentRepository.SaveStudent(student);

					return Json(new { success = response.Success, message = string.Join(", ", response.Message) });
				}
				catch 
				{
                    return Json(new { success = errorResponse.Success, message = StaticData.SOMETHING_WENT_WRONG });
                }
			}
			else
			{
				var errors = ModelState.Values.SelectMany(v => v.Errors)
											  .Select(e => e.ErrorMessage)
											  .ToList();
				return Json(new { success = false, message = "Please fill all details.", errors = errors });
			}

		}
        /// <summary>
        /// handling toggle button
        /// </summary>
        /// <param name="id"></param>
        /// <param name="enable"></param>
        /// <returns></returns>

        [HttpPost]
        public ActionResult ToggleStudent(int id, bool enable)
        {
            try
            {
                var response = _studentRepository.ToggleEnable(id, enable);

                return Json(new { success = response.Success, message = response.Message });
            }
            catch
            {
                return Json(new { success = errorResponse.Success, message = StaticData.SOMETHING_WENT_WRONG });
            }
        }

        /// <summary>
        /// To check this student is allocated for any subject
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public JsonResult IsAllocated(long id)
        {

            var response = _studentRepository.CheckStudentInUse(id);

            if (response.Success)
            {
                return Json(new { success = true, isAllocated = response.Data });
            }
            else
            {
                return Json(new { success = false, message = string.Join(", ", response.Message) });
            }
        }


        /// <summary>
        /// To access the seach bar
        /// </summary>
        /// <param name="query"></param>
        /// <param name="criteria"></param>
        /// <returns></returns>
        [HttpGet]
        public ActionResult SearchStudent(string query, string criteria)
        {
            try
            {
                var response = _studentRepository.GetSearchStudents(query, criteria);


                if (response.Success && response.Data.Any())
                {
                    return PartialView("_SearchResults", response.Data.ToList());
                }
                else
                {
                    return PartialView("_SearchResults", null);
                }

            }
            catch
            {
                return Json(new { success = errorResponse.Success, message = StaticData.SOMETHING_WENT_WRONG });
            }

            
        }

        /// <summary>
        /// To check the student registration number already exist or not
        /// </summary>
        /// <param name="regNo"></param>
        /// <returns></returns>
        [HttpGet]
        public JsonResult IsStudentRegAvailable(string regNo,long stdID)
        {
            var response = _studentRepository.CheckStudentRegNo(regNo, stdID);

            if (response.Success)
            {
                return Json(new { isAvailable = response.Data });
            }
            else
            {
                return Json(new { success = false, message = string.Join(", ", response.Message) });
            }
        }


        /// <summary>
        /// To check this student displayname already available or not
        /// </summary>
        /// <param name="studentName"></param>
        /// <returns></returns>

        public JsonResult IsStudentNameAvailable(string studentName, long stdID)
        {
            var response = _studentRepository.CheckStudentName(studentName, stdID);
            if (response.Success)
            {
                return Json(new { isAvailable = response.Data });
            }
            else
            {
                return Json(new { success = false, message = string.Join(", ", response.Message) });
            }
        }

        /// <summary>
        /// To check one email address already exist or not
        /// </summary>
        /// <param name="teacherEmail"></param>
        /// <returns></returns>
        public JsonResult IsStudentEmailAvailable(string studentEmail, long stdID)
        {
            var response = _studentRepository.CheckStudentEmail(studentEmail, stdID);
            if (response.Success)
            {
                return Json(new { isAvailable = response.Data });
            }
            else
            {
                return Json(new { success = false, message = string.Join(", ", response.Message) });
            }
        }


    }
}
