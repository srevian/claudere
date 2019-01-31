using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void loginbtn_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        string checkuser = "select email,password,Id from userRegister where email='" + usernametxt.Text + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = checkuser;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        string mail;
        string pass;
        string userid;
        mail = ds.Tables[0].Rows[0]["email"].ToString();
        pass = ds.Tables[0].Rows[0]["password"].ToString();
        userid = ds.Tables[0].Rows[0]["Id"].ToString();
        con.Close();
        if (mail == usernametxt.Text && pass==passwordtxt.Text)
        {
            Session["mail"] = mail;
            Session["userid"] = userid;
            Response.Redirect("Home.aspx");
        }
            else
            {
                 Response.Write("password is not correct");
            }
        con.Close();
        }
    }
