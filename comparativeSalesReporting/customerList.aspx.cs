using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace comparativeSalesReporting
{
    public partial class customerList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["rol"].ToString()=="admin")
            {
                //Label3.Text = Session["rol"].ToString();
            }


            if (Request.QueryString["cariKod"] != null)
            {
                customerList1.DataSourceID = "SqlDataSource3";

            }

            else if (Request.QueryString["cariUnvan"] != null)
            {
                customerList1.DataSourceID = "SqlDataSource4";
            }

            else if (Request.QueryString["cariBolge"] != null)
            {
                customerList1.DataSourceID = "SqlDataSource5";
            }

            else if (Request.QueryString["cariSehir"] != null)
            {
                customerList1.DataSourceID = "SqlDataSource6";
            }

        }

        protected void SelectButton_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_DataBinding(object sender, EventArgs e)
        {

        }

        protected void GridView1_DataBound(object sender, GridViewRowEventArgs e)
        {
        }

        protected void GridView1_DataBound1(object sender, EventArgs e)
        {
            gridViewTotals.gridViewTotals1(GridView1, e);
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("customerList.aspx?cariKod=" + DropDownList3.SelectedValue);
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("customerList.aspx?cariUnvan=" + DropDownList4.SelectedValue);
            
        }

        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("customerList.aspx?cariBolge=" + DropDownList5.SelectedValue);

        }

        protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("customerList.aspx?cariSehir=" + DropDownList6.SelectedValue);

        }

        protected void DropDownList4_DataBound(object sender, EventArgs e)
        {
            List<string> items = new List<string>();
            foreach (ListItem s in DropDownList4.Items)
            {
                items.Add(s.Text);
            }
            items.Sort((x, y) => string.Compare(x, y));

            //DropDownList4.DataSource = items;
            //DropDownList4.DataBind();
        }
    }




}










