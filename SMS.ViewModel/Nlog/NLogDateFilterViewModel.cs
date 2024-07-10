using Microsoft.VisualBasic;
using SMS.Model.NLog;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMS.ViewModel.Nlog
{
    public class NLogDateFilterViewModel
    {
        public IEnumerable<NLogBO> NlogList { get; set; }

        public DateTime StartDate { get; set; } = DateTime.Today;

        public DateTime EndDate { get; set; } = DateTime.Today;

        public string? Level { get; set; }

        
    }
}
