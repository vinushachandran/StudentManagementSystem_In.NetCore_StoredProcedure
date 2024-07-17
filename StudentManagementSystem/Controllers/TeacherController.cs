using ClosedXML.Excel;
using HtmlAgilityPack;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.AspNetCore.Mvc.ViewEngines;
using Microsoft.AspNetCore.Mvc.ViewFeatures;
using Rotativa.AspNetCore;
using SMS.BL.NLog;
using SMS.BL.NLog.Interface;
using SMS.BL.Teacher;
using SMS.BL.Teacher.Interface;
using SMS.Model.Teacher;
using SMS.ViewModel.ErrorResponse;
using SMS.ViewModel.StaticData;
using SMS.ViewModel.Teacher;
using System.Data;

namespace StudentManagementSystem.Controllers
{
    public class TeacherController : Controller
    {
        ITeacherRepository _teacherRepository;
        INLogRepository _logRepository;
        private readonly ICompositeViewEngine _viewEngine;
        private readonly ILogger<TeacherController> _logger;

        ErrorResponse errorResponse = new ErrorResponse();

        public TeacherController(ITeacherRepository teacherRepository, INLogRepository nLogRepository, ICompositeViewEngine viewEngine, ILogger<TeacherController> logger)
        {
            _teacherRepository = teacherRepository;
            _logRepository = nLogRepository;
            _logger = logger;
            _viewEngine = viewEngine;
        }

        public IActionResult Index()
        {
            return View();
        }

        /// <summary>
        /// Get all teacher details
        /// </summary>
        /// <param name="teacherModel"></param>
        /// <returns></returns>
        public IActionResult DisplayAllTeachers(TeacherViewModel teacherModel)
        {
            try
            {
                var response = _teacherRepository.GetAllTeachers(teacherModel);

                var teacherViewModel = new TeacherViewModel
                {
                    Teachers = response.Data,
                    PageSize = teacherModel.PageSize,
                    PageNumber = teacherModel.PageNumber,
                    TotalPages = response.TotalPages
                };

                if (teacherViewModel.Teachers != null)
                {
                    _logger.LogInformation(response.TotalMessages);
                    return PartialView("_TeachersList", teacherViewModel);
                }
                else
                {
                    _logger.LogWarning("No teachers found.");
                    errorResponse.Messages.Add(string.Format(response.Message.ToString()));
                    return new JsonResult(errorResponse);
                }
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error retrieving teacher data");
                return Json(new { success = false, message = "Error retrieving teacher data", error = ex.Message });
            }
        }

        /// <summary>
        /// Retrieves details of a teacher by their ID.
        /// </summary>
        /// <param name="id">The ID of the teacher to retrieve.</param>
        /// <returns>A partial view with the teacher details.</returns>
        public IActionResult GetTeacherDetails(long id)
        {
            var response = _teacherRepository.GetOneTeacher(id);
            var teacherViewModel = new TeacherViewModel
            {
                TeacherDetail = response.Data
            };

            if (response.Success && teacherViewModel.TeacherDetail != null)
            {
                _logger.LogInformation(response.Message.ToString());
                return PartialView("_TeacherDetails", teacherViewModel);
            }
            else
            {
                _logger.LogWarning(response.Message.ToString());
                return Json(new { success = response.Success, message = response.Message });
            }
        }


        /// <summary>
        /// Delete one teacher by its ID
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public ActionResult DeleteTeacher(int id)
        {
            try
            {
                var response = _teacherRepository.DeleteTeacher(id);
                _logger.LogInformation("Teacher ID: {TeacherId} deletion status: {Status}", id, response.Success);

                return Json(new { success = response.Success, message = response.Message });
            }
            catch
            {
                return Json(new { success = false, message = StaticData.SOMETHING_WENT_WRONG });
            }
        }


        /// <summary>
        /// To access the search filter
        /// </summary>
        /// <param name="searchViewModel"></param>
        /// <returns></returns>
        [HttpGet]
        public IActionResult SearchTeacher(TeacherSearchViewModel searchViewModel)
        {
            try
            {
                var response = _teacherRepository.GetSearchTeachers(searchViewModel);

                var teacherViewModel = new TeacherViewModel
                {
                    Teachers = response.Data,
                    PageNumber = 1, 
                    TotalPages = 1 
                };

                if (teacherViewModel.Teachers != null)
                {
                    return PartialView("_TeachersList", teacherViewModel);
                }
                else
                {
                    errorResponse.Messages.Add(string.Format(response.Message.ToString()));
                    return new JsonResult(errorResponse);
                }
            }
            catch (Exception ex)
            {
                // Log the exception if needed
                return Json(new { success = errorResponse.Success, message = StaticData.SOMETHING_WENT_WRONG });
            }
        }

        

        /// <summary>
        /// Auto filter
        /// </summary>
        /// <param name="query"></param>
        /// <param name="criteria"></param>
        /// <returns></returns>
        public IActionResult SearchAutoComplete(string query, string criteria)
        {
            var searchResult = _teacherRepository.GetSearchTeachers(new TeacherSearchViewModel
            {
                TeacherSearchQuery = query,
                TeacherSearchCriteria = criteria
            });

            var result = searchResult.Data.Select(t => new
            {
                label = criteria switch
                {
                    "TeacherRegNo" => t.TeacherRegNo,
                    "DisplayName" => t.DisplayName,
                    _ => t.DisplayName
                },
                value = t.TeacherID
            });

            return Json(result);
        }


        /// <summary>
        /// To check if this teacher is allocated for any subject
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public JsonResult IsTeacherAllocated(long id)
        {
            var response = _teacherRepository.CheckTeacherInUse(id);

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
        /// Update or insert teacher data
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public ActionResult UpsertTeacher(long id = 0)
        {
            if (id == 0)
            {
                return PartialView("_UpsertTeacher", new TeacherBO());
            }
            else
            {
                var response = _teacherRepository.GetOneTeacher(id);
                return PartialView("_UpsertTeacher", response.Data);
            }
        }


        /// <summary>
        /// Add a new teacher or update existing teacher
        /// </summary>
        /// <param name="teacher"></param>
        /// <returns></returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult UpsertTeacher(TeacherBO teacher)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    var response = _teacherRepository.UpsertTeacher(teacher);

                    return Json(new { success = response.Success, message = string.Join(", ", response.Message) });
                }
                catch
                {
                    return Json(new { success = false, message = StaticData.SOMETHING_WENT_WRONG });
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
        /// To check the teacher registration number already exists or not
        /// </summary>
        /// <param name="regNo"></param>
        /// <param name="teacherID"></param>
        /// <returns></returns>
        [HttpGet]
        public JsonResult IsTeacherRegAvailable(string regNo, long teacherID)
        {
            var response = _teacherRepository.CheckTeacherRegNo(regNo, teacherID);

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
        /// Check if this teacher display name is already available or not
        /// </summary>
        /// <param name="teacherName"></param>
        /// <param name="teacherID"></param>
        /// <returns></returns>
        public JsonResult IsTeacherNameAvailable(string teacherName, long teacherID)
        {
            var response = _teacherRepository.CheckTeacherName(teacherName, teacherID);
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
        /// To check if an email address already exists or not
        /// </summary>
        /// <param name="teacherEmail"></param>
        /// <param name="teacherID"></param>
        /// <returns></returns>
        public JsonResult IsTeacherEmailAvailable(string teacherEmail, long teacherID)
        {
            var response = _teacherRepository.CheckTeacherEmail(teacherEmail, teacherID);
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
        /// handling toggle button
        /// </summary>
        /// <param name="id"></param>
        /// <param name="enable"></param>
        /// <returns></returns>

        [HttpPost]
        public ActionResult ToggleTeacher(int id, bool enable)
        {
            try
            {
                var response = _teacherRepository.ToggleEnableTeacher(id, enable);

                return Json(new { success = response.Success, message = response.Message.FirstOrDefault() ?? string.Empty });
            }
            catch
            {
                return Json(new { success = false, message = StaticData.SOMETHING_WENT_WRONG });
            }
        }

        public IActionResult DownloadExcel()
        {
            try
            {
                var teacherModel = new TeacherViewModel
                {
                    PageNumber = 1,
                    PageSize = int.MaxValue
                };

                var teachersResponse = _teacherRepository.GetAllTeachers(teacherModel);

                if (teachersResponse.Success)
                {
                    var teachers = teachersResponse.Data.ToList();

                    // Render partial view to string
                    string htmlString = RenderPartialViewToString("_ExcelTeacherList", new TeacherViewModel { Teachers = teachers });

                    // Create Excel workbook and worksheet
                    var workbook = new XLWorkbook();
                    var worksheet = workbook.Worksheets.Add("Teachers");

                    // Convert HTML string to DataTable
                    DataTable dataTable = ConvertHtmlToDataTable(htmlString);

                    // Add DataTable to worksheet
                    worksheet.Cell(1, 1).InsertTable(dataTable);

                    // Prepare memory stream for Excel file
                    using (var stream = new MemoryStream())
                    {
                        workbook.SaveAs(stream);
                        stream.Seek(0, SeekOrigin.Begin); // Reset stream position
                        return File(stream.ToArray(), "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "Teachers.xlsx");
                    }
                }
                else
                {
                    TempData["ErrorMessage"] = "Failed to generate Excel file. No data found or error occurred.";
                    return RedirectToAction("Index");
                }
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "An error occurred while generating the Excel file.");
                TempData["ErrorMessage"] = "An error occurred while generating the Excel file.";
                return RedirectToAction("Index");
            }
        }

        private string RenderPartialViewToString(string viewName, object model)
        {
            ViewData.Model = model;
            using (var sw = new StringWriter())
            {
                var viewResult = _viewEngine.FindView(ControllerContext, viewName, false);
                var viewContext = new ViewContext(ControllerContext, viewResult.View, ViewData, TempData, sw, new HtmlHelperOptions());
                viewResult.View.RenderAsync(viewContext).Wait();
                return sw.GetStringBuilder().ToString();
            }
        }

        private DataTable ConvertHtmlToDataTable(string html)
        {
            var dataTable = new DataTable();
            var htmlDoc = new HtmlDocument();
            htmlDoc.LoadHtml(html);

            var headers = htmlDoc.DocumentNode.SelectNodes("//thead/tr/th");
            foreach (var header in headers)
            {
                dataTable.Columns.Add(header.InnerText);
            }

            var rows = htmlDoc.DocumentNode.SelectNodes("//tbody/tr");
            foreach (var row in rows)
            {
                var dataRow = dataTable.NewRow();
                var cells = row.SelectNodes("td");
                for (int i = 0; i < cells.Count; i++)
                {
                    dataRow[i] = cells[i].InnerText;
                }
                dataTable.Rows.Add(dataRow);
            }

            return dataTable;
        }


        public IActionResult DownloadPdf(TeacherViewModel teacherViewModel)
        {
            try
            {
                // Ensure valid page number and page size
                teacherViewModel.PageNumber = teacherViewModel.PageNumber > 0 ? teacherViewModel.PageNumber : 1;
                teacherViewModel.PageSize = int.MaxValue;    

                // Retrieve data from repository
                var response = _teacherRepository.GetAllTeachers(teacherViewModel);

                // Prepare view model for PDF generation
                var teacherViewModelForPdf = new TeacherViewModel
                {
                    Teachers = response.Data.ToList(),
                    PageNumber = teacherViewModel.PageNumber,
                    PageSize = teacherViewModel.PageSize,
                    TotalPages = response.TotalPages
                };

                // Configure PDF options
                var pdfContent = new ViewAsPdf("_TeacherListPdf", teacherViewModelForPdf)
                {
                    FileName = "TeacherList.pdf",
                    PageSize = Rotativa.AspNetCore.Options.Size.A4,
                    PageOrientation = Rotativa.AspNetCore.Options.Orientation.Landscape,
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
