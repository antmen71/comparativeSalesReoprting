using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace comparativeSalesReporting
{
    public class customer
    {

        public string cKod { get; set; }
        public string cUnvan { get; set; }
        public decimal ciro { get; set; }

        //public int cariSatis(string cKod)
        //{
        //    SqlCommand cmd = new SqlCommand("SELECT SUM(KDV_MATRAHI) FROM LNX_STD_6_016_1_SLSINVOICES WHERE CARI_HESAP_KODU=@cKod");
        //    cmd.Parameters.AddWithValue("cKod", cKod);
            


        //}


    }
}