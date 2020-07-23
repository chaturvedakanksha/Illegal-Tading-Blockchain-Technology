using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace ForestProductTracker
{
    public partial class AddTransaction : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataTable dt = new DataTable();
        int id;


        protected void Page_Load(object sender, EventArgs e)
        {
            string connetionString;


            connetionString = @"Data Source=LAPTOP-F67O8TSJ\MSSQLSERVER8;Initial Catalog=Forest_user_data ; integrated Security=true ";

            conn = new SqlConnection(connetionString);

            conn.Open();
            if (!IsPostBack)
            {
                cmd.CommandText = "select Tr_Id,Username from dbo.TraderCredentials";
                cmd.Connection = conn;
                sda = new SqlDataAdapter(cmd.CommandText, conn);
                sda.Fill(dt);
                DropDownList2.DataSource = dt;
                DropDownList2.DataBind();
                DropDownList2.DataTextField = "Username";
                DropDownList2.DataValueField = "Tr_Id";
                DropDownList2.DataBind();
            }
            
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("insert into dbo.Transactions(State,Forest,Date_of_trans,Quantity,F_Id,Tr_Id)values(@State,@Forest,@Date_of_trans,@Quantity,@F_Id,@Tr_Id)", conn);
           
            cmd.Parameters.AddWithValue("@State", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@Forest", TextBox4.Text);           
            cmd.Parameters.AddWithValue("@Date_of_trans", Calendar1.SelectedDate);
            cmd.Parameters.AddWithValue("@Quantity", TextBox6.Text);
            cmd.Parameters.AddWithValue("@F_Id", Int32.Parse((Session["Id"].ToString())));
            cmd.Parameters.AddWithValue("@Tr_Id", DropDownList2.SelectedValue);


            int res = cmd.ExecuteNonQuery();
            if (res > 0)
            {
                MessageBox.Show("Transaction added successfully");
            }
            else
                MessageBox.Show("Transaction unsuccessful");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            id = Int32.Parse(DropDownList2.SelectedValue);
        }
    }
}