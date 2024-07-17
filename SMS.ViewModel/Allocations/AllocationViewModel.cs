using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMS.ViewModel.Allocations
{
    public class AllocationViewModel
    {
        public IEnumerable<SubjectAllocationGroupBySubjectViewModel> SubjectAllocations { get; set; }

        public IEnumerable<StudentAllocationGroupByStudentViewModel> StudentAllocationList { get; set; }

        public SubjectTeacherViewModel subjectTeacherViewModel { get; set; }

        public SubjectAllocationSearchViewModel subjectAllocationSearchViewModel { get; set; }
    }
}
