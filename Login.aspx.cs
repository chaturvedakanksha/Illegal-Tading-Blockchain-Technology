using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Xml.Linq;
using System.Data;
using System.Windows.Forms;

namespace ForestProductTracker
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd=new SqlCommand();
        DataSet da = new DataSet();
        SqlDataAdapter sda = new SqlDataAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["isSession"].Equals("True"))
            {
                if(Session["Page"].Equals("ForestAuth"))
                    Response.Redirect("ForestAuthDashboard.aspx");
                else
                    Response.Redirect("TraderDashboard.aspx");
            }


            string connetionString;


            connetionString = @"Data Source=LAPTOP-F67O8TSJ\MSSQLSERVER8;Initial Catalog=Forest_user_data ; integrated Security=true ";

            conn = new SqlConnection(connetionString);

            conn.Open();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedValue.Equals("ForestAuth"))
            {
                cmd.CommandText = "select * from dbo.ForestAuthCredentials where Username='" + TextBox1.Text + "'" + "and Password='" + TextBox2.Text + "';";
                cmd.Connection = conn;
                sda.SelectCommand = cmd;
                sda.Fill(da, "dbo.ForestAuthCredentials");
                if (da.Tables[0].Rows.Count > 0)
                {
                    Session["isSession"] = "True";
                    Session["Username"] = TextBox1.Text;
                    Session["Page"] = RadioButtonList1.SelectedValue;
                    for (int i = 0; i < da.Tables[0].Rows.Count; i++)
                        Session["Id"] = da.Tables[0].Rows[i]["F_Id"].ToString();
                    Response.Redirect("ForestAuthDashboard.aspx");
                    Session.RemoveAll();
                }
                else
                {
                    MessageBox.Show("You're not registered user.\nSign up !");
                    Response.Redirect("Registration.aspx");
                }
                    
            }
            else
            {
                cmd.CommandText = "select * from dbo.TraderCredentials where Username='" + TextBox1.Text + "'" + "and Password='" + TextBox2.Text + "';";
                cmd.Connection = conn;
                sda.SelectCommand = cmd;
                sda.Fill(da, "dbo.TraderCredentials");
                if (da.Tables[0].Rows.Count > 0)
                {
                    Session["isSession"] = "True";
                    Session["Username"] = TextBox1.Text;
                    Session["Page"] = RadioButtonList1.SelectedValue;
                    for (int i = 0; i < da.Tables[0].Rows.Count; i++)
                        Session["Id"] = da.Tables[0].Rows[i]["Tr_Id"].ToString();                  
                    Response.Redirect("TraderDashboard.aspx");
                    Session.RemoveAll();
                }
                else
                {
                    MessageBox.Show("You're not registered user.\nSign up !");
                    Response.Redirect("Registration.aspx");
                }
            }
              
        
        
                
        }


        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}