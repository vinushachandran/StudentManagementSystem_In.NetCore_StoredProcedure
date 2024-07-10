/// <summary>
///
/// </summary>
/// <author>Vinusha</author>
///

using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.CodeAnalysis.Elfie.Diagnostics;
using Microsoft.EntityFrameworkCore;
using SMS.BL.NLog.Interface;
using SMS.BL.Student.Interface;
using SMS.Model.Student;
using SMS.ViewModel.ErrorResponse;
using SMS.ViewModel.Nlog;
using SMS.ViewModel.StaticData;
using SMS.ViewModel.Student;
using ClosedXML.Excel;
using Rotativa.AspNetCore;


namespace StudentManagementSystem.Controllers
{
    public class StudentController : Controller
    {
		IStudentRepository _studentRepository;
        INLogRepository _logRepository;
        private readonly ILogger<StudentController> _logger;

        ErrorResponse errorResponse=new ErrorResponse();
		
        public StudentController(IStudentRepository studentRepository,INLogRepository nLogRepository, ILogger<StudentController> logger)
        {
            _studentRepository = studentRepository;
            _logRepository = nLogRepository;
            _logger = logger;
        }

        // GET: Student
        public IActionResult Index()
        {
            return View();
        }

        // GET: Student/Details/5
        /// <summary>
        /// Get all student details
        /// </summary>
        /// <param name="studentModel"></param>
        /// <returns></returns>
        public IActionResult DisplayAllStudents(StudentViewModel studentModel)
        {
            int totalPage;
            try
            {              

                var response = _studentRepository.GetAllStudents(studentModel);

                var studentViewModel = new StudentViewModel
                {
                    Students = response.Data,
                    PageSize = studentModel.PageSize,
                    PageNumber = studentModel.PageNumber,
                    TotalPages = response.TotalPages
                };


                if (studentViewModel.Students != null)
                {
                    _logger.LogInformation(response.TotalMessages);
                    return PartialView("_StudentsList", studentViewModel);
                }
                else
                {
                    _logger.LogWarning("No students found.");
                    errorResponse.Messages.Add(string.Format(response.Message.ToString()));
                    return new JsonResult(errorResponse);
                }

            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error retrieving student data");
                return (Json(new { success = false, message = "Error retrieving student data", error = ex.Message }));
            }

        }

        
        /// <summary>
        /// Get one student details
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public IActionResult GetStudentDetails(long id)
        {
            var response = _studentRepository.GetOneStudent(id);
            var studentViewModel = new StudentViewModel
            {
                StudentDetail = response.Data
            };
            if (response.Success)
            {
                _logger.LogInformation(response.TotalMessages);
                return PartialView("_StudentDetails", studentViewModel);
            }
            else
            {
                _logger.LogWarning(response.TotalMessages);
                return Json(new { success = response.Success, message = response.Message });
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
                _logger.LogInformation("Student ID: {StudentId} deletion status: {Status}", id, response.Success);

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
				return PartialView("_UpsertStudent", new StudentBO());

			}
			else
			{

				var response = _studentRepository.GetOneStudent(id);
				return PartialView("_UpsertStudent", response.Data);
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

                    var response = _studentRepository.UpsertStudent(student);

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

                return Json(new { success = response.Success, message = response.Message.FirstOrDefault() ?? string.Empty });

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
        /// To access the search filter
        /// </summary>
        /// <param name="searchViewModel"></param>
        /// <returns></returns>
        [HttpGet]
        public IActionResult SearchStudent(StudentSearchViewModel searchViewModel)
        {
            try
            {
                var response = _studentRepository.GetSearchStudents(searchViewModel);

                var studentViewModel = new StudentViewModel
                {
                    Students = response.Data,                    
                    PageNumber = 1,
                    TotalPages = 1
                };


                if (studentViewModel.Students != null)
                {
                    return PartialView("_StudentsList", studentViewModel);
                }
                else
                {
                    errorResponse.Messages.Add(string.Format(response.Message.ToString()));
                    return new JsonResult(errorResponse);
                }               
            }
            catch
            {
                return Json(new { success = errorResponse.Success, message = StaticData.SOMETHING_WENT_WRONG });
            }

            
        }

        public IActionResult SearchAutoComplete(string query, string criteria)
        {
            var searchResult = _studentRepository.GetSearchStudents(new StudentSearchViewModel
            {
                StudentSearchQuery = query,
                StudentSearchCriteria = criteria
            });

            var result = searchResult.Data.Select(s => new
            {
                label = criteria switch
                {
                    "StudentRegNo" => s.StudentRegNo,
                    "DisplayName" => s.DisplayName,
                    _ => s.DisplayName
                },
                value = s.StudentID
            });

            return Json(result);
        }


        /// <summary>
        /// To check the student registration number already exist or not
        /// </summary>
        /// <param name="regNo"></param>
        /// <param name="stdID"></param>
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
        /// check this student displayname already available or not
        /// </summary>
        /// <param name="studentName"></param>
        /// <param name="stdID"></param>
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
        /// <param name="studentEmail"></param>
        /// <param name="stdID"></param>
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


        public IActionResult DownloadExcel()
        {
            try
            {
                // Set page size to a large number to get all students in one request.
                var studentModel = new StudentViewModel
                {
                    PageNumber = 1,
                    PageSize = int.MaxValue
                };

                // Get all students data using repository method
                var studentsResponse = _studentRepository.GetAllStudents(studentModel);

                // Check if data retrieval was successful
                if (studentsResponse.Success)
                {
                    // Create Excel workbook and worksheet
                    var workbook = new XLWorkbook();
                    var worksheet = workbook.Worksheets.Add("Students");

                    // Add headers
                    var headers = new[] { "Registration No", "First Name", "Middle Name", "Last Name", "Display Name", "Email", "Gender", "Date Of Birth", "Address", "Contact No", "Status" };
                    for (int i = 0; i < headers.Length; i++)
                    {
                        worksheet.Cell(1, i + 1).Value = headers[i];
                    }

                    // Add data rows
                    var students = studentsResponse.Data.ToList(); // Convert IEnumerable to List
                    for (int i = 0; i < students.Count; i++)
                    {
                        var student = students[i];
                        worksheet.Cell(i + 2, 1).Value = student.StudentRegNo;
                        worksheet.Cell(i + 2, 2).Value = student.FirstName;
                        worksheet.Cell(i + 2, 3).Value = student.MiddleName;
                        worksheet.Cell(i + 2, 4).Value = student.LastName;
                        worksheet.Cell(i + 2, 5).Value = student.DisplayName;
                        worksheet.Cell(i + 2, 6).Value = student.Email;
                        worksheet.Cell(i + 2, 7).Value = student.Gender;
                        worksheet.Cell(i + 2, 8).Value = student.DOB.ToString("yyyy-MM-dd");
                        worksheet.Cell(i + 2, 9).Value = student.Address;
                        worksheet.Cell(i + 2, 10).Value = student.ContactNo;
                        worksheet.Cell(i + 2, 11).Value = student.IsEnable ? "Enabled" : "Disabled";
                    }

                    // Prepare memory stream for Excel file
                    using (var stream = new MemoryStream())
                    {
                        workbook.SaveAs(stream);
                        stream.Seek(0, SeekOrigin.Begin); // Reset stream position
                        return File(stream.ToArray(), "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "Students.xlsx");
                    }
                }
                else
                {
                    // Handle case where no data is found or other repository errors
                    TempData["ErrorMessage"] = "Failed to generate Excel file. No data found or error occurred.";
                    return RedirectToAction("Index"); // Redirect to appropriate action or view
                }
            }
            catch (Exception ex)
            {
                // Log the exception
                _logger.LogError(ex, "An error occurred while generating the Excel file.");

                // Handle the exception (e.g., show an error message to the user)
                TempData["ErrorMessage"] = "An error occurred while generating the Excel file.";
                return RedirectToAction("Index");
            }
        }

        public IActionResult DownloadPdf(StudentViewModel studentViewModel)
        {
            try
            {
                var response = _studentRepository.GetAllStudents(studentViewModel);

                var studentviewmodel = new StudentViewModel
                {
                    Students = response.Data
                };

                var pdfContent = new ViewAsPdf("_StudentListPdf", studentviewmodel)
                {
                    FileName = "StudentList.pdf",
                    PageSize = Rotativa.AspNetCore.Options.Size.A4,
                    PageOrientation = Rotativa.AspNetCore.Options.Orientation.Portrait,
                };

                return pdfContent;
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"Internal Server Error: {ex.Message}");
            }
        }

    }
}
