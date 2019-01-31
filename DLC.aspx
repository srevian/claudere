<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DLC.aspx.cs" Inherits="DLC" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 148px;
        }
        .auto-style2 {
            height: 35px;
        }
    </style>
</head>
<body style="height: 448px">
    <form id="form1" runat="server">
    <div style="height: 742px; font-family: 'Wide Latin'; font-size: medium; font-weight: bold; font-style: italic; color: #FF0066;">
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#0066CC" Text="PortFolio Hub"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp; My Images<br />
        <br />
        <br />
&nbsp;&nbsp;
        <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Both" Height="301px" RepeatColumns="3" RepeatDirection="Horizontal" Width="359px">
            <AlternatingItemStyle BackColor="#DCDCDC" />
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2" style="background-color: #800000; text-align: center;">
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="Yellow" Text='<%# Eval("imagename") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("picture") %>' />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ImgUploadConnectionString2 %>" SelectCommand="SELECT * FROM [imglist]"></asp:SqlDataSource>
    
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Red" NavigateUrl="~/imgupload.aspx">Upload New Image</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
