<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MainHome.aspx.cs" Inherits="MainHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Claudere</title>
    <link href="StyleMain.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
        <section class="first">
            <div class="header">
                <asp:ImageButton ID="Imglogo" runat="server" ImageUrl="~/images/Total-png-logo-download.png" />
                <asp:HyperLink ID="Hyperhome" runat="server" Font-Size="X-Large" NavigateUrl="~/MainHome.aspx" style="z-index: 1; left: 98px; top: 10px; position: absolute; right: 739px; height: 25px">Claudere</asp:HyperLink>
                <asp:ImageButton ID="fb" runat="server" ImageUrl="~/images/facebook_logos_PNG19761.png" OnClick="fb_Click" />
                <asp:ImageButton ID="twitter" runat="server" ImageUrl="~/images/twitter_PNG29.png" OnClick="twitter_Click" />
                <asp:ImageButton ID="instagram" runat="server" ImageUrl="~/images/instagram_PNG3.png" OnClick="instagram_Click" />
            </div>
        </section>
        <section class="second">
            <asp:HyperLink ID="signup" runat="server" Font-Size="Large" ForeColor="#6600FF" NavigateUrl="~/signup12.aspx">Sign Up</asp:HyperLink>
            <asp:HyperLink ID="signin" runat="server" Font-Size="Large" ForeColor="#6600FF" NavigateUrl="~/login.aspx">Sign in</asp:HyperLink>
            <div class="homecontent">

                <asp:Label ID="Label1" runat="server" CssClass="EYW" Text="Explore Your Wings in Your Sky..." Font-Size="XX-Large" ForeColor="#FF3300"></asp:Label>
                <br />
                <br />
                <asp:Button ID="btngetstarted" runat="server" Text="Get Started" Font-Size="X-Large" Height="55px" Width="193px" OnClick="btngetstarted_Click" />
            </div>
        </section>
        <section class="third">
            <div class="thirdsecdiv">
                <asp:Label ID="Label2" runat="server" Text="What Is EYW" Font-Size="X-Large"></asp:Label>
                <asp:Label ID="Label3" runat="server" Font-Size="Large">This is a storage where passionate people can show up themselves.</asp:Label>
                <asp:Label ID="Label4" runat="server" Text="Why is EYW" Font-Size="X-Large"></asp:Label>
                <asp:Label ID="Label5" runat="server" Text="Passionate pepole need a platform. Claudere gives them the opportunity to explore themselves." Font-Size="Large"></asp:Label>
                <asp:Label ID="Label6" runat="server" Text="How To Use" Font-Size="X-Large"></asp:Label>
                <asp:Label ID="Label7" runat="server" Text="User need to create their profile and upload their photos in their respective account. " Font-Size="Large"></asp:Label>
            </div>
        </section>
        <section class="fourth">
            <asp:HyperLink ID="aboutus" runat="server" style="z-index: 1; left: 850px; top: 1165px; position: absolute" NavigateUrl="~/About_us.aspx">About us</asp:HyperLink>
            <asp:HyperLink ID="contactus" runat="server" style="z-index: 1; left: 950px; top: 1165px; position: absolute" NavigateUrl="~/Contactus.aspx">Contact us</asp:HyperLink>
            <asp:HyperLink ID="services" runat="server" style="z-index: 1; left: 1050px; top: 1165px; position: absolute; right: 399px">Services</asp:HyperLink>
            <asp:HyperLink ID="terms" runat="server" style="z-index: 1; left: 1150px; top: 1165px; position: absolute">Terms & Condition</asp:HyperLink>
            <asp:Label ID="Label8" runat="server" Text="copyright Claudere 2018" Font-Size="Large"></asp:Label>
        </section>
    </form>
</body>
</html>
