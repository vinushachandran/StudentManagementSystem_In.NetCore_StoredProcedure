using SMS.Model.NLog;
using SMS.Model.Student;
using SMS.ViewModel.Nlog;
using SMS.ViewModel.RepositoyResponse;
using SMS.ViewModel.Student;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMS.BL.NLog.Interface
{
    public interface INLogRepository
    {
        RepositoryResponse<IEnumerable<NLogBO>> GetAllNLogs(NLogDateFilterViewModel dateFilterViewModel);

        RepositoryResponse<IEnumerable<NLogBO>> GetLogsByDateRange(NLogDateFilterViewModel dateFilterViewModel);

        RepositoryResponse<IEnumerable<NLogBO>> GetLogsByLevel(string level);

        RepositoryResponse<LogCountBO> GetLogLevelCounts();

        RepositoryResponse<LogCountBO> GetLogLevelCountByMonth();

        RepositoryResponse<LogCountBO> GetLogLevelCountsByFilter(NLogDateFilterViewModel dateFilterViewModel);

        //RepositoryResponse<List<LogCountBO>> GetDailyLogCountsByFilter(NLogDateFilterViewModel dateFilterViewModel);





    }
}
