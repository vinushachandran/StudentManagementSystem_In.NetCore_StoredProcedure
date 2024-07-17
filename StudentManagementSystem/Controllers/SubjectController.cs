using ClosedXML.Excel;
using DocumentFormat.OpenXml.Office2010.Excel;
using HtmlAgilityPack;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.AspNetCore.Mvc.ViewEngines;
using Microsoft.AspNetCore.Mvc.ViewFeatures;
using Rotativa.AspNetCore;
using SMS.BL.NLog;
using SMS.BL.NLog.Interface;
using SMS.BL.Subject;
using SMS.BL.Subject.Interface;
using SMS.Model.Subject;
using SMS.ViewModel.ErrorResponse;
using SMS.ViewModel.RepositoyResponse;
using SMS.ViewModel.StaticData;
using SMS.ViewModel.Subject;
using System.Data;

namespace StudentManagementSystem.Controllers
{
    public class SubjectController : Controller
    {
        ISubjectRepository _subjectRepository;
        INLogRepository _logRepository;
        private readonly ICompositeViewEngine _viewEngine;
        private readonly ILogger<SubjectController> _logger;

        ErrorResponse errorResponse = new ErrorResponse();

        public SubjectController(ISubjectRepository subjectRepository, INLogRepository nLogRepository, ICompositeViewEngine viewEngine, ILogger<SubjectController> logger)
        {
            _subjectRepository = subjectRepository;
            _logRepository = nLogRepository;
            _logger = logger;
            _viewEngine = viewEngine;
        }

        public IActionResult Index()
        {
            return View();
        }

        /// <summary>
        /// Get all subject details
        /// </summary>
        /// <param name="subjectModel"></param>
        /// <returns></returns>
        public IActionResult DisplayAllSubjects(SubjectViewModel subjectModel)
        {
            try
            {
                var response = _subjectRepository.GetAllSubject(subjectModel);

                var subjectViewModel = new SubjectViewModel
                {
                    Subjects = response.Data,
                    PageSize = subjectModel.PageSize,
                    PageNumber = subjectModel.PageNumber,
                    TotalPages = response.TotalPages
                };

                if (subjectViewModel.Subjects != null)
                {
                    _logger.LogInformation(response.TotalMessages);
                    return PartialView("_SubjectList", subjectViewModel);
                }
                else
                {
                    _logger.LogWarning("No subjects found.");
                    errorResponse.Messages.Add(string.Format(response.Message.ToString()));
                    return new JsonResult(errorResponse);
                }
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error retrieving subject data");
                return Json(new { success = false, message = "Error retrieving subject data", error = ex.Message });
            }
        }

       
        /// <summary>
        /// Delete one subject by its ID
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public ActionResult DeleteSubject(int id)
        {
            try
            {
                var response = _subjectRepository.DeleteSubject(id);
                _logger.LogInformation("Subject ID: {SubjectId} deletion status: {Status}", id, response.Success);

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
        public IActionResult SearchSubject(SubjectViewModel subjectsViewModel)
        {
            try
            {
                var response = _subjectRepository.SearchSubject(subjectsViewModel.SubjectSearch);

                var subjectViewModel = new SubjectViewModel
                {
                    Subjects = response.Data,
                    PageNumber = 1,
                    TotalPages = 1
                };

                if (subjectViewModel.Subjects != null)
                {
                    return PartialView("_SubjectList", subjectViewModel);
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
            var searchResult = _subjectRepository.SearchSubject(new SubjectSearchViewModel
            {
                SubjectSearchQuery = query,
                SubjectSearchCriteria = criteria
            });

            var result = searchResult.Data.Select(s => new
            {
                label = criteria switch
                {
                    "SubjectCode" => s.SubjectCode,
                    "SubjectName" => s.Name,
                    _ => s.Name
                },
                value = s.SubjectID
            });

            return Json(result);
        }

        /// <summary>
        /// To check if this subject is allocated for any teacher
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public JsonResult IsSubjectAllocated(long id)
        {
            var errorResponse = new ErrorResponse();
            try
            {
                var response = _subjectRepository.IsSubjectAllocated(id);
                bool isAllocated = response.Success;
                _logger.LogInformation(response.TotalMessages);
                return Json(new { isAllocated = isAllocated });
            }
            catch (Exception ex)
            {
                errorResponse.Messages.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "IsSubjectAllocated"));
                _logger.LogError(ex, errorResponse.ErrorMessages);
                return Json(new { success = false, message = errorResponse.ErrorMessages });
            }
        }

        /// <summary>
        /// Update or insert subject data
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public ActionResult UpsertSubject(long id = 0)
        {
            if (id == 0)
            {
                return PartialView("_UpsertSubject", new SubjectBO());
            }
            else
            {
                var response = _subjectRepository.GetSubjectByID(id);
                return PartialView("_UpsertSubject", response.Data);
            }
        }

        /// <summary>
        /// Add a new subject or update existing subject
        /// </summary>
        /// <param name="subject"></param>
        /// <returns></returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult UpsertSubject(SubjectBO subject)
        {
            var errorResponse = new ErrorResponse();

            try
            {
                var response = new RepositoryResponse<bool>();
                if (ModelState.IsValid)
                {

                    try
                    {
                        response = _subjectRepository.UpsertSubject(subject);
                        _logger.LogInformation(response.TotalMessages);
                        return Json(new { success = response.Success, message = response.TotalMessages });
                    }
                    catch (Exception ex)
                    {
                        errorResponse.Messages.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "UpsertSubject"));
                        _logger.LogError(ex, errorResponse.ErrorMessages);
                        return Json(new { success = errorResponse.Success, message = errorResponse.ErrorMessages });
                    }
                }
                else
                {
                    response.Success = false;
                    response.Message.Add(string.Format("Fill all the fields", "UpsertSubject"));
                    _logger.LogWarning(response.TotalMessages);
                    return Json(new { success = response.Success, message = response.TotalMessages });
                }
            }
            catch (Exception ex)
            {
                errorResponse.Messages.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "UpsertSubject"));
                _logger.LogError(ex, errorResponse.ErrorMessages);
                return Json(new { success = false, message = StaticData.SOMETHING_WENT_WRONG });
            }
        }

        /// <summary>
        /// To check the subject code already exists or not
        /// </summary>
        /// <param name="code"></param>
        /// <param name="subjectID"></param>
        /// <returns></returns>
        [HttpGet]
        public IActionResult IsSubjectCodeAvailable(string subjectCode, long subjectID)
        {
            var subjectBO = new SubjectBO
            {
                SubjectCode = subjectCode,
                SubjectID = subjectID
            };

            var response = _subjectRepository.CheckSubjectCode(subjectCode,subjectID);

            return Json(new { isAvailable = response.Success });
        }


        /// <summary>
        /// Check if this subject name is already available or not
        /// </summary>
        /// <param name="subjectName"></param>
        /// <param name="subjectID"></param>
        /// <returns></returns>
        public JsonResult IsSubjectNameAvailable(SubjectBO subjectBO)
        {
            var errorResponse=new ErrorResponse();
            try
            {
                var response = _subjectRepository.CheckSubjectName(subjectBO);
                bool data = response.Success;
                _logger.LogInformation(response.TotalMessages);
                return Json(new { isAllocated = data });
            }
            
            catch(Exception ex)
            {
                errorResponse.Messages.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "CheckSubjectNameAvailable"));
                _logger.LogError(ex,errorResponse.ErrorMessages);
                return Json(new { success = false,message = errorResponse.ErrorMessages});
            }
        }

        /// <summary>
        /// handling toggle button
        /// </summary>
        /// <param name="id"></param>
        /// <param name="enable"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult ToggleSubject(int id, bool enable)
        {
            try
            {
                var response = _subjectRepository.ToggleSubject(id, enable);

                return Json(new { success = response.Success, message = response.Message.FirstOrDefault() ?? string.Empty });
            }
            catch
            {
                return Json(new { success = false, message = StaticData.SOMETHING_WENT_WRONG });
            }
        }

        /// <summary>
        /// download as excel file
        /// </summary>
        /// <returns></returns>
        public IActionResult DownloadExcel()
        {
            try
            {
                var subjectModel = new SubjectViewModel
                {
                    PageNumber = 1,
                    PageSize = int.MaxValue
                };

                var subjectsResponse = _subjectRepository.GetAllSubject(subjectModel);

                if (subjectsResponse.Success)
                {
                    var subjects = subjectsResponse.Data.ToList();

                    // Render partial view to string
                    string htmlString = RenderPartialViewToString("_ExcelSubjectList", new SubjectViewModel { Subjects = subjects });

                    // Create Excel workbook and worksheet
                    var workbook = new XLWorkbook();
                    var worksheet = workbook.Worksheets.Add("Subjects");

                    // Convert HTML string to DataTable
                    DataTable dataTable = ConvertHtmlToDataTable(htmlString);

                    // Add DataTable to worksheet
                    worksheet.Cell(1, 1).InsertTable(dataTable);

                    // Prepare memory stream for Excel file
                    using (var stream = new MemoryStream())
                    {
                        workbook.SaveAs(stream);
                        stream.Seek(0, SeekOrigin.Begin); // Reset stream position
                        return File(stream.ToArray(), "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "Subjects.xlsx");
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

        /// <summary>
        /// Render the partial view to string
        /// </summary>
        /// <param name="viewName"></param>
        /// <param name="model"></param>
        /// <returns></returns>
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

        /// <summary>
        /// Convert html data to the data table
        /// </summary>
        /// <param name="html"></param>
        /// <returns></returns>
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

        /// <summary>
        /// Doenload as pdf
        /// </summary>
        /// <param name="subjectViewModel"></param>
        /// <returns></returns>
        public IActionResult DownloadPdf(SubjectViewModel subjectViewModel)
        {
            try
            {
                // Set default page number and page size
                subjectViewModel.PageNumber = subjectViewModel.PageNumber > 0 ? subjectViewModel.PageNumber : 1;
                subjectViewModel.PageSize = subjectViewModel.PageSize > 0 ? subjectViewModel.PageSize : 10;

                // Get subjects from repository based on view model
                var response = _subjectRepository.GetAllSubject(subjectViewModel);

                // Create a view model for PDF generation
                var viewModelForPdf = new SubjectViewModel
                {
                    Subjects = response.Data.ToList(),
                    PageNumber = subjectViewModel.PageNumber,
                    PageSize = subjectViewModel.PageSize,
                    TotalPages = response.TotalPages
                };

                // Generate PDF content using Rotativa
                var pdfContent = new ViewAsPdf("_SubjectListPdf", viewModelForPdf)
                {
                    FileName = "SubjectList.pdf",
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
