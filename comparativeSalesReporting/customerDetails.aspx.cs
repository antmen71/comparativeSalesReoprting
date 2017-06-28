using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace comparativeSalesReporting
{
    public partial class customerDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DetailsView2.Visible = false;
            if (Request.QueryString["cId"] == null)
                Response.Redirect("default.aspx");
                
        }

        protected void yearlySalesInfo_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView2.DataSourceID = "SqlDataSource3";
            string sbu = GridView1.SelectedRow.Cells[1].Text;
            string cKodu = Request.QueryString["cId"];

            SqlDataSource3.SelectParameters["sbuKodu"].DefaultValue = sbu;
            SqlDataSource3.SelectParameters["cariKod"].DefaultValue = cKodu;


        

        }

        protected void SqlDataSource3_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView3.DataSourceID = "SqlDataSource5";
            string sbu = GridView4.SelectedRow.Cells[1].Text;
            string cKodu = Request.QueryString["cId"];

            SqlDataSource5.SelectParameters["sbuKodu"].DefaultValue = sbu;
            SqlDataSource5.SelectParameters["cariKod"].DefaultValue = cKodu;
        }

        protected void msgKaydet_Click(object sender, EventArgs e)
        {



            DateTime DT = DateTime.Now.Date;
            LoginName userName = new LoginName();
            string domUsr = System.Web.HttpContext.Current.User.Identity.Name;

            string user = domUsr.Substring(8, domUsr.Length - 8);
            string msg = TextArea1.InnerText;
            SqlConnection sql = new SqlConnection(ConfigurationManager.ConnectionStrings["OB_GK2V3ConnectionString"].ToString());
            SqlCommand cmd = new SqlCommand("INSERT INTO crmMsg VALUES (@date,@usr,@msg,@custId)", sql);
            cmd.Parameters.AddWithValue("@date", DT);
            cmd.Parameters.AddWithValue("@usr", user);
            cmd.Parameters.AddWithValue("@msg", msg);
            cmd.Parameters.AddWithValue("@custId", Request.QueryString["cId"]);
            sql.Open();
            cmd.ExecuteNonQuery();
            sql.Close();
            Response.Redirect("customerDetails.aspx?cId=" + Request.QueryString["cId"]);

        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection sql = new SqlConnection(ConfigurationManager.ConnectionStrings["OB_GK2V3ConnectionString"].ToString());
            SqlCommand cmd = new SqlCommand("DELETE FROM crmMsg WHERE id=@msgId", sql);
            
            //foreach (RepeaterItem item in Repeater1.Items)
            //{           
                
            //    Button btn = (Button)item.FindControl("Button2");
            //    msgId = btn.CommandArgument.ToString();
            //}

            Button btn = (Button)Repeater1.Items[0].FindControl("Button2");
            
            cmd.Parameters.AddWithValue("@msgId", btn.CommandArgument.ToString());
            sql.Open();
            cmd.ExecuteNonQuery();
            sql.Close();
            Response.Redirect("customerDetails.aspx?cId=" + Request.QueryString["cId"]);

        }

        protected void GridView1_DataBound(object sender, EventArgs e)
        {
            gridViewTotals.gridViewTotals2(GridView1, e);

            gridViewTotals.gridViewTotals1(GridView1, e);

        }

        protected void GridView4_DataBound(object sender, EventArgs e)
        {
            gridViewTotals.gridViewTotals2(GridView4, e);

            gridViewTotals.gridViewTotals1(GridView4, e);


        }

        protected void GridView2_DataBound(object sender, EventArgs e)
        {
            gridViewTotals.gridViewTotals3(GridView2, e);

            //gridViewTotals.gridViewTotals1(GridView2, e);
            //hide_Gridview2.Visible = true;

            

        }

        protected void GridView3_DataBound(object sender, EventArgs e)
        {
            gridViewTotals.gridViewTotals3(GridView3, e);
            //gridViewTotals.gridViewTotals1(GridView3, e);



        }

        protected void SqlDataSource1_Selected(object sender, SqlDataSourceStatusEventArgs e)
        {
           
            if (e.AffectedRows==0)
            { DetailsView1.Visible = false;
                DetailsView2.Visible = true;
                //Response.Redirect("customerDetails.aspx?cId=" + Request.QueryString["cID"]);
            }
            else { }
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            //if (e.Arguments.TotalRowCount < 1)
            //    GridView1.DataSourceID = "SqlDataSource7";
            //SqlDataSource7.SelectParameters.Add("cId", Request.QueryString["cId"]);
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            //GridView2.Visible = false;
        }

        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            e.Row.Style.Add("border-bottom-color", "red");
        }
    }
}