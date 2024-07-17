using Microsoft.EntityFrameworkCore;
using SMS.Model.Allocation;
using SMS.Model.NLog;
using SMS.Model.Student;
using SMS.Model.Subject;
using SMS.Model.Teacher;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMS.Data
{
	public class StudentManagementSystemContext:DbContext
	{
		public StudentManagementSystemContext(DbContextOptions<StudentManagementSystemContext> options)
		   : base(options)
		{
		}

		public DbSet<StudentBO> Students { get; set; }

		public DbSet<NLogBO> NLogs { get; set;}

		public DbSet<TeacherBO> Teachers { get; set; }

		public DbSet<SubjectBO> Subjects { get; set; }

		public DbSet<SubjectAllocationBO> SubjectAllocations { get; set; }

		public DbSet<StudentAllocationBO> StudentAllocations { get; set;}

		




	}
}
