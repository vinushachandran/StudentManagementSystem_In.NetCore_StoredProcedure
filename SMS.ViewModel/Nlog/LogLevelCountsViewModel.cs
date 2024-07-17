using SMS.Model.NLog;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMS.ViewModel.Nlog
{
    public class LogLevelCountsViewModel
    {
        public int InfoCount { get; set; }

        public int WarningCount { get; set; }

        public int ErrorCount { get; set; }

        public string Month { get; set; }

        public string Day { get; set; }



    }
}
