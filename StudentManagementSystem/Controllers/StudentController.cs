using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using SMS.BL.Student.Interface;
using SMS.Model.Student;
using SMS.ViewModel.Student;


namespace StudentManagementSystem.Controllers
{
    public class StudentController : Controller
    {
		IStudentRepository _studentRepository;
		
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
        public Task<IActionResult> DisplayAllStudents(int pageNumber, int pageSize, bool? isActive = null)
        {
            int totalPage;
            try
            {
                var students = _studentRepository.GetAllStudents(pageNumber, pageSize, isActive, out totalPage);

                var pageData = students.ToList();

                var viewModel = new StudentViewModel
                {
                    Students = students
                };

                if (pageData.Count > 0)
                {
                    return Task.FromResult<IActionResult>(Json(new { success = true, data = pageData, totalPages = totalPage }));
                }
                else
                {
                    return Task.FromResult<IActionResult>(Json(new { success = false, message = "No Data Found", totalPages = totalPage }));
                }

            }
            catch (Exception ex)
            {
                return Task.FromResult<IActionResult>(Json(new { success = false, message = "Error retrieving student data", error = ex.Message }));
            }

        }

       

		/// <summary>
		/// Delete one student by it's id
		/// </summary>
		/// <param name="id"></param>
		/// <returns></returns>
		public ActionResult DeleteStudent(int id)
		{
			var msg = "";

			try
			{
				bool isDelete = _studentRepository.DeleteStudent(id, out msg);

				return Json(new { success = isDelete, message = msg });
			}
			catch (Exception ex)
			{
				return Json(new { success = false, message = ex.Message });
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
			var msg = "";
			if (ModelState.IsValid)
			{
				try
				{
					bool isSaveSuccess = _studentRepository.SaveStudent(student, out msg);

					return Json(new { success = isSaveSuccess, message = msg });
				}
				catch (Exception ex)
				{
					return Json(new { success = false, message = "Error occurred while adding the student: " + ex.Message });
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
                bool isToggle = _studentRepository.ToggleEnable(id, enable, out string msg);

                return Json(new { success = isToggle, message = msg });
            }
            catch (Exception ex)
            {
                return Json(new { success = false, message = "An error occurred: " + ex.Message });
            }
        }

        /// <summary>
        /// To check this student is allocated for any subject
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public JsonResult IsAllocated(long id)
        {
            bool isAllocated = _studentRepository.CheckStudentInUse(id);
            return Json(new { isAllocated = isAllocated });
        }


        /// <summary>
        /// To access the seach bar
        /// </summary>
        /// <param name="query"></param>
        /// <param name="criteria"></param>
        /// <returns></returns>
        [HttpGet]
        public ActionResult Search(string query, string criteria)
        {

            var searchResults = _studentRepository.GetSearchStudents(query, criteria).ToList();


            if (searchResults.Count > 0)
            {
                return PartialView("_SearchResults", searchResults);
            }
            else
            {
                return PartialView("_SearchResults", null);
            }
        }
    }
}
