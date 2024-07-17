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
        RepositoryResponse<IEnumerable<NLogBO>> GetAllNLogs(NLogViewModel nLogViewModel);        

        RepositoryResponse<IEnumerable<NLogBO>> GetLogsByLevel(string level);

        RepositoryResponse<LogCountBO> GetLogLevelCounts();

        RepositoryResponse <IEnumerable<LogLevelCountsViewModel>> GetLogLevelCountByMonth();

        RepositoryResponse<IEnumerable<LogLevelCountsViewModel>> GetLogLevelCountByDay(NLogViewModel nLogViewModel);



        RepositoryResponse<LogCountBO> GetLogLevelCountsByFilter(NLogViewModel nLogViewModel);

       





    }
}
