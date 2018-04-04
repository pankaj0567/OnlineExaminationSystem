<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Admin_AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../OnlineExaminationSystem.css" rel="stylesheet" /> 
     <link href="../Content_area-2.css" rel="stylesheet" />
    <link href="../Content_area.css" rel="stylesheet" />
    <link href="../OnlineExam.css" rel="stylesheet" />
    <script src="../jQuery/jquery-3.1.0.js"></script>
    <script src="../effectjQuery.js"></script>
    <title>Admin Login</title>
    <style type="text/css">
        .auto-style1
        {
            height: 45px;
            width: 649px;
        }
        .auto-style2
        {
            height: 37px;
        }
        .auto-style3
        {
            width: 799px;
        }
        .auto-style4
        {
            height: 45px;
            width: 799px;
        }
        .auto-style5
        {
            height: 37px;
            width: 799px;
        }
        .auto-style6
        {
            width: 307px;
        }
        .auto-style7
        {
            height: 45px;
            width: 647px;
        }
        .auto-style8
        {
            height: 37px;
            width: 307px;
        }
        .auto-style9
        {
            height: 45px;
            width: 307px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table class="auto-style1">
        <tr>
            <td class="auto-style7">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/adminLogin.png" 
                    Height="366px" Width="385px" />
            </td>
            <td>
             <div id="main" style="width:800px;margin-left:0px;" >
           <div id="heading" style="width:800px;">
                <h2>Welcome To Admin Login Page</h2>
           </div>
        <div id="content" style="width:800px;">
      
                <table class="auto-style1">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style6"></td><td class="auto-style10"></td>
                </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style6">Enter User Name</td>
                        <td>
                            <asp:TextBox ID="usernm" runat="server" Height="21px" Width="176px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4"></td>
                        <td class="auto-style9">Enter Password</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="passwd" runat="server" TextMode="Password" Height="21px" 
                                Width="176px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5"></td>
                        <td class="auto-style8"></td>
                        <td class="auto-style2">
                            <asp:Button ID="btnLogin" runat="server" Text="Login" 
                                OnClick="btnLogin_Click" class="black_submit_btn" 
                                style="background-color:#00AFF4;" Height="41px" Width="174px" />
                        &nbsp;&nbsp; </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
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
    </div>
    </form>
</body>
</html>
