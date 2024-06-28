using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SMS.ViewModel.RepositoyResponse
{
    public class RepositoryResponse<DT>
    {
        public DT? Data { get; set; }

        public bool Success { get; set; }=true;

        public List<string> Message { get; set; }=new List<string>();




    }
}
