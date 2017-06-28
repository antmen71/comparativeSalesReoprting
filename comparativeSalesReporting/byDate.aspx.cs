using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace comparativeSalesReporting
{
    public partial class byDate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Calendar1.SelectedDate = DateTime.Now;
            //    Calendar2.SelectedDate = DateTime.Now;
            

            string tarih1 = Calendar1.SelectedDate.ToShortDateString();
            string tarih2 = Calendar2.SelectedDate.ToShortDateString();
          
            if (tarih1 == "01.01.0001" && tarih2 != "01.01.0001")
            { tarih1 = tarih2; }
            if (tarih2 == "01.01.0001" && tarih1 != "01.01.0001")
            { tarih2 = tarih1; }
            tarih1 = tarih1.Substring(6, 4) + "-" + tarih1.Substring(3, 2) + "-" + tarih1.Substring(0, 2);
            tarih2 = tarih2.Substring(6, 4) + "-" + tarih2.Substring(3, 2) + "-" + tarih2.Substring(0, 2);

           

                          Response.Redirect("regionListbyDate.aspx?tarih1=" + tarih1 + "&tarih2=" + tarih2);
            

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            if (Calendar2.SelectedDate.ToShortDateString() != "01.01.0001")
            {
                if (Calendar1.SelectedDate > Calendar2.SelectedDate)
                {
                    Response.Write("<script>alert('İlk tarih son tarihten küçük olamaz');</script>");
                    Calendar2.SelectedDate = Calendar1.SelectedDate;
                }
            }

        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            if (Calendar1.SelectedDate.ToShortDateString() != "01.01.0001")
            {
                if (Calendar1.SelectedDate > Calendar2.SelectedDate)
                {
                    Response.Write("<script>alert('İlk tarih son tarihten küçük olamaz');</script>");
                    Calendar1.SelectedDate = Calendar2.SelectedDate;
                }
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            string[] aylar30 = new string[4];
            aylar30[0] = "04";
            aylar30[1] = "06";
            aylar30[2] = "09";
            aylar30[3] = "11";



            if (aylar30.Contains(DropDownList2.SelectedValue) == true)
            {
                DropDownList3.Items.Clear();

                for (int i = 0; i < 30; i++)
                {
                    i = i + 1;
                    if (i < 10)
                        DropDownList3.Items.Add(new ListItem("0" + i.ToString(), "0" + i.ToString()));
                    else if (i > 9)
                        DropDownList3.Items.Add(new ListItem(i.ToString(), i.ToString()));
                    i = i - 1;
                }
            }

            else if (DropDownList2.SelectedValue == "02")
            {
                DropDownList3.Items.Clear();

                if (Convert.ToInt16(DropDownList1.SelectedValue) % 4 == 0)
                {
                    for (int i = 0; i < 29; i++)
                    {
                        i = i + 1;
                        if (i < 10)
                            DropDownList3.Items.Add(new ListItem("0" + i.ToString(), "0" + i.ToString()));
                        else if (i > 9)
                            DropDownList3.Items.Add(new ListItem(i.ToString(), i.ToString()));
                        i = i - 1;
                    }
                }

                else
                {
                    for (int i = 0; i < 28; i++)
                    {
                        i = i + 1;
                        if (i < 10)
                            DropDownList3.Items.Add(new ListItem("0" + i.ToString(), "0" + i.ToString()));
                        else if (i > 9)
                            DropDownList3.Items.Add(new ListItem(i.ToString(), i.ToString()));
                        i = i - 1;
                    }
                }

            }

            else if (aylar30.Contains(DropDownList2.SelectedValue) != true && DropDownList2.SelectedValue != "02")
            {
                DropDownList3.Items.Clear();

                for (int i = 0; i < 31; i++)
                {
                    i = i + 1;
                    if (i < 10)
                        DropDownList3.Items.Add(new ListItem("0" + i.ToString(), "0" + i.ToString()));
                    else if (i > 9)
                        DropDownList3.Items.Add(new ListItem(i.ToString(), i.ToString()));
                    i = i - 1;
                }
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (DropDownList2.SelectedValue == "02")
            {
                DropDownList3.Items.Clear();


                if (Convert.ToInt16(DropDownList1.SelectedValue) % 4 == 0)
                {
                    for (int i = 0; i < 29; i++)
                    {
                        i = i + 1;
                        if (i < 10)
                            DropDownList3.Items.Add(new ListItem("0" + i.ToString(), "0" + i.ToString()));
                        else if (i > 9)
                            DropDownList3.Items.Add(new ListItem(i.ToString(), i.ToString()));
                        i = i - 1;
                    }
                }

                else
                {
                    for (int i = 0; i < 28; i++)
                    {
                        i = i + 1;
                        if (i < 10)
                            DropDownList3.Items.Add(new ListItem("0" + i.ToString(), "0" + i.ToString()));
                        else if (i > 9)
                            DropDownList3.Items.Add(new ListItem(i.ToString(), i.ToString()));
                        i = i - 1;
                    }
                }

            }
        }

        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
        {
            string[] aylar30 = new string[4];
            aylar30[0] = "04";
            aylar30[1] = "06";
            aylar30[2] = "09";
            aylar30[3] = "11";



            if (aylar30.Contains(DropDownList5.SelectedValue) == true)
            {
                DropDownList6.Items.Clear();

                for (int i = 0; i < 30; i++)
                {
                    i = i + 1;
                    if (i < 10)
                        DropDownList6.Items.Add(new ListItem("0" + i.ToString(), "0" + i.ToString()));
                    else if (i > 9)
                        DropDownList6.Items.Add(new ListItem(i.ToString(), i.ToString()));
                    i = i - 1;
                }
            }

            else if (DropDownList5.SelectedValue == "02")
            {
                DropDownList6.Items.Clear();

                if (Convert.ToInt16(DropDownList4.SelectedValue) % 4 == 0)
                {
                    for (int i = 0; i < 29; i++)
                    {
                        i = i + 1;
                        if (i < 10)
                            DropDownList6.Items.Add(new ListItem("0" + i.ToString(), "0" + i.ToString()));
                        else if (i > 9)
                            DropDownList6.Items.Add(new ListItem(i.ToString(), i.ToString()));
                        i = i - 1;
                    }
                }

                else
                {
                    for (int i = 0; i < 28; i++)
                    {
                        i = i + 1;
                        if (i < 10)
                            DropDownList6.Items.Add(new ListItem("0" + i.ToString(), "0" + i.ToString()));
                        else if (i > 9)
                            DropDownList6.Items.Add(new ListItem(i.ToString(), i.ToString()));
                        i = i - 1;
                    }
                }

            }

            else if (aylar30.Contains(DropDownList5.SelectedValue) != true && DropDownList5.SelectedValue != "02")
            {
                DropDownList6.Items.Clear();

                for (int i = 0; i < 31; i++)
                {
                    i = i + 1;
                    if (i < 10)
                        DropDownList6.Items.Add(new ListItem("0" + i.ToString(), "0" + i.ToString()));
                    else if (i > 9)
                        DropDownList6.Items.Add(new ListItem(i.ToString(), i.ToString()));
                    i = i - 1;
                }
            }
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList5.SelectedValue == "02")
            {
                DropDownList6.Items.Clear();


                if (Convert.ToInt16(DropDownList4.SelectedValue) % 4 == 0)
                {
                    for (int i = 0; i < 29; i++)
                    {
                        i = i + 1;
                        if (i < 10)
                            DropDownList6.Items.Add(new ListItem("0" + i.ToString(), "0" + i.ToString()));
                        else if (i > 9)
                            DropDownList6.Items.Add(new ListItem(i.ToString(), i.ToString()));
                        i = i - 1;
                    }
                }

                else
                {
                    for (int i = 0; i < 28; i++)
                    {
                        i = i + 1;
                        if (i < 10)
                            DropDownList6.Items.Add(new ListItem("0" + i.ToString(), "0" + i.ToString()));
                        else if (i > 9)
                            DropDownList6.Items.Add(new ListItem(i.ToString(), i.ToString()));
                        i = i - 1;
                    }
                }

            }
        }
    }
    }
    