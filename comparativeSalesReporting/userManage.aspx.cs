using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace comparativeSalesReporting
{
    public partial class userManage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["OB_GK2V3ConnectionString"].ConnectionString);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = cnn;
                cmd.CommandText = "SELECT id, name,surname,domainUserName,role FROM userMap";
                cnn.Open();

                SqlDataReader rdr = cmd.ExecuteReader();


                while (rdr.Read())
                {
                    ListBox1.Items.Add(rdr["name"] + " " + rdr["surname"]);
                    ListBox1.DataValueField = rdr["id"].ToString();


                }


                rdr.Close();
                cnn.Close();
            }
            // DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            // DataRowView drv = dv[0];
            // string ad = drv.Row.ItemArray[1].ToString();
            // string soyad = drv.Row.ItemArray[2].ToString();

            // //ListBox1.Items.Clear();
            // //ListBox1.SelectedIndex = -1;
            // //ListBox1.SelectedValue = null;
            // //ListBox1.ClearSelection();



            //ListBox1.Text = ad + " " + soyad;


        }

        protected void ListBox1_DataBound(object sender, EventArgs e)
        {


        }

        string dId = "";
        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            for (int i = 0; i< ListBox1.Items.Count; i++)
            {

                if (ListBox1.Items[i].Selected ==true)
                { dId = ListBox1.SelectedItem.Value; }
            }

            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["OB_GK2V3ConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cnn;
            cmd.CommandText = "SELECT id, name,surname,domainUserName,role FROM userMap WHERE id=@id";
            cmd.Parameters.AddWithValue("id", dId);
            cnn.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                TextBox3.Text = rdr["name"].ToString();
                TextBox2.Text = rdr["surname"].ToString();
                TextBox1.Text = rdr["domainUserName"].ToString();

                string rol = rdr["role"].ToString();
                switch (rol)
                {
                    case "admin":
                        DropDownList1.SelectedIndex = 0;
                        break;
                    case "manager":
                        DropDownList1.SelectedIndex = 1;
                        break;
                    case "user":
                        DropDownList1.SelectedIndex = 2;
                        break;
                    default:
                        DropDownList1.SelectedIndex = 0;
                        break;
                }

            }
            rdr.Close();
            cnn.Close();
            //ListBox1.Items.Clear();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["OB_GK2V3ConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cnn;
            cmd.CommandText = "INSERT INTO userMap (name,surname,domainUserName,role) VALUES (@name,@surname,@domainUserName,@role)";
            cmd.Parameters.AddWithValue("name", TextBox3.Text);
            cmd.Parameters.AddWithValue("surname", TextBox2.Text);
            cmd.Parameters.AddWithValue("domainUserName", TextBox1.Text);

            cmd.Parameters.AddWithValue("role", TextBox3.Text);
            cnn.Open();
            cmd.ExecuteNonQuery();

            cnn.Close();

        }
    }
}