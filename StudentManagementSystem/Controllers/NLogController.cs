using Azure;
using Microsoft.AspNetCore.Mvc;
using Rotativa.AspNetCore;
using SMS.BL.NLog.Interface;
using SMS.BL.Student;
using SMS.BL.Student.Interface;
using SMS.Model.NLog;
using SMS.ViewModel.ErrorResponse;
using SMS.ViewModel.Nlog;
using SMS.ViewModel.RepositoyResponse;
using SMS.ViewModel.StaticData;

namespace StudentManagementSystem.Controllers
{
    public class NLogController : Controller
    {
        INLogRepository _logRepository;
        private readonly ILogger<StudentController> _logger;

        ErrorResponse errorResponse = new ErrorResponse();

        public NLogController(INLogRepository nLogRepository, ILogger<StudentController> logger)
        {
            _logRepository = nLogRepository;
            _logger = logger;
        }

        public IActionResult Index()
        {
            
            NLogViewModel model = new NLogViewModel();
            return View(model);
        }
        /// <summary>
        /// To get all data
        /// </summary>
        /// <param name="nLogModel"></param>
        /// <returns></returns>
        public IActionResult DisplayAllNLogs(NLogViewModel nLogModel)
        {

            try
            {

                var response = _logRepository.GetAllNLogs(nLogModel);

                var nLogViewModel = new NLogViewModel
                {
                    NlogList = response.Data
                };
                if (nLogViewModel.NlogList != null)
                {
                    _logger.LogInformation(response.TotalMessages);
                    return PartialView("_NLogList", nLogViewModel);
                }
                else
                {
                    _logger.LogWarning("No NLogs found.");
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
        /// Filterting data based on log level
        /// </summary>
        /// <param name="level"></param>
        /// <returns></returns>

        [HttpGet]
        public IActionResult FilterLogsByLevel(string level)
        {
            try
            {
                RepositoryResponse<IEnumerable<NLogBO>> response;
                var nlogviewModel = new NLogViewModel();

                if (string.IsNullOrEmpty(level))
                {
                    response = _logRepository.GetAllNLogs(nlogviewModel);
                }
                else
                {
                    response = _logRepository.GetLogsByLevel(level);
                }

                var nLogViewModel = new NLogViewModel
                {
                    NlogList = response.Data
                };

                if (nLogViewModel.NlogList != null && nLogViewModel.NlogList.Any())
                {
                    _logger.LogInformation(response.Message.ToString());
                    return PartialView("_NLogList", nLogViewModel);
                }
                else
                {
                    _logger.LogWarning("No logs found.");
                    var errorResponse = new
                    {
                        success = false,
                        messages = new List<string> { string.Format(response.Message.ToString()) }
                    };
                    return new JsonResult(errorResponse);
                }
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error retrieving logs");
                return Json(new { success = false, message = "Error retrieving logs", error = ex.Message });
            }
        }


        /// <summary>
        /// Get the count of log levels
        /// </summary>
        /// <param name="dateFilterViewModel"></param>
        /// <returns></returns>
        public IActionResult GetLogLevelData(NLogViewModel dateFilterViewModel)
        {
            var errorResponse = new ErrorResponse();
            try
            {
                var response = _logRepository.GetLogLevelCountsByFilter(dateFilterViewModel);

                var counts = response.Data;

                if (counts != null)
                {
                    var data = new object[]
                    {
            new object[] { "Infomation", counts.InfoCount },
            new object[] { "Warning", counts.WarnCount },
            new object[] { "Error", counts.ErrorCount }
                    };
                    _logger.LogInformation(response.TotalMessages);
                    return Json(new { success = true, infoCount = counts.InfoCount, warnCount = counts.WarnCount, errorCount = counts.ErrorCount });

                }
                else
                {
                    errorResponse.Messages.Add(string.Format(StaticData.NO_DATA_FOUND, "Logs"));
                    return Json(new { success = false, infomationCount = 0, warningCount = 0, errorCount = 0, msg = errorResponse.ErrorMessages });

                }

            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error retrieving log level counts");
                return Json(new { success = false, message = "Error retrieving log level counts", error = ex.Message });
            }
        }

        /// <summary>
        /// Get the log count by month
        /// </summary>
        /// <returns></returns>
        public IActionResult GetLogCountsByMonth()
        {
            try
            {
                var countsResponse = _logRepository.GetLogLevelCountByMonth();

                if (countsResponse.Success)
                {
                    var logCounts = countsResponse.Data;
                    return Json(new { success = true, data = logCounts });
                }
                else
                {
                    _logger.LogWarning("Error fetching log counts by month.");
                    return Json(new { success = false, message = countsResponse.Message });
                }
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error retrieving log counts by month");
                return Json(new { success = false, message = "Error retrieving log counts by month", error = ex.Message });
            }
        }



        public IActionResult DownloadPdf(NLogViewModel logViewModel)
        {
            try
            {
                var response = _logRepository.GetAllNLogs(logViewModel);

                var nLogViewModel = new NLogViewModel
                {
                    NlogList = response.Data
                };

                var pdfContent = new ViewAsPdf("_NLogPdf", nLogViewModel)
                {
                    FileName = "LogList.pdf",
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

        
        public IActionResult GetDailyLogCounts(NLogViewModel nLogViewModel)
        {
            try
            {
                var response = _logRepository.GetLogLevelCountByDay(nLogViewModel);

                return Json(new {success=true,data=response.Data});

                

            }

            catch (Exception ex)
            {
                _logger.LogError(ex, "Error retrieving log counts by month");
                return Json(new { success = false, message = "Error retrieving log counts by month", error = ex.Message });
            }

        }


    }
}
