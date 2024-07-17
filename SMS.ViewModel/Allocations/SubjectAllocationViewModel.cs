using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMS.ViewModel.Allocations
{
    public class SubjectAllocationViewModel
    {
        public long SubjectAllocationID { get; set; }

        public long StudentAllocationID {  get; set; }

        public long TeacherID { get; set; }

        public string TeacherRegNo { get; set; }

        public string TeacherName { get; set; }
    }
}
