using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class imgupload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String cs = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        SqlConnection sqlcon = new SqlConnection(cs);
        {
            FileUpload1.SaveAs(Server.MapPath("~/pic/") + Path.GetFileName(FileUpload1.FileName));
            String link = "pic/" + Path.GetFileName(FileUpload1.FileName);
            String query = "Insert into imglist(imagename,category,picture) values('" + TextBox2.Text + "','" + TextBox3.Text + "','" + link + "')";
            SqlCommand cmd = new SqlCommand(query, sqlcon);
            sqlcon.Open(); ;
            cmd.ExecuteNonQuery();
            sqlcon.Close();
            Label2.Text = "Data Has Been Saved Successfully";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
    }
}