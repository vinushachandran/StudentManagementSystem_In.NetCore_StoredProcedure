using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMS.Model.NLog
{
    public class NLogBO
    {
        [Key]
        public int Id { get; set; }

        public DateTime Date { get; set; }

        public string Level { get; set; }

        public string Logger { get; set; }

        public string Message { get; set; }

        public string? Exception {  get; set; }

       
    }
}
