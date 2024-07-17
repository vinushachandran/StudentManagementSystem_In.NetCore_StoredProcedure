using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMS.ViewModel.Allocations
{
    public class StudentAllocationGroupByStudentViewModel
    {
        public bool IsEnable {  get; set; }
        public long StudentID { get; set; }
        public string StudentRegNo { get; set; }
        public string StudentName { get; set; }
       
        public List<SubjectAllocationGroupBySubjectViewModel> StudentAllocations { get; set;}


    }
}
