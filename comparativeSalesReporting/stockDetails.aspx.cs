using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace comparativeSalesReporting
{
    public partial class stockDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
       

        }

        protected void GridView1_DataBound(object sender, EventArgs e)
        {
            gridViewTotals.gridViewTotals4(GridView1, e);

        }
    }
}
//Request.QueryString["sId"] == null && 