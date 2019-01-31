<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link href="bins.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>      
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>      
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <style>
        .second{
    width: 100vw;
    height: 1100px;
    background-color:beige;
}

        @media(max-width: 768px){
    .navbar-brand img{
        height: 45px;
    }
}
@font-face{
    font-family:vostrey;
    src:url('fonts/vostrey.ttf');
}
body,
html {
    width: 100%;
    height: 100%;
    font-family: 'rubik',sans-serif;
}
.container-fluid {
  margin-right: 20px;
}
.navbar-brand img{
    background-color: #fff;
    padding: 5px;
    border-radius: 10%;
    -webkit-border-radius: 10%;
    -moz-border-radius: 10%;
    border: 1px #d0562f solid;    
}
.navbar-brand img:hover{
    background-color: #ccc;    
}
.name{
    font-family: vostrey;
    margin-top: 0px;
}
.logo-banner{
    background-color: #fff9f7;
    color: #d0562f;
    width: 100%;
    border-bottom: 1px #ccc solid;
    margin-bottom: 15px;
}
footer{
    padding: 10px;
    margin-top: 0px;
    border-top: 1px #ccc solid;
    background-color: #f99e80;
    opacity: 0.7;
    width: 100%;
}
.fa-linkedin:hover{
    background-color: #d0562f;
    border-radius: 50%;
    -moz-border-radius: 50%;
    -webkit-border-radius: 50%;
    color: #fff;
}
.fa-facebook:hover{
    background-color: #d0562f;
    border-radius: 50%;
    -moz-border-radius: 50%;
    -webkit-border-radius: 50%;
    color: #fff;
}
a:hover{
    color: #d0562f;
}
.nav li a{
    border: 1px #d0562f solid;
    margin: 10px 5px 10px 0px;
    color: #d0562f;
    border-radius: 5px;
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    padding: 5px;
}
.nav li a:hover{
    background-color: #d0562f;
    color: #fff;
}
.panel{
    border-color: #d0562f;
}
.panel-heading{
    background-color: #d0562f;
    border-color: #d0562f;
	color: #fff;
}
.mall-items img{
    height: 270px;
    max-height: 270px;
}
.services img{
    height: 150px;
    max-height: 150px;
}
.heading{
    color: #fff;
    background-color: #d0562f;
    padding: 20px 0px 20px 0px;
}
.theme{
    color: #d0562f;
}

.btn{
    background-color: #d0562f;
    color: #fff;
}
.icon-bar{
    border: 1px solid #d0562f;
}
.navbar-toggle{
    border: 1px solid #d0562f;
}

#phone{
    position: absolute;
    left: 500px;
    top: 1000px;
}

#btnreg{
    background-color: transparent;
}

.copy{
    margin-left: 40px;
}
.auto-style2 {
            width: 335px;
            height: 43px;
            text-align: center;
        }
        .auto-style3 {
            width: 335px;
            height: 842px;
        }
        .auto-style4 {
            width: 55%;
            z-index: 1;
            left: 342px;
            top: 109px;
            position: absolute;
            height: 941px;
        }
        .auto-style5 {
            position: absolute;
            top: 9px;
            left: 35px;
            z-index: 1;
            width: 652px;
            height: 21px;
        }
        .auto-style7 {
            position: absolute;
            top: 121px;
            left: 147px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 116px;
            left: 350px;
            z-index: 1;
            width: 190px;
            height: 22px;
        }
        .auto-style9 {
            position: absolute;
            top: 164px;
            left: 147px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 162px;
            left: 350px;
            z-index: 1;
            width: 190px;
            height: 22px;
        }
        .auto-style11 {
            position: absolute;
            top: 207px;
            left: 147px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 199px;
            left: 350px;
            z-index: 1;
            height: 22px;
            width: 190px;
            margin-top: 0;
        }
        .auto-style13 {
            position: absolute;
            top: 248px;
            left: 147px;
            z-index: 1;
            width: 73px;
        }
        .auto-style14 {
            position: absolute;
            top: 239px;
            left: 350px;
            z-index: 1;
            width: 190px;
            height: 22px;
        }
        .auto-style15 {
            position: absolute;
            top: 286px;
            left: 147px;
            z-index: 1;
            width: 76px;
            right: 301px;
        }
        .auto-style16 {
            position: absolute;
            top: 280px;
            left: 350px;
            z-index: 1;
            height: 22px;
            width: 190px;
        }
        .auto-style17 {
            position: absolute;
            top: 329px;
            left: 147px;
            z-index: 1;
        }
        .auto-style18 {
            position: absolute;
            top: 326px;
            left: 350px;
            z-index: 1;
            height: 22px;
            width: 190px;
        }
        .auto-style19 {
            position: absolute;
            top: 372px;
            left: 147px;
            z-index: 1;
            height: 20px;
        }
        .auto-style21 {
            position: absolute;
            top: 369px;
            left: 350px;
            z-index: 1;
            width: 190px;
            height: 22px;
        }
        .auto-style23 {
            position: absolute;
            top: 404px;
            left: 350px;
            z-index: 1;
            width: 190px;
            height: 22px;
        }
        .auto-style24 {
            position: absolute;
            top: 449px;
            left: 147px;
            z-index: 1;
        }
        .auto-style25 {
            position: absolute;
            top: 442px;
            left: 350px;
            z-index: 1;
            width: 190px;
            height: 22px;
        }
        .auto-style26 {
            position: absolute;
            top: 488px;
            left: 147px;
            z-index: 1;
        }
        .auto-style27 {
            position: absolute;
            top: 481px;
            left: 350px;
            z-index: 1;
            width: 190px;
            height: 25px;
        }
        .auto-style28 {
            position: absolute;
            top: 530px;
            left: 147px;
            z-index: 1;
        }
        .auto-style29 {
            position: absolute;
            top: 523px;
            left: 350px;
            z-index: 1;
            width: 190px;
            height: 22px;
        }
        .auto-style30 {
            position: absolute;
            top: 568px;
            left: 147px;
            z-index: 1;
        }
        .auto-style31 {
            position: absolute;
            top: 567px;
            left: 350px;
            z-index: 1;
            width: 190px;
            height: 22px;
        }
        .auto-style32 {
            position: absolute;
            top: 603px;
            left: 147px;
            z-index: 1;
        }
        .auto-style33 {
            position: absolute;
            top: 603px;
            left: 350px;
            z-index: 1;
            width: 190px;
            height: 22px;
        }
        .auto-style34 {
            position: absolute;
            top: 646px;
            left: 147px;
            z-index: 1;
        }
        .auto-style35 {
            position: absolute;
            top: 643px;
            left: 350px;
            z-index: 1;
            width: 190px;
            height: 22px;
        }
        .auto-style36 {
            position: absolute;
            top: 686px;
            left: 147px;
            z-index: 1;
        }
        .auto-style37 {
            position: absolute;
            top: 683px;
            left: 350px;
            z-index: 1;
            width: 190px;
            height: 22px;
        }
        .auto-style40 {
            position: absolute;
            top: 727px;
            left: 147px;
            z-index: 1;
        }
        .auto-style41 {
            position: absolute;
            top: 729px;
            left: 350px;
            z-index: 1;
            width: 190px;
            height: 22px;
        }
        .auto-style56 {
            position: absolute;
            top: 231px;
            left: 910px;
            z-index: 1;
            width: 180px;
            height: 15px;
        }
        .auto-style57 {
            position: absolute;
            top: 315px;
            left: 910px;
            z-index: 1;
            width: 180px;
            height: 19px;
        }
        .auto-style58 {
            position: absolute;
            top: 356px;
            left: 945px;
            z-index: 1;
            width: 154px;
            height: 16px;
        }
        .auto-style59 {
            position: absolute;
            top: 397px;
            left: 910px;
            z-index: 1;
            width: 182px;
            height: 21px;
        }
        .auto-style60 {
            position: absolute;
            top: 438px;
            left: 910px;
            z-index: 1;
            width: 199px;
            height: 18px;
        }
        .auto-style61 {
            position: absolute;
            top: 478px;
            left: 910px;
            z-index: 1;
            width: 168px;
        }
        .auto-style62 {
            position: absolute;
            top: 516px;
            left: 910px;
            z-index: 1;
            width: 203px;
        }
        .auto-style63 {
            position: absolute;
            top: 593px;
            left: 910px;
            z-index: 1;
            width: 165px;
        }
        .auto-style64 {
            position: absolute;
            top: 677px;
            left: 910px;
            z-index: 1;
            width: 132px;
        }
        .auto-style65 {
            position: absolute;
            top: 709px;
            left: 910px;
            z-index: 1;
            width: 140px;
        }
        .auto-style66 {
            position: absolute;
            top: 756px;
            left: 910px;
            z-index: 1;
            width: 175px;
        }
        .auto-style67 {
            position: absolute;
            top: 796px;
            left: 910px;
            z-index: 1;
            width: 151px;
        }
        .auto-style68 {
            position: absolute;
            top: 840px;
            left: 910px;
            z-index: 1;
            width: 191px;
        }
        .auto-style69 {
            position: absolute;
            top: 350px;
            left: 967px;
            z-index: 1;
            width: 50px;
            height: 20px;
        }
        .auto-style70 {
            position: absolute;
            top: 351px;
            left: 898px;
            z-index: 1;
            height: 22px;
            right: 175px;
        }
        .auto-style71 {
            position: absolute;
            top: 915px;
            left: 599px;
            z-index: 1;
            height: 56px;
            width: 165px;
        }
        .auto-style72 {
            position: absolute;
            top: 257px;
            left: 566px;
            z-index: 1;
            width: 194px;
        }
        .auto-style73 {
            position: absolute;
            top: 520px;
            left: 490px;
            z-index: 1;
            width: 95px;
            height: 23px;
        }
        .auto-style74 {
            position: absolute;
            top: 878px;
            left: 210px;
            z-index: 1;
            height: 20px;
            width: 186px;
        }
        .auto-style75 {
            position: absolute;
            top: 876px;
            left: 370px;
            z-index: 1;
            width: 60px;
            height: 20px;
        }
        .auto-style76 {
            position: absolute;
            top: 876px;
            left: 420px;
            z-index: 1;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label23" runat="server" CssClass="auto-style73" Font-Size="Large" Text="Contact No"></asp:Label>
        <nav class="navbar navbar-fixed-top" style="background-color: cadetblue;">
    <div class="container-fluid">
        <div class="navbar-header" style="height: 80px;">
            &nbsp;</div>
        <div class="collapse navbar-collapse" id="Nav">
            <ul class="nav navbar-nav navbar-right">
                <asp:ImageButton ID="Imglogo" runat="server" ImageUrl="~/images/Total-png-logo-download.png" style="z-index: 1; left: 50px; top: 18px; position: absolute; right: 739px; height: 45px; width: 48px;" OnClick="Imglogo_Click"/>
                <asp:HyperLink ID="Hyperhome" runat="server" Font-Size="X-Large" NavigateUrl="~/MainHome.aspx" style="z-index: 1; left: 98px; top: 18px; position: absolute; right: 739px; height: 25px">Claudere</asp:HyperLink>
                 <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/facebook_logos_PNG19761.png" style="z-index: 1; left: 1076px; top: 12px; position: absolute; width: 48px; height: 45px" OnClick="ImageButton1_Click"/>
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/twitter_PNG29.png" style="z-index: 1; left: 1146px; top: 12px; position: absolute; height: 45px; width: 48px" OnClick="ImageButton2_Click" />
                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/instagram_PNG3.png" style="z-index: 1; left: 1216px; top: 12px; position: absolute; height: 45px; width: 48px" OnClick="ImageButton3_Click" />
            </ul>
        </div>
    </div>
</nav>
        <section class="second">
        
        
        <table class="auto-style4" border="1">
            <tr>
                <td class="auto-style2" style="background-color: beige;">
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text="USER REGISTRATION" Font-Bold="True" Font-Size="Large" ForeColor="#CC0000"></asp:Label>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style3">

                    <asp:Label ID="Label2" runat="server" CssClass="auto-style7" Font-Size="Large" Text="First Name"></asp:Label>
                    

                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style8"></asp:TextBox>

                    <asp:Label ID="Label3" runat="server" CssClass="auto-style9" Font-Size="Large" Text="Middle Name"></asp:Label>
                    <asp:Label ID="Label4" runat="server" CssClass="auto-style11" Font-Size="Large" Text="Last Name"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style12"></asp:TextBox>
                    <asp:Label ID="Label5" runat="server" CssClass="auto-style13" Font-Size="Large" Text="Email id"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style14" TextMode="Email"></asp:TextBox>
                     <asp:Label ID="Label22" runat="server" CssClass="auto-style72" Font-Size="Small" ForeColor="Red" Text="Invalid Code or Email Already Exist" Visible="False"></asp:Label>
                    <asp:Label ID="Label6" runat="server" CssClass="auto-style15" Text="Password" Font-Size="Large" ></asp:Label>

                    <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style16" TextMode="Password"></asp:TextBox>
                    <asp:Label ID="Label7" runat="server" CssClass="auto-style17" Font-Size="Large" Text="Confirm Password"></asp:Label>
                    <asp:Label ID="Label8" runat="server" CssClass="auto-style19" Font-Size="Large" Text="Gender"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style10"></asp:TextBox>
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style18" TextMode="Password"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style21" Font-Size="Small">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style31">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Agartala</asp:ListItem>
                        <asp:ListItem>Aizawl</asp:ListItem>
                        <asp:ListItem>Bengaluru</asp:ListItem>
                        <asp:ListItem>Bhopal</asp:ListItem>
                        <asp:ListItem>Bhubaneswar</asp:ListItem>
                        <asp:ListItem>Chandigarh</asp:ListItem>
                        <asp:ListItem>Chennai</asp:ListItem>
                        <asp:ListItem>Daman</asp:ListItem>
                        <asp:ListItem>Dehradun</asp:ListItem>
                        <asp:ListItem>Delhi</asp:ListItem>
                        <asp:ListItem>Dispur</asp:ListItem>
                        <asp:ListItem>Gandhinagar</asp:ListItem>
                        <asp:ListItem>Gangtok</asp:ListItem>
                        <asp:ListItem>Hyderabad</asp:ListItem>
                        <asp:ListItem>Imphal</asp:ListItem>
                        <asp:ListItem>Itanagar</asp:ListItem>
                        <asp:ListItem>Jaipur</asp:ListItem>
                        <asp:ListItem>Kavaratti</asp:ListItem>
                        <asp:ListItem>Kohima</asp:ListItem>
                        <asp:ListItem>Kolkata</asp:ListItem>
                        <asp:ListItem>Lucknow</asp:ListItem>
                        <asp:ListItem>Mumbai</asp:ListItem>
                        <asp:ListItem>Panaji</asp:ListItem>
                        <asp:ListItem>Patna</asp:ListItem>
                        <asp:ListItem>Pondicherry</asp:ListItem>
                        <asp:ListItem>Port Blair</asp:ListItem>
                        <asp:ListItem>Raipur</asp:ListItem>
                        <asp:ListItem>Shillong</asp:ListItem>
                        <asp:ListItem>Shimla</asp:ListItem>
                        <asp:ListItem>Silvassa</asp:ListItem>
                        <asp:ListItem>Srinagar/Jammu</asp:ListItem>
                        <asp:ListItem>Thiruvanthapuram</asp:ListItem>            
                    </asp:DropDownList>
                    

                    <asp:TextBox ID="TextBox7" runat="server" CssClass="auto-style23"></asp:TextBox>
                    <asp:Label ID="Label11" runat="server" CssClass="auto-style26" Font-Size="Large" Text="Address"></asp:Label>
                    <asp:Label ID="Label10" runat="server" CssClass="auto-style24" Font-Size="Large" Text="Alternate No"></asp:Label>
                    <asp:TextBox ID="TextBox8" runat="server" CssClass="auto-style25"></asp:TextBox>
                    <asp:TextBox ID="TextBox9" runat="server" CssClass="auto-style27" TextMode="MultiLine"></asp:TextBox>
                    <asp:Label ID="Label12" runat="server" CssClass="auto-style28" Font-Size="Large" Text="Landmark"></asp:Label>
                    <asp:TextBox ID="TextBox10" runat="server" CssClass="auto-style29"></asp:TextBox>
                    <asp:Label ID="Label13" runat="server" CssClass="auto-style30" Font-Size="Large" Text="City"></asp:Label>
                    <asp:Label ID="Label14" runat="server" CssClass="auto-style32" Font-Size="Large" Text="State"></asp:Label>
                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="auto-style33">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Andaman and Nicobar Islands</asp:ListItem>
                        <asp:ListItem>Andhra Pradesh</asp:ListItem>
                        <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                        <asp:ListItem>Assam</asp:ListItem>
                        <asp:ListItem>Bihar</asp:ListItem>
                        <asp:ListItem>Chandigarh</asp:ListItem>
                        <asp:ListItem>Chhattisgarh</asp:ListItem>
                        <asp:ListItem>Dadar and Nagar Haveli</asp:ListItem>
                        <asp:ListItem>Daman and Diu</asp:ListItem>
                        <asp:ListItem>Delhi</asp:ListItem>
                        <asp:ListItem>Goa</asp:ListItem>
                        <asp:ListItem>Gujarat</asp:ListItem>
                        <asp:ListItem>Haryana</asp:ListItem>
                        <asp:ListItem>Himachal Pradesh</asp:ListItem>
                        <asp:ListItem>Jammu and Kashmir</asp:ListItem>
                        <asp:ListItem>Jharkhand</asp:ListItem>
                        <asp:ListItem>Karnataka</asp:ListItem>
                        <asp:ListItem>Kerala</asp:ListItem>
                        <asp:ListItem>Lakshadweep</asp:ListItem>
                        <asp:ListItem>Madhya Pradesh</asp:ListItem>
                        <asp:ListItem>Maharashtra</asp:ListItem>
                        <asp:ListItem>Manipur</asp:ListItem>
                        <asp:ListItem>Meghalaya</asp:ListItem>
                        <asp:ListItem>Mizoram</asp:ListItem>
                        <asp:ListItem>Nagaland</asp:ListItem>
                        <asp:ListItem>Odisha</asp:ListItem>
                        <asp:ListItem>Puducherry(Pondicherry)</asp:ListItem>
                        <asp:ListItem>Punjab</asp:ListItem>
                        <asp:ListItem>Rajasthan</asp:ListItem>
                        <asp:ListItem>Sikkim</asp:ListItem>
                        <asp:ListItem>Tamil Nadu</asp:ListItem>
                        <asp:ListItem>Telangana</asp:ListItem>
                        <asp:ListItem>Tripura</asp:ListItem>
                        <asp:ListItem>Uttar Pradesh</asp:ListItem>
                        <asp:ListItem>Uttarakhand</asp:ListItem>
                        <asp:ListItem>West Bengal</asp:ListItem>
                       
                    </asp:DropDownList>
                    <asp:Label ID="Label15" runat="server" CssClass="auto-style34" Font-Size="Large" Text="Pincode"></asp:Label>
                    <asp:TextBox ID="TextBox11" runat="server" CssClass="auto-style35"></asp:TextBox>
                    <asp:Label ID="Label16" runat="server" CssClass="auto-style36" Font-Size="Large" Text="Country"></asp:Label>
                    <asp:TextBox ID="TextBox12" runat="server" CssClass="auto-style37"></asp:TextBox>
                    <asp:Label ID="Label18" runat="server" CssClass="auto-style40" Font-Size="Large" Text="Blood Group"></asp:Label>
                    <asp:DropDownList ID="DropDownList4" runat="server" CssClass="auto-style41">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>A+</asp:ListItem>
                        <asp:ListItem>A-</asp:ListItem>
                        <asp:ListItem>B+</asp:ListItem>
                        <asp:ListItem>B-</asp:ListItem>
                        <asp:ListItem>AB+</asp:ListItem>
                        <asp:ListItem>AB-</asp:ListItem>
                        <asp:ListItem>O+</asp:ListItem>
                        <asp:ListItem>O-</asp:ListItem>
                    </asp:DropDownList>

                    
                    <asp:Label ID="Label24" runat="server" CssClass="auto-style74" Font-Size="Small" Text="Already have an Account ?"></asp:Label>
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style75" NavigateUrl="~/login.aspx">Sign in</asp:HyperLink>
                    <asp:Label ID="Label25" runat="server" CssClass="auto-style76" Text="here"></asp:Label>

                    
                </td>
                
            </tr>
            
        </table>
        
        
    </section>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" CssClass="auto-style61" ErrorMessage="Gender is Required" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox7" CssClass="auto-style62" ErrorMessage="Contact No is Required" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox9" CssClass="auto-style63" ErrorMessage="Address is Required" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownList2" CssClass="auto-style64" ErrorMessage="City is Required" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="DropDownList3" CssClass="auto-style65" ErrorMessage="State is Required" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox11" CssClass="auto-style66" ErrorMessage="Pincode is Required" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox12" CssClass="auto-style67" ErrorMessage="Country is Required" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="DropDownList4" CssClass="auto-style68" ErrorMessage="Blood Group is Required" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox6" CssClass="auto-style60" ErrorMessage="Password Doesn't Match" ForeColor="Red" Font-Size="Small"></asp:CompareValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" CssClass="auto-style59" ErrorMessage="Password is Required" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style56" ErrorMessage="First Name is Required" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" CssClass="auto-style57" ErrorMessage="Last Name is Required" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" CssClass="auto-style58" ErrorMessage="Email id is Required" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
        

        
<footer style="font-size: 12px; font-family: sans-serif; font-weight: 600; background-color: burlywood;">
    <div class="container-fluid"> 
		<div class="col-md-4">
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&copy; <?php echo date('Y');?> Claudere. All Rights Reserved.
        </div>
        <div class="col-md-2">
            <a href="Services.aspx">Terms and Conditions</a>
        </div> 
        <div class="col-md-3">
            Contact Us: <a href="mailto:info.claudere@gmail.com">info.claudere@gmail.com</a>
        </div> 
        <div class="col-md-3">
             <a href="About_us.aspx">About us</a>
        </div>
    </div>
</footer>
                    <asp:TextBox ID="TextBox14" runat="server" CssClass="auto-style69" Visible="False"></asp:TextBox>
                    <asp:Button ID="verify1" runat="server" CssClass="auto-style70" Text="send" OnClick="verify1_Click"/>
                    <asp:Button ID="verify2" runat="server" CssClass="auto-style71" Text="verify &amp; Sign Up" Font-Size="Large" OnClick="verify2_Click"/>
    </form>
</body>
</html>
