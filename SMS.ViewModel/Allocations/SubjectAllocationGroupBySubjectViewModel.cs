using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMS.ViewModel.Allocations
{
    public class SubjectAllocationGroupBySubjectViewModel
    {
       
        public long SubjectId { get; set; }

        public string SubjectCode { get; set; }

        public string SubjectName { get; set; }

        public List<SubjectAllocationViewModel> SubjectAllocation { get; set; }

        public SubjectAllocationGroupBySubjectViewModel () { 
            SubjectAllocation = new List<SubjectAllocationViewModel>();
        }

        
    }
}
