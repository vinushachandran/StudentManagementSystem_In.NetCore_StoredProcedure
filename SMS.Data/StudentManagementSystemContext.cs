using Microsoft.EntityFrameworkCore;
using SMS.Model.Student;
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
	}
}
