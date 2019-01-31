using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class signup12 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        {
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Registration values (@Fullname, @Emailid, @ContactNo, @Age, @Gender, @Password)", con);

                cmd.Parameters.AddWithValue("Fullname", TextBox1.Text);
                cmd.Parameters.AddWithValue("Emailid", TextBox4.Text);
                cmd.Parameters.AddWithValue("ContactNo", TextBox9.Text);
                cmd.Parameters.AddWithValue("Age", TextBox5.Text);
                cmd.Parameters.AddWithValue("Gender", RadioButtonList1.SelectedValue);
                cmd.Parameters.AddWithValue("Password", TextBox8.Text);
               // cmd.Parameters.AddWithValue("CountryCode", DropDownList1.Text);
                int r = cmd.ExecuteNonQuery();

                TextBox1.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                RadioButtonList1.SelectedValue = "";
                TextBox8.Text = "";
               // TextBox9.Text = "+91";
                TextBox1.Focus();
                con.Close();
            if (r == 1)
                Response.Redirect("Home.aspx");
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https:\\www.facebook.com");
    }
}

