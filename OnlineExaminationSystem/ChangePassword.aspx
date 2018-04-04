<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineExaminationSystem-1.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7
        {
            width: 351px;
        }
        .auto-style9
        {
            height: 22px;
        }
        .auto-style11
        {
            height: 22px;
            width: 164px;
        }
        .auto-style12
        {
            width: 164px;
        }
        .auto-style13
        {
            width: 167px;
        }
        .auto-style14
        {
            width: 141px;
        }
        .auto-style15
        {
            height: 22px;
            width: 141px;
        }
    </style>
     <link href="OnlineExaminationSystem.css" rel="stylesheet" />
    <link href="OnlineExam.css" rel="stylesheet" />
    <link href="Content_area.css" rel="stylesheet" />
    <link href="Content_area-2.css" rel="stylesheet" />
    <script src="jQuery/jquery-3.1.0.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="main" >
           <div id="heading" >
                <h2>Welcome To Change Password</h2>
           </div>
        <div id="content" >
    <table class="auto-style1">
        
        <tr>
            <td class="auto-style7">
                <asp:Image ID="Image2" runat="server" Height="277px" 
                    ImageUrl="~/Images/changepassword-1.jpg" Width="325px" />
            </td>

            <td>
                <asp:Panel ID="pnlCurrentPassword" runat="server">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style13">Enter Current Password</td>
                            <td>
                                <asp:TextBox ID="txtCurPass" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                            
                        </tr>
                        <tr>
                            <td class="auto-style13">&nbsp;</td>
                            <td>
                                <asp:Button ID="btnChange" runat="server" Text="Change" 
                                    OnClick="btnChange_Click" class="black_submit_btn" 
                                style="background-color:#00AFF4;" Height="35px" Width="134px"  />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style13"></td><td>
                            <asp:Label ID="lblWrongPassMsg" runat="server" Text="Label" Visible="False"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>
                <asp:Panel ID="pnlNewPassword" runat="server" Visible="False">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style12">Enter New Password</td>
                            <td class="auto-style14">
                                <asp:TextBox ID="txtNewPass" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                            <td>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtNewPass" ErrorMessage="Password can't be left black"></asp:RequiredFieldValidator>

                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style11">Confirm Password</td>
                            <td class="auto-style15">
                                <asp:TextBox ID="txtNewCamPass" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                            <td class="auto-style9">

                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                    ControlToValidate="txtNewCamPass" ErrorMessage="Password Mismach" 
                                    ControlToCompare="txtNewPass"></asp:CompareValidator>

                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12">&nbsp;</td>
                            <td class="auto-style14">
                                <asp:Button ID="btnUpdate" runat="server" Text="Update" 
                                    OnClick="btnUpdate_Click" class="black_submit_btn" 
                                style="background-color:#00AFF4;" Height="35px" Width="134px"  />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12">&nbsp;</td>
                            <td class="auto-style14">
                                <asp:Label ID="lblCurPass" runat="server" Text="Label" Visible="False"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
    </div>
    </div>
</asp:Content>

