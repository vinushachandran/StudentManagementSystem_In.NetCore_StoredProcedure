﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMS.Model.Subject
{
    public class SubjectBO
    {
        [Key]
        public long? SubjectID { get; set; }

        [Required(ErrorMessage = "Subject Code is required")]
        [DisplayName("Subject Code")]
        public string SubjectCode { get; set; }
        [Required(ErrorMessage = "Subject Nmae is required")]
        [DisplayName("Subject Name")]
        public string Name { get; set; }

        [DisplayName("Active Status")]
        public bool IsEnable { get; set; }
    }
}
