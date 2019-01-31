
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup12.aspx.cs" Inherits="signup12" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 756px;
        }
    </style>
</head>
<body style="height: 655px">
    <form id="form1" runat="server">
    <div style="height: 754px; margin-top: 0px" >
    
        <asp:Panel ID="Panel1" runat="server" BackColor="#006666" style="z-index: 1; left: 10px; top: 5px; position: absolute; height: 970px; width: 1480px">
            <asp:Panel ID="Panel2" runat="server" style="z-index: 1; left: 228px; top: 131px; position: absolute; height: 674px; width: 780px" BackColor="White">
                <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 49px; top: 116px; position: absolute; width: 104px" Text="USER NAME"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 249px; top: 111px; position: absolute; height: 22px; width: 241px"></asp:TextBox>
                <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 52px; top: 179px; position: absolute; height: 19px; right: 643px" Text="EMAIL ID"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" style="z-index: 1; left: 249px; top: 185px; position: absolute; width: 240px; height: 21px;"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="RegularExpressionValidator" ForeColor="Red" style="z-index: 1; left: 546px; top: 184px; position: absolute; width: 205px; bottom: 463px;" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*PLEASE FILL UP EMAIL ID</asp:RegularExpressionValidator>
                <asp:TextBox ID="TextBox5" runat="server" style="z-index: 1; left: 259px; top: 305px; position: absolute"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="RangeValidator" ForeColor="Red" MaximumValue="50" MinimumValue="18" style="z-index: 1; left: 553px; top: 312px; position: absolute; width: 106px; bottom: 343px;">INVALID AGE</asp:RangeValidator>
                <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 50px; top: 374px; position: absolute" Text="GENDER"></asp:Label>
                <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 54px; top: 304px; position: absolute; height: 23px;" Text="AGE"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox8" ErrorMessage="RequiredFieldValidator" ForeColor="Red" style="z-index: 1; left: 523px; top: 439px; position: absolute; height: 19px;">*PLEASE FILL UP PASSWORD</asp:RequiredFieldValidator>
                <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 42px; top: 499px; position: absolute; margin-bottom: 0px; width: 168px;" Text="COMPARE PASSWORD"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 263px; top: 497px; position: absolute; width: 173px; height: 19px; margin-top: 0px;" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox8" ControlToValidate="TextBox3" ErrorMessage="CompareValidator" ForeColor="Red" style="z-index: 1; left: 522px; top: 491px; position: absolute; bottom: 157px; width: 209px; margin-bottom: 5px;">PASSWORD DON&#39;T MATCH</asp:CompareValidator>
                <asp:Button ID="Button1" runat="server" BackColor="#99FF33" style="z-index: 1; left: 110px; top: 603px; position: absolute; width: 598px; height: 35px" Text="SIGN UP" OnClick="Button1_Click" />
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/facebook_logos_PNG19761.png" style="z-index: 1; left: 276px; top: 22px; position: absolute; width: 54px; height: 39px" OnClick="ImageButton1_Click" />
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/twitter_PNG29.png" style="z-index: 1; left: 389px; top: 25px; position: absolute; height: 37px; width: 49px" />
                <asp:Label ID="Label14" runat="server" style="z-index: 1; left: 44px; top: 445px; position: absolute; width: 86px;" Text="PASSWORD"></asp:Label>
                <asp:TextBox ID="TextBox8" runat="server" style="z-index: 1; left: 262px; top: 442px; position: absolute; height: 17px; width: 167px;" TextMode="Password"></asp:TextBox>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" style="z-index: 1; left: 260px; top: 349px; position: absolute; height: 61px; width: 94px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
                <asp:Label ID="Label17" runat="server" style="z-index: 1; left: 50px; top: 247px; position: absolute; height: 21px; width: 105px" Text="CONTACT NO"></asp:Label>
                <asp:TextBox ID="TextBox9" runat="server" style="z-index: 1; left: 254px; top: 238px; position: absolute; width: 244px; height: 18px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="*PLEASE FILL UP USER NAME" ForeColor="Red" style="z-index: 1; left: 540px; top: 108px; position: absolute; width: 228px; margin-bottom: 4px"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/instagram_PNG3.png" style="z-index: 1; left: 485px; top: 28px; position: absolute; height: 30px; width: 43px" />
            </asp:Panel>
           
            
           
             <asp:Label ID="Label8" runat="server" Font-Size="XX-Large" style="z-index: 1; left: 343px; top: 59px; position: absolute; height: 32px; width: 774px" Text="IMPRESSIVE  LOGIN  &amp;  SIGN  UP FORMS" ForeColor="White"></asp:Label>
        </asp:Panel>

           
    
    
    </div>
        
    </form>
</body>
</html>
