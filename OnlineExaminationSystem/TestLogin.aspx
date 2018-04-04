<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineExaminationSystem.master" AutoEventWireup="true" CodeFile="TestLogin.aspx.cs" Inherits="TestLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="OnlineExaminationSystem.css" rel="stylesheet" />
    <link href="OnlineExam.css" rel="stylesheet" />
    <link href="Content_area.css" rel="stylesheet" />
    <link href="Content_area-2.css" rel="stylesheet" />
    <script src="jQuery/jquery-3.1.0.js"></script>
     <style type="text/css">
         .auto-style7
         {
             width: 425px;
         }
         .auto-style10
         {
             height: 21px;
         }
         .auto-style12
         {
             height: 21px;
             width: 114px;
         }
         .auto-style13
         {
             width: 114px;
         }
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="main"  >
           <div id="heading" >
                <h2>Welcome To Exam </h2>
           </div>
        <div id="content" >
    <table class="auto-style1">
        <tr>
            <td class="auto-style7">
                <asp:Image ID="Image2" runat="server" Height="292px" 
                    ImageUrl="~/Images/TestLogin.jpg" Width="387px" />
            </td>
            <td>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style13">Please Login </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style13">Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">Roll Number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td>
                            <asp:TextBox ID="txtUserRollNo" runat="server" AutoPostBack="True" 
                                OnTextChanged="txtUserRollNo_TextChanged"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">Exam Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownExamName" runat="server">
                            <asp:ListItem Value="Operating System">Operating System</asp:ListItem>
                            <asp:ListItem Value="Web Development">Web Development</asp:ListItem>
                            <asp:ListItem Value="Logical Reasoning">Logical Reasoning</asp:ListItem>
                            <asp:ListItem Value="Basic GK">Basic GK</asp:ListItem>
                            <asp:ListItem Value="Compensation Mangement">Compensation Mangement</asp:ListItem>
                            <asp:ListItem Value="Unix">Unix</asp:ListItem>
                            <asp:ListItem Value="Linux Basic">Linux Basic</asp:ListItem>
                            <asp:ListItem Value="Mutual Funds">Mutual Funds</asp:ListItem>
                            <asp:ListItem Value="Medical">Medical</asp:ListItem>
                            <asp:ListItem Value="IBPS">IBPS</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp; <a href="Registration.aspx" 
                                style="padding: 0px; margin: 0px; outline: none; color: rgb(0, 167, 244); text-decoration: none; font-size: 13px; line-height: 2.6; font-family: Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" 
                                title="You have not Register than Please Click here for SignUp">
                            <span style="padding: 0px; margin: 0px; outline: none;">Or Registration</span></a></td>
                    </tr>
                    <tr>
                        <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:Button ID="btnStartExam" runat="server" Text="Start Now" OnClick="btnStartExam_Click" 
                          class="black_submit_btn" 
                                style="background-color:#00AFF4;" Height="35px" Width="134px"        />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">&nbsp;</td>
                        <td>
                            <asp:Label ID="lblMsg" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12"></td>
                        <td class="auto-style10"></td>
                    </tr>
                    <tr>
                        <td class="auto-style13">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style13">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style13">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </div>
    </div>
</asp:Content>

