<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editpfl.aspx.cs" Inherits="editpfl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <body style="height: 659px; width: 1000px">
    <form id="form1" runat="server">
    <div style="height: 534px; width: 900px">
    
        <asp:Panel ID="Panel1" runat="server" BackColor="#006666" style="z-index: 1; left: -17px; top: 15px; position: absolute; height: 722px; width: 1580px; margin-left: 27px">
            <asp:Panel ID="Panel2" runat="server" style="z-index: 1; left: 286px; top: 161px; position: absolute; height: 480px; width: 1226px; margin-bottom: 0px;" BackColor="White">
                 <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 241px; top: 61px; position: absolute; width: 268px;"></asp:Label>
                <asp:Label ID="Label6" runat="server" Font-Size="Large" style="z-index: 1; left: 69px; top: 60px; position: absolute; width: 149px; height: 26px" Text="NAME"></asp:Label>
                <asp:Label ID="Label7" runat="server" Font-Size="Large" style="z-index: 1; left: 67px; top: 99px; position: absolute; width: 48px" Text="USERNAME"></asp:Label>
                <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 239px; top: 100px; position: absolute; width: 272px; height: 27px; margin-bottom: 22px"></asp:Label>
                <asp:Label ID="Label9" runat="server" Font-Size="Large" style="z-index: 1; left: 65px; top: 140px; position: absolute; height: 32px; width: 149px" Text="EMAIL ADDRESS"></asp:Label>
                <asp:Label ID="Label10" runat="server" style="z-index: 1; left: 243px; top: 137px; position: absolute; width: 321px; height: 30px"></asp:Label>
                <asp:Label ID="Label12" runat="server" style="z-index: 1; left: 67px; top: 184px; position: absolute; width: 155px; height: 25px" Text="CONTACT NUMBER"></asp:Label>
                <asp:Label ID="Label13" runat="server" style="z-index: 1; left: 243px; top: 188px; position: absolute; width: 274px; height: 33px"></asp:Label>
                <asp:Label ID="Label15" runat="server" style="z-index: 1; left: 71px; top: 233px; position: absolute; width: 155px; height: 27px" Text="GENDER"></asp:Label>
                <asp:Label ID="Label16" runat="server" style="z-index: 1; left: 241px; top: 234px; position: absolute; width: 193px; height: 32px"></asp:Label>
                <asp:Label ID="Label17" runat="server" style="z-index: 1; left: 75px; top: 284px; position: absolute; width: 92px; height: 29px" Text="BIO"></asp:Label>
                <asp:Label ID="Label18" runat="server" style="z-index: 1; left: 238px; top: 287px; position: absolute; width: 927px; height: 173px"></asp:Label>
            </asp:Panel>
                <asp:Label ID="Label19" runat="server" Font-Size="XX-Large" style="z-index: 1; left: 597px; top: 85px; position: absolute; width: 581px" Text="WELCOME TO PORTFOLIO HUB"></asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server" BackColor="#FFFF66" style="z-index: 1; left: 11px; top: 410px; position: absolute; width: 220px" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="z-index: 1; left: 35px; top: 467px; position: absolute; height: 31px; width: 162px" Text="Set as profile pic" />
            <asp:Image ID="Image1" runat="server" BorderStyle="Solid" ImageUrl="~/images/CC13-PHOTO.png" style="z-index: 1; left: 24px; top: 159px; position: absolute; width: 118px; height: 123px; right: 1428px; margin-left: 2px;" />
                </asp:Panel>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
