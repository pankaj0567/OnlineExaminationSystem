    <%@ Page Title="" Language="C#" MasterPageFile="~/OnlineExaminationSystem.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7
        {
            width: 300px;
        }
        .auto-style10
        {
            height: 37px;
        }
        .auto-style11
        {
            width: 181px;
            height: 37px;
        }
        .auto-style12
        {
            width: 181px;
        }
        .auto-style13
        {
            width: 138px;
            height: 37px;
        }
        .auto-style14
        {
            width: 138px;
        }
        .auto-style15
        {
            width: 181px;
            height: 28px;
        }
        .auto-style16
        {
            width: 138px;
            height: 28px;
        }
        .auto-style17
        {
            height: 28px;
        }
    </style>
    <link href="OnlineExaminationSystem.css" rel="stylesheet" />
    <link href="OnlineExam.css" rel="stylesheet" />
    <link href="Content_area.css" rel="stylesheet" />
    <link href="Content_area-2.css" rel="stylesheet" />
    <script src="jQuery/jquery-3.1.0.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style7">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/login-10.jpg" 
                    Height="366px" Width="385px" />
            </td>
            <td>
             <div id="main" style="width:800px;margin-left:0px;height:350px;" >
           <div id="heading" style="width:800px;">
                <h2>Welcome To Login Page</h2>
           </div>
        <div id="content" style="width:800px;height:289px;">
      
                <table class="auto-style1">
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style13"></td><td class="auto-style10"></td>
                </tr>
                    <tr>
                        <td class="auto-style12">&nbsp;</td>
                        <td class="auto-style14">Enter User Name</td>
                        <td>
                            <asp:TextBox ID="usernm" runat="server" Height="21px" Width="176px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12">&nbsp;</td>
                        <td class="auto-style14">Enter Password</td>
                        <td>
                            <asp:TextBox ID="passwd" runat="server" TextMode="Password" Height="21px" 
                                Width="176px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12">&nbsp;</td>
                        <td class="auto-style14">Role</td>
                        <td>
                            <asp:DropDownList ID="DropDownType" runat="server">
                                <asp:ListItem>Student</asp:ListItem>
                                <asp:ListItem>Evaluator</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15"></td>
                        <td class="auto-style16"></td>
                        <td class="auto-style17">
                            <asp:Button ID="btnLogin" runat="server" Text="Login" 
                                OnClick="btnLogin_Click" class="black_submit_btn" 
                                style="background-color:#00AFF4;" Height="41px" Width="174px" />
                        &nbsp;&nbsp; <a href="StudentSignUp.aspx"
                                style="padding: 0px; margin: 0px; outline: none; color: rgb(0, 167, 244); text-decoration: none; font-size: 13px; line-height: 2.6; font-family: Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" 
                                title="You have not Register than Please Click here for SignUp">
                            <span style="padding: 0px; margin: 0px; outline: none;">Or Signup</span></a></td>
                    </tr>
                    <tr>
                        <td class="auto-style12">&nbsp;</td>
                        <td class="auto-style14">&nbsp;</td>
                        <td>
                            &nbsp;<span style="color: rgb(0, 167, 244); font-family: Arial, sans-serif; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: capitalize; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;"><a style="text-decoration:none;" href="ForgetPassword.aspx">Forgot Password ?</a></span></td>
                    </tr>
                    <tr>
                        <td class="auto-style12">&nbsp;</td>
                        <td class="auto-style14">&nbsp;</td>
                        <td>
                            <asp:Label ID="LoginMsg" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                       
                    </tr>
                </table>
              </div>
                        </div>       
            </td>
          
        </tr>
    </table>
</asp:Content>

