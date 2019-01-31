using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;

public partial class editpfl : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        SqlConnection sqlcon = new SqlConnection(cs);
        string uid = Session["Userid"].ToString();
        SqlCommand cmd = new SqlCommand("select * from Registration where Userid='" + uid + "'", sqlcon);
        SqlDataReader myreader = null;
        sqlcon.Open();
        myreader = cmd.ExecuteReader();
        while (myreader.Read())
        {
            Label5.Text = myreader["Fullname"].ToString();
            //Label8.Text=myreader["userid"].ToString();
            Label10.Text = myreader["Emailid"].ToString();
            Label13.Text = myreader["ContactNo"].ToString();
            Label16.Text = myreader["Age"].ToString();
            Label18.Text = myreader["Gender"].ToString(); 
            if(myreader["dp"].ToString()!= null)
            {
                Image1.ImageUrl = myreader["dp"].ToString();
            }
        }
        myreader.Close();
        sqlcon.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //static String imagelink;
        string cs = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        SqlConnection sqlcon = new SqlConnection(cs);

            sqlcon.Open();
            FileUpload1.SaveAs(Server.MapPath("~/Pic/") + Path.GetFileName(FileUpload1.FileName));
            string link = "~Pic/" + Path.GetFileName(FileUpload1.FileName);
            string query = "Insert into Registration(dp) values('" + link + "')";
            SqlCommand cmd = new SqlCommand(query, sqlcon);
            
            cmd.ExecuteNonQuery();
            
            //Label2.Text = "Profile Photo has been changed successfully";
            Image1.ImageUrl = link;
            //if (myreader["dp"].ToString() != null)
            //{
               // Image1.ImageUrl = myreader["dp"].ToString();
            //}
            sqlcon.Close();
        }

    }

