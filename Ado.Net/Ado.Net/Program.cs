using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ado.Net
{
    class Program
    {
        static void Main(string[] args)
        {

        }

        private void ReadFromBase()
        {
            var conString = ConfigurationManager.AppSettings["ConnectionString"];

            using (var connection = new SqlConnection(conString))
            {
                //var commandText = @SELECT DISTINCT
                //                    e.Id
            }
        }
    }
}
