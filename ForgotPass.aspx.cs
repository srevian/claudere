using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net;
using System.Net.Mail;

public partial class ForgotPass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Label3.Visible = false;
        Label3.Text = "";
    }

    protected void loginbtn_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        string check = "select firstname, password from userRegister where email='" + usernametxt.Text + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = check;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        string hashedpass;
        string uname;
        if (ds.Tables[0].Rows.Count > 0)
        {
            hashedpass = ds.Tables[0].Rows[0]["password"].ToString();
            uname = ds.Tables[0].Rows[0]["firstname"].ToString();
            string pass = DecodeFrom64(hashedpass);
            int len1 = pass.Length;
            int len2 = usernametxt.Text.Length;
            string password = pass.Substring(len2, len1 - len2);
            //string password = DecodeFrom64(hpass);
            sendpassword(uname, password);
            Label3.Text = "Your passworrd has been sent into mail";
            Label3.ForeColor = System.Drawing.Color.Green;
        }
        else
        {
            Label3.Text = "Email id is not registered !!";
            Label3.ForeColor = System.Drawing.Color.Red;
        }
    }

    public string DecodeFrom64(string encodeData)
    {
        System.Text.UTF8Encoding encoder = new System.Text.UTF8Encoding();
        System.Text.Decoder utf8Decode = encoder.GetDecoder();
        byte[] todecode_byte = Convert.FromBase64String(encodeData);
        int charCount = utf8Decode.GetCharCount(todecode_byte, 0, todecode_byte.Length);
        char[] decoded_char = new char[charCount];
        utf8Decode.GetChars(todecode_byte, 0, todecode_byte.Length, decoded_char, 0);
        string result = new string(decoded_char);
        return result;
    }


    private void sendpassword(string uname, string password)
    {
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new NetworkCredential("www.souravdebnath2015@gmail.com", "96354408759002172732");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = "Forgot Password";
        msg.Body = "Dear " + uname + ", Your Password is " + password + "\n\n\nThanks & Regards\nBins Computer Team";
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