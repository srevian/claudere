using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MainHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void instagram_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https:\\www.instagram.com");
    }

    protected void twitter_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https:\\www.twitter.com");
    }

    protected void fb_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https:\\www.facebook.com");
    }

    protected void btngetstarted_Click(object sender, EventArgs e)
    {
        Response.Redirect("signup12.aspx");
    }
}