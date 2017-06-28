using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace comparativeSalesReporting
{
    public partial class custRepDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Satış Temsilcisi - " +  Request.QueryString["slsNAme"];
        }
    }
}