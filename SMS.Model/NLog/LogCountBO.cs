using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMS.Model.NLog
{
    public class LogCountBO
    {
        public int InfoCount { get; set; }
        public int WarnCount { get; set; }
        public int ErrorCount { get; set; }

        public int MonthNumber { get; set; }
        public string MonthName { get; set; }

        public DateTime LogDate { get; set; }

    }
}
