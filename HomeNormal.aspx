<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomeNormal.aspx.cs" Inherits="HomeNormal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Claudere</title>

    <link href="StyleSheet.css" type="text/css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div id="header" style="height: 45px; width: 100%; background-color: #009999;">
            
            <asp:ImageButton ID="ImageButton1" runat="server" style="z-index: 1; left: 698px; top: 26px; position: absolute; height: 25px; width: 38px" />
            <asp:ImageButton ID="ImageButton3" runat="server" style="z-index: 1; top: 24px; position: absolute; height: 29px; width: 31px; left: 829px;" />
            
        </div>
        <div id="homeImg" style="height: 550px; float: left; background-image:url() url(images/e.jpeg); width: 100%;">
            <asp:HyperLink ID="HyperLink10" runat="server" style="z-index: 1; left: 699px; top: 60px; position: absolute; height: 23px; width: 99px; margin-top: 16px" Font-Bold="True" Font-Underline="True">Sign Up</asp:HyperLink>
            <asp:HyperLink ID="HyperLink11" runat="server" style="z-index: 1; left: 809px; top: 75px; position: absolute; height: 27px; width: 85px" Font-Bold="True" Font-Size="Medium" Font-Underline="True" NavigateUrl="~/login.aspx">Sign In</asp:HyperLink>

            <asp:Label ID="EYW" runat="server" Font-Bold="False" Font-Size="XX-Large" style="z-index: 1; left: 819px; top: 210px; position: absolute; height: 50px; width: 301px; text-align: center; font-weight: 700; font-style: italic; color: #663300; background-color: #FFFF00;" Text="Explore Your Wings"></asp:Label>
            <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 896px; top: 305px; position: absolute; height: 65px; width: 172px;" Text="Get Started" Font-Size="X-Large" OnClick="Button1_Click" />
            
        </div>
        
        <div id="homeContent" style="height: 455px; float: left; width: 100%; background-image: url('images/4.jpeg'); background-repeat: repeat;">

        </div>
        
        <div id="footer" style="height: 300px">
            <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 9px; top: 1302px; position: absolute; height: 58px; width: 98%; text-align: right; bottom: 38px; margin-top: 5px;" Text="copyright 2018" BackColor="Black" BorderStyle="None" Font-Bold="False" Font-Size="Large" ForeColor="#FFCC66"></asp:Label>

            

            <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 120px; top: 1130px; position: absolute; height: 22px; width: 69px" Text="Label"></asp:Label>
            <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 363px; top: 1130px; position: absolute; height: 19px; width: 75px; " Text="Label"></asp:Label>
            <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 674px; top: 1125px; position: absolute; height: 21px; width: 69px" Text="Label"></asp:Label>
            <asp:HyperLink ID="HyperLink1" runat="server" style="z-index: 1; left: 118px; top: 1194px; position: absolute">HyperLink</asp:HyperLink>
            <asp:HyperLink ID="HyperLink2" runat="server" style="z-index: 1; left: 119px; top: 1234px; position: absolute">HyperLink</asp:HyperLink>
            <asp:HyperLink ID="HyperLink3" runat="server" style="z-index: 1; left: 117px; top: 1269px; position: absolute">HyperLink</asp:HyperLink>
            <asp:HyperLink ID="HyperLink4" runat="server" style="z-index: 1; left: 351px; top: 1191px; position: absolute">HyperLink</asp:HyperLink>
            <asp:HyperLink ID="HyperLink5" runat="server" style="z-index: 1; left: 353px; top: 1229px; position: absolute">HyperLink</asp:HyperLink>
            <asp:HyperLink ID="HyperLink6" runat="server" style="z-index: 1; left: 349px; top: 1268px; position: absolute">HyperLink</asp:HyperLink>
            <asp:HyperLink ID="HyperLink7" runat="server" style="z-index: 1; left: 668px; top: 1175px; position: absolute">HyperLink</asp:HyperLink>
            <asp:HyperLink ID="HyperLink8" runat="server" style="z-index: 1; left: 670px; top: 1214px; position: absolute">HyperLink</asp:HyperLink>
            <asp:HyperLink ID="HyperLink9" runat="server" style="z-index: 1; left: 674px; top: 1264px; position: absolute">HyperLink</asp:HyperLink>

        </div>
            
    </form>
</body>
</html>
