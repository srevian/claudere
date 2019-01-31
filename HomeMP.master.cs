using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class HomeMP : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (DropDownList1.SelectedIndex.Equals(1))
        {
            Response.Redirect("editpfl.aspx");
        }
        else if (DropDownList1.SelectedIndex.Equals(2))
        {
            Response.Redirect("DLC.aspx");
        }
        else if (DropDownList1.SelectedIndex.Equals(3))
        {
            Response.Redirect("MainHome.aspx");
        }
    }
}