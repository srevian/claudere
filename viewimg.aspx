<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewimg.aspx.cs" Inherits="viewimg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 369px">
    <form id="form1" runat="server">
    <div style="font-family: 'Colonna MT'; font-size: x-large; font-weight: bold; font-style: italic; color: #FF9966">
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" Text="PortFolio Hub" BorderColor="Yellow" ForeColor="#0099FF"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        Your Uploads<br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="imageid" HeaderText="imageid" InsertVisible="False" ReadOnly="True" SortExpression="imageid" />
                <asp:BoundField DataField="imagename" HeaderText="imagename" SortExpression="imagename" />
                <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                <asp:ImageField DataImageUrlField="picture" HeaderText="picture">
                </asp:ImageField>
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <br />
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ImgUploadConnectionString %>" SelectCommand="SELECT * FROM [imglist]"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
