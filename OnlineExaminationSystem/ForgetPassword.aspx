<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineExaminationSystem.master" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="ForgetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="OnlineExaminationSystem.css" rel="stylesheet" />
    <link href="OnlineExam.css" rel="stylesheet" />
    <link href="Content_area.css" rel="stylesheet" />
    <link href="Content_area-2.css" rel="stylesheet" />
    <script src="jQuery/jquery-3.1.0.js"></script>
    <style type="text/css">
        .auto-style7
        {
            width: 365px;
        }
        .auto-style8
        {
            width: 190px;
        }
        .auto-style9
        {
            width: 137px;
        }
        .auto-style10
        {
            width: 147px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="main" >
           <div id="heading" >
                <h2>Welcome To Forget Password</h2>
           </div>
        <div id="content" >
    <table class="auto-style1">
        <tr>
            <td class="auto-style7">
                <asp:Image ID="Image2" runat="server" Height="298px" 
                    ImageUrl="~/Images/forgotpassword-1.jpg" Width="349px" />
            </td>
            <td>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style8">Enter alternative Email ID</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txtAltEmail" runat="server" Height="25px" Width="140px" 
                                TextMode="Email"></asp:TextBox>
                        </td>
                        <td class="auto-style10">
                            <asp:Button ID="btnAltSend" runat="server" Text="Send" class="black_submit_btn" 
                                style="background-color:#00AFF4;" Height="35px" Width="134px" 
                                OnClick="btnAltSend_Click"  />
                        </td>
                        <td>

                            <asp:Label ID="mailMsg" runat="server" Text="Label" Visible="False"></asp:Label>

                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </div>
    </div>
</asp:Content>

