<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>login</title>
    <link href="login.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
        <section>
            <div class="container">
                <h3 style="text-align: center;">login</h3>
               
                 <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#00CCFF" NavigateUrl="~/Register.aspx">Sign up</asp:HyperLink>
               
                 <asp:TextBox ID="usernametxt" placeholder="  Email id" runat="server"></asp:TextBox>
                 <asp:TextBox ID="passwordtxt" placeholder="  Password" TextMode="Password" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 80px; top: 248px; position: absolute" Text="Don't have an account ?"></asp:Label>
                <br />
                <br />
                <br />
                

                <asp:ImageButton ID="ImageButton1" runat="server" CssClass="fb" ImageUrl="~/images/facebook_logos_PNG19761.png" style="border-radius: 50%"/>
                <asp:ImageButton ID="ImageButton2" runat="server" CssClass="twitter" ImageUrl="~/images/twitter_PNG29.png" style="border-radius: 50%"/>
                <asp:ImageButton ID="ImageButton3" runat="server" CssClass="google" ImageUrl="~/images/instagram_PNG3.png" style="border-radius: 50%"/>
                <br />
                <br />

            
                

                <asp:Button ID="loginbtn" runat="server" CssClass="btn" Text="login" OnClick="loginbtn_Click" />

            </div>
        </section>
    </form>
</body>
</html>
