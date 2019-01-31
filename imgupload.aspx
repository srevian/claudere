<%@ Page Language="C#" AutoEventWireup="true" CodeFile="imgupload.aspx.cs" Inherits="imgupload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 47%;
            height: 136px;
            background-color: #FF6600;
        }
        .auto-style2 {
            width: 449px;
        }
        .auto-style3 {
            width: 94px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 434px">
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" Text="PortFolio Hub"></asp:Label>
        <br />
        <br />
        Upload New Images<br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Image Name</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server" Height="27px" Width="262px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Category</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="262px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Upload Image</td>
                <td class="auto-style2">
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="33px" Width="272px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" />
                </td>
            </tr>
        </table>
        <asp:Label ID="Label2" runat="server" ForeColor="Lime"></asp:Label>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/DLC.aspx">Show Images</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
