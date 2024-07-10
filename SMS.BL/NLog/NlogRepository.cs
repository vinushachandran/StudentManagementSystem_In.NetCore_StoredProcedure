using Azure;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using SMS.BL.NLog.Interface;
using SMS.Data;
using SMS.Model.NLog;
using SMS.ViewModel.Nlog;
using SMS.ViewModel.RepositoyResponse;
using SMS.ViewModel.StaticData;
using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics.Metrics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMS.BL.NLog
{
    public class NlogRepository : INLogRepository
    {
        private readonly StudentManagementSystemContext _dataContext;

        public NlogRepository(StudentManagementSystemContext dataContext)
        {
            _dataContext = dataContext;
        }

        /// <summary>
        /// Get all NLog Details
        /// </summary>
        /// <param name="dateFilterViewModel"></param>
        /// <returns></returns>
        public RepositoryResponse<IEnumerable<NLogBO>> GetAllNLogs(NLogDateFilterViewModel dateFilterViewModel) 
        {
            var response = new RepositoryResponse<IEnumerable<NLogBO>>();
            try
            {
                if (dateFilterViewModel.EndDate == null && dateFilterViewModel.StartDate != null)
                {
                    dateFilterViewModel.EndDate = dateFilterViewModel.StartDate.AddDays(1).AddSeconds(-1);
                }

                else if (dateFilterViewModel.EndDate != null)
                {
                    dateFilterViewModel.EndDate = dateFilterViewModel.EndDate.AddDays(1).AddSeconds(-1);
                }

                var logType = string.IsNullOrEmpty(dateFilterViewModel.Level)
                    ? new SqlParameter("@LogType", DBNull.Value)
                    : new SqlParameter("@LogType", dateFilterViewModel.Level);

             

                var startDate = new SqlParameter("@StartDate", SqlDbType.DateTime)
                { Value = (object)dateFilterViewModel.StartDate ?? DBNull.Value };

                
                var endDate = new SqlParameter("@EndDate", SqlDbType.DateTime)
                { Value = (object)dateFilterViewModel.EndDate ?? DBNull.Value };

                var logData = _dataContext.NLogs.FromSqlRaw("EXEC sp_GetNLogData @LogType,@StartDate,@EndDate", logType, startDate, endDate).ToList();

                if (logData.Count > 0)
                {
                    response.Data = logData;
                    response.Message.Add(string.Format(StaticData.SUCCESS_MESSAGE, "GetAllLogs"));
                }
                else
                {
                    response.Data = logData;
                    response.Success = false;
                    response.Message.Add(string.Format(StaticData.NO_DATA_FOUND, "Logs"));
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
        /// To filter the log table based on date
        /// </summary>
        /// <param name="dateFilterViewModel"></param>
        /// <returns></returns>



        public RepositoryResponse<IEnumerable<NLogBO>> GetLogsByDateRange(NLogDateFilterViewModel dateFilterViewModel)
        {
            var response = new RepositoryResponse<IEnumerable<NLogBO>>();
            try
            {
                var nLogData = _dataContext.NLogs
                    .FromSqlRaw("EXEC sp_GetLogsByDateRange @StartDate = {0}, @EndDate = {1}",
                                dateFilterViewModel.StartDate, dateFilterViewModel.EndDate)
                    .ToList();

                if (nLogData.Count > 0)
                {
                    response.Data = nLogData;
                    response.Message.Add(string.Format(StaticData.SUCCESS_MESSAGE, "Get filtered NLogs"));
                }
                else
                {
                    response.Success = false;
                    response.Message.Add(string.Format(StaticData.NO_DATA_FOUND, "any NLogs"));
                }
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
        /// Get data based of log level filter
        /// </summary>
        /// <param name="level"></param>
        /// <returns></returns>
        public RepositoryResponse<IEnumerable<NLogBO>> GetLogsByLevel(string level)
        {
            var response = new RepositoryResponse<IEnumerable<NLogBO>>();
            try
            {
                var nLogData = _dataContext.NLogs.FromSqlRaw("EXEC sp_GetNLogDataByLevel @Level", new SqlParameter("@Level", level)).ToList();

                if (nLogData.Count > 0)
                {
                    response.Data = nLogData;
                    response.Message.Add(string.Format(StaticData.SUCCESS_MESSAGE, "Get filtered NLogs by Level"));
                }
                else
                {
                    response.Success = false;
                    response.Message.Add(string.Format(StaticData.NO_DATA_FOUND, "any NLogs with specified Level"));
                }
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
        /// Get Log level coubt for drawing pie chart
        /// </summary>
        /// <returns></returns>
        public RepositoryResponse<LogCountBO> GetLogLevelCounts()
        {
            var response = new RepositoryResponse<LogCountBO>();
            try
            {
                var parameters = new SqlParameter[]
                {
            new SqlParameter("@InfoCount", SqlDbType.Int) { Direction = ParameterDirection.Output },
            new SqlParameter("@WarnCount", SqlDbType.Int) { Direction = ParameterDirection.Output },
            new SqlParameter("@ErrorCount", SqlDbType.Int) { Direction = ParameterDirection.Output }
                };

                _dataContext.Database.ExecuteSqlRaw("EXEC sp_GetLogLevelCounts @InfoCount OUT, @WarnCount OUT, @ErrorCount OUT", parameters);

                var counts = new LogCountBO
                {
                    InfoCount = (int)parameters[0].Value,
                    WarnCount = (int)parameters[1].Value,
                    ErrorCount = (int)parameters[2].Value
                };

                response.Data = counts;
                response.Message.Add(string.Format(StaticData.SUCCESS_MESSAGE, "Get log level counts"));
                return response;
            }
            catch (Exception ex)
            {
                response.Success = false;
                response.Message.Add(StaticData.SOMETHING_WENT_WRONG);
                Console.Error.WriteLine(ex.Message);
                return response;
            }
        }

        /// <summary>
        /// Get the count by month
        /// </summary>
        /// <returns></returns>
        public RepositoryResponse<LogCountBO> GetLogLevelCountByMonth()
        {
            var response = new RepositoryResponse<LogCountBO>();

            try
            {
                var parameters = new SqlParameter[]
                {
                    new SqlParameter("@MonthNo", SqlDbType.Int) { Direction = ParameterDirection.Output },
                    new SqlParameter("@MonthName", SqlDbType.NVarChar,20) { Direction = ParameterDirection.Output },
                    new SqlParameter("@InfoCount", SqlDbType.Int) { Direction = ParameterDirection.Output },
                    new SqlParameter("@WarnCount", SqlDbType.Int) { Direction = ParameterDirection.Output },
                    new SqlParameter("@ErrorCount", SqlDbType.Int) { Direction = ParameterDirection.Output }
                };

                _dataContext.Database.ExecuteSqlRaw("EXEC sp_GetLogCountsByMonth @MonthNo OUT,@MonthName OUT, @InfoCount OUT, @WarnCount OUT, @ErrorCount OUT", parameters);

                var data = new LogCountBO
                {
                    MonthNumber = (int)parameters[0].Value,
                    MonthName = (string)parameters[1].Value,
                    InfoCount = (int)parameters[2].Value,
                    WarnCount = (int)parameters[3].Value,
                    ErrorCount = (int)parameters[4].Value
                };

                response.Data = data;
                response.Message.Add(string.Format(StaticData.SUCCESS_MESSAGE, "Get log level counts"));
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
        /// GEt the log Level count by it's filter
        /// </summary>
        /// <param name="dateFilterViewModel"></param>
        /// <returns></returns>
        public RepositoryResponse<LogCountBO> GetLogLevelCountsByFilter(NLogDateFilterViewModel dateFilterViewModel)
        {
            var response = new RepositoryResponse<LogCountBO>();
            try
            {
                if (dateFilterViewModel.EndDate != null)
                {
                    dateFilterViewModel.EndDate = dateFilterViewModel.EndDate.AddDays(1);
                }

                var level = string.IsNullOrEmpty(dateFilterViewModel.Level)
                    ? new SqlParameter("@Level", DBNull.Value)
                    : new SqlParameter("@Level", dateFilterViewModel.Level);

                
                var startDate = new SqlParameter("@StartDate", SqlDbType.DateTime)
                {
                    Value = (object)dateFilterViewModel.StartDate ?? DBNull.Value
                };

                var endDate = new SqlParameter("@EndDate", SqlDbType.DateTime)
                {
                    Value = (object)dateFilterViewModel.EndDate ?? DBNull.Value
                };

                var informationCount = new SqlParameter("@InfomationCount", SqlDbType.Int)
                {
                    Direction = ParameterDirection.Output
                };

                var warningCount = new SqlParameter("@WarningCount", SqlDbType.Int)
                {
                    Direction = ParameterDirection.Output
                };

                var errorCount = new SqlParameter("@ErrorCount", SqlDbType.Int)
                {
                    Direction = ParameterDirection.Output
                };

                _dataContext.Database.ExecuteSqlRaw("EXEC sp_GetLogsCountsbyFilter @Level, @StartDate, @EndDate, @InfomationCount OUTPUT, @WarningCount OUTPUT, @ErrorCount OUTPUT",
                    level, startDate, endDate, informationCount, warningCount, errorCount);

                var logCounts = new LogCountBO
                {
                    InfoCount = (int)informationCount.Value,
                    WarnCount = (int)warningCount.Value,
                    ErrorCount = (int)errorCount.Value,
                };

                response.Data = logCounts;
                response.Message.Add(string.Format(StaticData.SUCCESS_MESSAGE, "GetLogCountByFilter"));
                return response;


            }
            catch
            {
                response.Success = false;
                response.Message.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "Logs"));
                return response;
            }
        }


        //public RepositoryResponse<List<LogCountBO>> GetDailyLogCountsByFilter(NLogDateFilterViewModel dateFilterViewModel)
        //{
        //    var response = new RepositoryResponse<List<LogCountBO>>();
        //    try
        //    {
        //        // Adjust the EndDate to include the whole day
        //        if (dateFilterViewModel.EndDate != null)
        //        {
        //            dateFilterViewModel.EndDate = dateFilterViewModel.EndDate.Value.AddDays(1).AddMicroseconds(-1);
        //        }

        //        // Define SQL parameters
        //        var level = string.IsNullOrEmpty(dateFilterViewModel.Level)
        //            ? new SqlParameter("@Level", DBNull.Value)
        //            : new SqlParameter("@Level", dateFilterViewModel.Level);

        //        var startDate = new SqlParameter("@StartDate", SqlDbType.DateTime)
        //        {
        //            Value = (object)dateFilterViewModel.StartDate ?? DBNull.Value
        //        };

        //        var endDate = new SqlParameter("@EndDate", SqlDbType.DateTime)
        //        {
        //            Value = (object)dateFilterViewModel.EndDate ?? DBNull.Value
        //        };

        //        // Execute stored procedure and retrieve results
        //        var dailyLogCounts = _dataContext.LogCount
        //            .FromSqlRaw("EXEC sp_GetDailyLogCounts @Level, @StartDate, @EndDate", level, startDate, endDate)
        //            .ToList();

        //        response.Data = dailyLogCounts;
        //        response.Message.Add(string.Format(StaticData.SUCCESS_MESSAGE, "GetDailyLogCountsByFilter"));
        //        return response;
        //    }
        //    catch (Exception ex)
        //    {
        //        response.Success = false;
        //        response.Message.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "Logs"));
        //        response.Message.Add(ex.Message); // Optionally add exception message for debugging
        //        return response;
        //    }
        //}

        //public RepositoryResponse<IEnumerable<LogLevelCountViewModel>> GetLevelCountByMonth()
        //{
        //    var response = new RepositoryResponse<IEnumerable<LogLevelCountViewModel>>();
        //    try
        //    {
        //        var logSummaries = new List<LogLevelCountViewModel>();

        //        using (var command = _dbContext.Database.GetDbConnection().CreateCommand())
        //        {
        //            command.CommandText = "sp_GetLevelsAndCountByMonth";
        //            command.CommandType = CommandType.StoredProcedure;

        //            _dbContext.Database.OpenConnection();

        //            using (var reader = command.ExecuteReader())
        //            {
        //                while (reader.Read())
        //                {
        //                    logSummaries.Add(new LogLevelCountViewModel
        //                    {
        //                        Month = reader.GetInt32(0),
        //                        InfomationCount = reader.GetInt32(1),
        //                        WarningCount = reader.GetInt32(2),
        //                        ErrorCount = reader.GetInt32(3)
        //                    });
        //                }
        //            }
        //        }

        //        response.Data = logSummaries;
        //        response.Message.Add(string.Format(StaticData.SUCCESS_MESSAGE, "GetLevelCountByMonth"));
        //        return response;
        //    }
        //    catch
        //    {
        //        response.Success = false;
        //        response.Message.Add(string.Format(StaticData.WENT_WRONG, "Logs"));
        //        return response;
        //    }
        //}


    }
}
