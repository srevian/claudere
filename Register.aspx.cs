using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;
using System.IO;

public partial class Register : System.Web.UI.Page
{
    static string activationcode;
    bool isVerified = false;
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Focus();
        verify1.Visible = true;
        //verify2.Visible = false;
        TextBox14.Visible = false;
        Label22.Visible = false;
        verify1.Enabled = true;
    }

    protected void btnreg_Click(object sender, EventArgs e)
    {
        /*
        string cs = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        {
            con.Open();
            string password = TextBox5.Text;
            string usr = TextBox4.Text;
            string str1 = EncodePasswordToBase64(usr);
            string str2 = EncodePasswordToBase64(password);
            string hashedPass = str1 + str2;
            /*byte[] salt;
            new RNGCryptoServiceProvider().GetBytes(salt = new byte[16]);

            var pbkdf2 = new Rfc2898DeriveBytes(password, salt, 10000);
            byte[] hash = pbkdf2.GetBytes(20);

            byte[] hashBytes = new byte[36];
            Array.Copy(salt, 0, hashBytes, 0, 16);
            Array.Copy(hash, 0, hashBytes, 16, 20);

            string hashedPass = Convert.ToBase64String(hashBytes);

            if (isVerified)
            {
                SqlCommand cmd = new SqlCommand("insert into userRegister values (@email, @password, @firstname, @middlename, @lastname, @gender, @contactNo, @alternateNo, @address, @landmark, @city, @state, @pin, @country, @web, @bloodGr)", con);

                cmd.Parameters.AddWithValue("email", TextBox4.Text);
                cmd.Parameters.AddWithValue("password", hashedPass);
                cmd.Parameters.AddWithValue("firstname", TextBox1.Text);
                cmd.Parameters.AddWithValue("middlename", TextBox2.Text);
                cmd.Parameters.AddWithValue("lastname", TextBox3.Text);
                cmd.Parameters.AddWithValue("gender", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("contactNo", TextBox7.Text);
                cmd.Parameters.AddWithValue("alternateNo", TextBox8.Text);
                cmd.Parameters.AddWithValue("address", TextBox9.Text);
                cmd.Parameters.AddWithValue("landmark", TextBox10.Text);
                cmd.Parameters.AddWithValue("city", DropDownList2.SelectedValue);
                cmd.Parameters.AddWithValue("state", DropDownList3.SelectedValue);
                cmd.Parameters.AddWithValue("pin", TextBox11.Text);
                cmd.Parameters.AddWithValue("country", TextBox12.Text);
                cmd.Parameters.AddWithValue("web", TextBox13.Text);
                cmd.Parameters.AddWithValue("bloodGr", DropDownList4.SelectedValue);

                string mail = TextBox4.Text;

                int r = cmd.ExecuteNonQuery();

                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
                TextBox8.Text = "";
                TextBox9.Text = "";
                TextBox10.Text = "";
                TextBox11.Text = "";
                TextBox12.Text = "";
                TextBox13.Text = "";

                DropDownList1.SelectedIndex = 0;
                DropDownList2.SelectedIndex = 0;
                DropDownList3.SelectedIndex = 0;
                DropDownList4.SelectedIndex = 0;
                TextBox1.Focus();
                Session["email"] = mail;
                con.Close();
                if (r == 1)
                    Response.Redirect("Home.aspx");
            }
        }
    */

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


    protected void verify2_Click(object sender, EventArgs e)
    {
        //string emailadd = TextBox4.Text;
        string cs2 = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        SqlConnection con2 = new SqlConnection(cs2);
        con2.Open();
        string myquery = "select * from userVerify where email='" + TextBox4.Text + "'";

        SqlCommand cmd2 = new SqlCommand();
        cmd2.CommandText = myquery;
        cmd2.Connection = con2;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd2;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            string activationcode;
            activationcode = ds.Tables[0].Rows[0]["activationcode"].ToString();
            //string acti = TextBox14.Text.ToString();
            if (activationcode == TextBox14.Text)
            {
                changestatus();
                verify2.Text = "verified";
                isVerified = true;
                sign();
            }
            else
                Label22.Visible = true;
        }
        con2.Close();
    }


    private void changestatus()
    {
        //string emailadd = TextBox4.Text;
        string cs3 = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        SqlConnection con3 = new SqlConnection(cs3);
        con3.Open();
        string updatedata = "Update userVerify set status='verified' where email='" + TextBox4.Text + "'";

        SqlCommand cmd3 = new SqlCommand();
        cmd3.CommandText = updatedata;
        cmd3.Connection = con3;
        cmd3.ExecuteNonQuery();
        con3.Close();
    }

    private void sign()
    {
        string cs = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        {
            con.Open();
            string password = TextBox5.Text;
            string usr = TextBox4.Text;
            string str1 = usr + password;
            string hashedPass = EncodePasswordToBase64(str1);

            if (isVerified)
            {
                SqlCommand cmd = new SqlCommand("insert into userRegister values (@email, @password, @firstname, @middlename, @lastname, @gender, @contactNo, @alternateNo, @address, @landmark, @city, @state, @pin, @country, @bloodGr)", con);

                cmd.Parameters.AddWithValue("email", TextBox4.Text);
                cmd.Parameters.AddWithValue("password", hashedPass);
                cmd.Parameters.AddWithValue("firstname", TextBox1.Text);
                cmd.Parameters.AddWithValue("middlename", TextBox2.Text);
                cmd.Parameters.AddWithValue("lastname", TextBox3.Text);
                cmd.Parameters.AddWithValue("gender", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("contactNo", TextBox7.Text);
                cmd.Parameters.AddWithValue("alternateNo", TextBox8.Text);
                cmd.Parameters.AddWithValue("address", TextBox9.Text);
                cmd.Parameters.AddWithValue("landmark", TextBox10.Text);
                cmd.Parameters.AddWithValue("city", DropDownList2.SelectedValue);
                cmd.Parameters.AddWithValue("state", DropDownList3.SelectedValue);
                cmd.Parameters.AddWithValue("pin", TextBox11.Text);
                cmd.Parameters.AddWithValue("country", TextBox12.Text);
                cmd.Parameters.AddWithValue("bloodGr", DropDownList4.SelectedValue);

                int r = cmd.ExecuteNonQuery();

                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
                TextBox8.Text = "";
                TextBox9.Text = "";
                TextBox10.Text = "";
                TextBox11.Text = "";
                TextBox12.Text = "";

                DropDownList1.SelectedIndex = 0;
                DropDownList2.SelectedIndex = 0;
                DropDownList3.SelectedIndex = 0;
                DropDownList4.SelectedIndex = 0;
                TextBox1.Focus();

                con.Close();
                if (r == 1)
                    Response.Redirect("Home.aspx");
            }
        }
    }


    protected void verify1_Click(object sender, EventArgs e)
    {

        if (TextBox4.Text != "")
        {
            string cs1 = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
            SqlConnection con1 = new SqlConnection(cs1);
            Random random = new Random();
            activationcode = random.Next(100001, 999999).ToString();
            con1.Open();
            string query = "insert into userVerify(email,status,activationcode) values('" + TextBox4.Text + "','unverified','" + activationcode + "')";

            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = query;
            cmd1.Connection = con1;
            cmd1.ExecuteNonQuery();
            sendcode();
            //verify1.Visible = false;
            //verify2.Visible = true;
            TextBox14.Visible = true;
            //string emailadd = TextBox4.Text;
            verify1.Enabled = false;
        }
    }
    private void sendcode()
    {
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new NetworkCredential("info.claudere@gmail.com", "@claudereteam#05");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = "Verification for Claudere";
        msg.Body = "Dear " + TextBox1.Text + ", Welcome To Claudere.\n\nYour Activation Code is " + activationcode + "\n\n\nThanks & Regards\nClaudere Team";
        string toaddress = TextBox4.Text;
        msg.To.Add(toaddress);
        string fromaddress = "Claudere <info.claudere@gmail.com>";
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
        Response.Redirect("https:\\www.instagram.com");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https:\\www.twitter.com");
    }
    protected void Imglogo_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("MainHome.aspx");
    }
}