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
        public RepositoryResponse<IEnumerable<NLogBO>> GetAllNLogs(NLogViewModel dateFilterViewModel) 
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
        public RepositoryResponse<IEnumerable<LogLevelCountsViewModel>> GetLogLevelCountByMonth()
        {
            var response = new RepositoryResponse<IEnumerable<LogLevelCountsViewModel>>();
            try
            {
                var logSummaries = new List<LogLevelCountsViewModel>();

                using (var command = _dataContext.Database.GetDbConnection().CreateCommand())
                {
                    command.CommandText = "sp_GetLogCountsByMonth";
                    command.CommandType = CommandType.StoredProcedure;

                    _dataContext.Database.OpenConnection();

                    using (var reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            logSummaries.Add(new LogLevelCountsViewModel
                            {
                                Month = reader.GetString(0),
                                InfoCount = reader.GetInt32(1),
                                WarningCount = reader.GetInt32(2),
                                ErrorCount = reader.GetInt32(3)
                            });
                        }
                    }
                }

                response.Data = logSummaries;
                response.Message.Add(string.Format(StaticData.SUCCESS_MESSAGE, "GetLevelCountByMonth"));
                return response;
            }
            catch
            {
                response.Success = false;
                response.Message.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "Logs"));
                return response;
            }

        }

        /// <summary>
        /// Get daily log level counts
        /// </summary>
        /// <param name="nLogViewModel"></param>
        /// <returns></returns>
        public RepositoryResponse<IEnumerable<LogLevelCountsViewModel>> GetLogLevelCountByDay(NLogViewModel nLogViewModel)
        {
            var response = new RepositoryResponse<IEnumerable<LogLevelCountsViewModel>>();
            try
            {
                if (nLogViewModel.EndDate != null)
                {
                    nLogViewModel.EndDate = nLogViewModel.EndDate.AddDays(1);
                }
                else
                {
                    nLogViewModel.EndDate = DateTime.Now.AddDays(1);
                }

                var logSummaries = new List<LogLevelCountsViewModel>();

                using (var command = _dataContext.Database.GetDbConnection().CreateCommand())
                {
                    command.CommandText = "sp_GetDailyLogCounts";
                    command.CommandType = CommandType.StoredProcedure;

                    // Helper method to add parameters
                    void AddParameter(string name, object value)
                    {
                        var param = command.CreateParameter();
                        param.ParameterName = name;
                        param.Value = value ?? DBNull.Value;
                        command.Parameters.Add(param);
                    }

                    // Add parameters
                    AddParameter("@StartDate", nLogViewModel.StartDate);
                    AddParameter("@EndDate", nLogViewModel.EndDate);

                    _dataContext.Database.OpenConnection();

                    using (var reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            logSummaries.Add(new LogLevelCountsViewModel
                            {
                                Month = reader.GetString(0),
                                InfoCount = reader.GetInt32(1),
                                WarningCount = reader.GetInt32(2),
                                ErrorCount = reader.GetInt32(3)
                            });
                        }
                    }
                }

                response.Data = logSummaries;
                response.Message.Add(string.Format(StaticData.SUCCESS_MESSAGE, "GetLevelCountByDay"));
                return response;
            }
            catch
            {
                response.Success = false;
                response.Message.Add(string.Format(StaticData.SOMETHING_WENT_WRONG, "Logs"));
                return response;
            }

        }

        /// <summary>
        /// Get the log Level count by it's filter
        /// </summary>
        /// <param name="dateFilterViewModel"></param>
        /// <returns></returns>
        public RepositoryResponse<LogCountBO> GetLogLevelCountsByFilter(NLogViewModel dateFilterViewModel)
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

        

        


    }
}
