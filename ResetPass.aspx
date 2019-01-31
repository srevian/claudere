<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ResetPass.aspx.cs" Inherits="ResetPass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reset Pass</title>

    <link href="bins.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>      
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>      
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
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
        .second {
            margin-left: 0;
            width: 100vw;
            height: 700px;
            background-repeat: no-repeat;
            background-size: cover;
            justify-content: center;
            background-color :beige;
        }

        /*.contain{
    width: 50vw;
    height: 60vh;  
    background-size: cover;
    background-repeat: no-repeat;
    position: relative;
    top: 120px;
    left: 350px;
}
        span{
    font-size: 2vw;
    font-family: 'Times New Roman', Times, serif;
    color: white;
    display: block;
    top: 10px;
    left: 5px;
    right: 5px;
}
        .container .inner1{
    width: 50%;
    height: 100%;
    position: absolute;
    left: 0;
    text-align: center;
    background-image: url('images/5.jpg');
    background-size: cover;
    background-repeat: no-repeat;
}

.container .inner2{
    width: 50%;
    height: 100%;
    position: absolute;
    right: 0;
    background-image: url('images/11.jpg');
    text-align: center;
    background-size: cover;
    background-repeat: no-repeat;
}
input[type=text],input[type=password]{
    width: 80%;
    height: 10%;
    margin-bottom: 3%;
    border: 0;
    background-color: transparent;
    border-bottom: 1px solid #4b4040;
}

input[placeholder]{
    font-size: 1.4vw;
    padding-left: 3%;
}
#forgotpass{
    align-content: center;
}

#loginbtn {
    width: 40%;
    height: 10%;
    margin-bottom: 9vh;
    font-size: 1.3vw;
    background-color: #12a312;
    color: white;
    border: 1px solid;
    margin-left: 50px;
    margin-top: 10px;
}*/
        
        .auto-style2 {
            width: 335px;
            height: 40px;
            text-align: center;
        }
        .auto-style3 {
            width: 335px;
            height: 400px;
        }
        .auto-style4 {
            width: 818px;
            z-index: 1;
            left: 309px;
            top: 97px;
            position: absolute;
            height: 479px;
        }
        .auto-style5 {
            position: absolute;
            top: 13px;
            left: 35px;
            z-index: 1;
            width: 693px;
            height: 25px;
        }
        .auto-style7 {
            position: absolute;
            top: 153px;
            left: 359px;
            z-index: 1;
            width: 163px;
            height: 24px;
        }
        .auto-style9 {
            color: #fff;
            display: inline-block;
            font-size: 14px;
            font-weight: 400;
            line-height: 1.42857143;
            text-align: center;
            white-space: nowrap;
            vertical-align: middle;
            -ms-touch-action: manipulation;
            touch-action: manipulation;
            cursor: pointer;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            border-radius: 4px;
            z-index: 1;
            position: absolute;
            top: 329px;
            left: 284px;
            height: 42px;
            width: 104px;
            border: 1px solid transparent;
            margin-bottom: 0;
            padding: 6px 12px;
            background-color: #d0562f;
            background-image: none;
        }
        .auto-style10 {
            position: absolute;
            top: 101px;
            left: 358px;
            z-index: 1;
            width: 161px;
            height: 26px;
        }
        .auto-style11 {
            position: absolute;
            top: 108px;
            left: 214px;
            z-index: 1;
            height: 18px;
        }
        .auto-style12 {
            position: absolute;
            top: 160px;
            left: 213px;
            z-index: 1;
            }
        .auto-style13 {
            position: absolute;
            top: 208px;
            left: 213px;
            z-index: 1;
        }
        .auto-style14 {
            position: absolute;
            top: 202px;
            left: 358px;
            z-index: 1;
            width: 163px;
            height: 23px;
        }
        .auto-style15 {
            position: absolute;
            top: 261px;
            left: 212px;
            z-index: 1;
            width: 131px;
            height: 15px;
        }
        .auto-style16 {
            position: absolute;
            top: 253px;
            left: 359px;
            z-index: 1;
            height: 24px;
            width: 163px;
        }
        .auto-style17 {
            position: absolute;
            top: 260px;
            left: 546px;
            z-index: 1;
            width: 158px;
        }
        .auto-style18 {
            position: absolute;
            top: 108px;
            left: 547px;
            z-index: 1;
            width: 136px;
        }
        .auto-style19 {
            position: absolute;
            top: 159px;
            left: 548px;
            z-index: 1;
            width: 133px;
        }
        .auto-style20 {
            position: absolute;
            top: 204px;
            left: 546px;
            z-index: 1;
            width: 146px;
        }
        .auto-style21 {
            position: absolute;
            top: 109px;
            left: 546px;
            z-index: 1;
            width: 113px;
        }
        .auto-style22 {
            position: absolute;
            top: 296px;
            left: 358px;
            z-index: 1;
            width: 300px;
        }
        .auto-style23 {
            position: absolute;
            top: 401px;
            left: 185px;
            z-index: 1;
        }
        .auto-style24 {
            position: absolute;
            top: 401px;
            left: 312px;
            z-index: 1;
            width: 51px;
        }
        .auto-style25 {
            position: absolute;
            top: 400px;
            left: 431px;
            z-index: 1;
            width: 125px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <nav class="navbar navbar-fixed-top" style="background-color: cadetblue;">
    <div class="container-fluid">
        <div class="navbar-header" style="height: 80px;">
            &nbsp;</div>
        <div class="collapse navbar-collapse" id="Nav">
            <ul class="nav navbar-nav navbar-right">
                <asp:ImageButton ID="Imglogo" runat="server" ImageUrl="~/images/Total-png-logo-download.png" style="z-index: 1; left: 50px; top: 18px; position: absolute; right: 739px; height: 45px; width: 48px;"/>
                <asp:HyperLink ID="Hyperhome" runat="server" Font-Size="X-Large" NavigateUrl="~/MainHome.aspx" style="z-index: 1; left: 98px; top: 18px; position: absolute; right: 739px; height: 25px">Claudere</asp:HyperLink>
                 <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/facebook_logos_PNG19761.png" style="z-index: 1; left: 1076px; top: 12px; position: absolute; width: 48px; height: 45px" OnClick="ImageButton1_Click"/>
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/twitter_PNG29.png" style="z-index: 1; left: 1146px; top: 12px; position: absolute; height: 45px; width: 48px" OnClick="ImageButton2_Click" />
                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/instagram_PNG3.png" style="z-index: 1; left:1216px; top: 12px; position: absolute; height: 45px; width: 48px" OnClick="ImageButton3_Click" />
            </ul>
        </div>
    </div>
</nav>


        <section class="second">
            
            <table class="auto-style4" border="1">
                <tr>
                    <td class="auto-style2" style="background-color: beige;">
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text="RESET PASSWORD" Font-Bold="True" Font-Size="Large" ForeColor="#CC0000"></asp:Label>
                    </td>
                
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="passwordtxt" placeholder="Password" TextMode="Password" runat="server" CssClass="auto-style7"></asp:TextBox>
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style11" Text="Email id"></asp:Label>
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style13" Text="New Password"></asp:Label>
                        <asp:TextBox ID="TextBox1" placeholder="Password" runat="server" CssClass="auto-style14" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="usernametxt" CssClass="auto-style18" ErrorMessage="Email id is Required" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="usernametxt" CssClass="auto-style21" ErrorMessage="RegularExpressionValidator" Font-Size="Small" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Invalid Email id</asp:RegularExpressionValidator>
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style22" Font-Size="Medium" ForeColor="Red"></asp:Label>
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style23" Font-Size="Small" ForeColor="Blue" NavigateUrl="~/Register.aspx">Sign up</asp:HyperLink>
                        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="auto-style24" Font-Size="Small" ForeColor="Blue" NavigateUrl="~/login.aspx">Sign in</asp:HyperLink>
                        <asp:HyperLink ID="HyperLink3" runat="server" CssClass="auto-style25" Font-Size="Small" ForeColor="Blue" NavigateUrl="~/ForgotPass.aspx">Forgot Password</asp:HyperLink>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" CssClass="auto-style20" ErrorMessage="RequiredFieldValidator" Font-Size="Small" ForeColor="Red">Password is Required</asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="passwordtxt" CssClass="auto-style19" ErrorMessage="RequiredFieldValidator" Font-Size="Small" ForeColor="Red">Password is Requied</asp:RequiredFieldValidator>
                        <br />
                        <asp:Button ID="loginbtn" runat="server" CssClass="auto-style9" Text="Reset" Font-Size="X-Large" OnClick="loginbtn_Click"/>
                        <asp:TextBox ID="usernametxt" placeholder="Email id" runat="server" CssClass="auto-style10"></asp:TextBox>
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style12" Text="Old Password"></asp:Label>
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style15" Text="Confirm Password"></asp:Label>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox2" CssClass="auto-style17" ErrorMessage="Password Does Not Match" Font-Size="Small" ForeColor="Red" ControlToCompare="TextBox1"></asp:CompareValidator>
                        <asp:TextBox ID="TextBox2" placeholder="Password" runat="server" CssClass="auto-style16" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
            </table>   
        </section>


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
    </form>
</body>

</html>
