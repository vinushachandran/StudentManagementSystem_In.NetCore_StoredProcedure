using SMS.Model.Subject;
using SMS.Model.Teacher;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMS.ViewModel.Allocations
{
    public class SubjectTeacherViewModel
    {
        public IEnumerable<SubjectBO> Subjects { get; set; }
        public IEnumerable<TeacherBO> Teachers { get; set; }
    }
}
