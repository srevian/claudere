using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;

public partial class ResetPass : System.Web.UI.Page
{
    private string query;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void loginbtn_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        string query = "select firstname,password from userRegister where email='" + usernametxt.Text + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        string pass;
        string uname;
        if (ds.Tables[0].Rows.Count > 0)
        {
            uname = ds.Tables[0].Rows[0]["firstname"].ToString();
            pass = ds.Tables[0].Rows[0]["password"].ToString();
            string st1 = usernametxt.Text + passwordtxt.Text;
            string cmp = EncodePasswordToBase64(st1);
            //string cmp = st1 + st2;
            //string cmp = EncodePasswordToBase64(mix);
            if (cmp == pass)
            {
                string newhashedpass = usernametxt.Text + TextBox1.Text;
                string newpass = EncodePasswordToBase64(newhashedpass);
                //string newpass = EncodePasswordToBase64(newhash);
                SqlCommand update = new SqlCommand("Update userRegister set password = '" + newpass + "' where email = '" + usernametxt.Text + "'", con);
                update.ExecuteNonQuery();
                con.Close();
                sendmail(uname);
                Response.Redirect("test.aspx");
            }
            else
                Label6.Text = "Old Password is Incorrect !!!";
        }
        else
            Label6.Text = "Email id Not Registered !!!";
    }

    public static string EncodePasswordToBase64(string password)
    {
        try
        {
            byte[] encData_byte = new byte[password.Length];
            encData_byte = System.Text.Encoding.UTF8.GetBytes(password);
            string encodedData = Convert.ToBase64String(encData_byte);
            return encodedData;
        }
        catch (Exception ex)
        {
            throw new Exception("Error" + ex.Message);
        }
    }

    private void sendmail(string uname)
    {
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new NetworkCredential("www.souravdebnath2015@gmail.com", "96354408759002172732");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = "Forgot Password";
        msg.Body = "Dear " + uname + ", Your Password is has been reset. Your new password is " + TextBox1.Text + "\n\n\nThanks & Regards\nBins Computer Team";
        string toaddress = usernametxt.Text;
        msg.To.Add(toaddress);
        string fromaddress = "Bins Computer <www.souravdebnath2015@gmail.com>";
        msg.From = new MailAddress(fromaddress);
        try
        {
            smtp.Send(msg);
        }
        catch
        {
            throw;
        }
    }



    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https:\\www.facebook.com");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https:\\www.twitter.com");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https:\\www.instagram.com");
    }
}