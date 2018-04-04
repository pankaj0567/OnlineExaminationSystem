<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineExaminationSystem.master" AutoEventWireup="true" CodeFile="StudentSignUp.aspx.cs" Inherits="StudentSignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="OnlineExaminationSystem.css" rel="stylesheet" />
    <link href="OnlineExam.css" rel="stylesheet" />
    <link href="Content_area.css" rel="stylesheet" />
    <link href="Content_area-2.css" rel="stylesheet" />
    <script src="jQuery/jquery-3.1.0.js"></script>
    <style type="text/css">
        .auto-style7
        {
            width: 402px;
        }
        .auto-style8
        {
            width: 172px;
        }
        .auto-style9
        {
            width: 172px;
            height: 22px;
        }
        .auto-style10
        {
            height: 22px;
        }
    .auto-style11
    {
        width: 172px;
        height: 28px;
    }
    .auto-style12
    {
        height: 28px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="auto-style1" style="height: 356px">
        <tr>
            <td class="auto-style7">
                <asp:Image ID="Image2" runat="server" Height="361px" 
                    ImageUrl="~/Images/OnlineSignUp.jpg" Width="427px" />
            </td>
            <td>
                 <div id="main" style="width:800px;height:358px;margin-left:0px;margin-top:0px;margin-bottom:5px;" >
           <div id="heading" style="width:800px;">
                <h2>Welcome To Sign Up</h2>
           </div>
        <div id="content" style="width:800px;height:297px">
                <table class="auto-style1" style="height: 195px; width: 99%">
                    <tr>
                        <td class="auto-style8">Name</td>
                        <td>
                            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
&nbsp;&nbsp;
                            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">Create Password</td>
                        <td>
                            <asp:TextBox ID="txtPasswd" runat="server" TextMode="Password"></asp:TextBox>
                        &nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtPasswd" ErrorMessage="Password Can't be left Blank"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">Confirm Password</td>
                        <td>
                            <asp:TextBox ID="txtCumPasswd" runat="server" TextMode="Password" Width="124px"></asp:TextBox>
                        &nbsp;&nbsp;
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToCompare="txtCumPasswd" ControlToValidate="txtPasswd" 
                                ErrorMessage="Password Mismatch"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">DOB</td>
                        <td>
                            <asp:DropDownList ID="DOBd" runat="server" 
                                OnSelectedIndexChanged="DOBd_SelectedIndexChanged">
                            </asp:DropDownList>
                            <asp:DropDownList ID="DOBm" runat="server">
                            </asp:DropDownList>
                            <asp:DropDownList ID="DOBy" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">Gender</td>
                        <td>
                            <asp:RadioButton ID="rdbMale" runat="server" GroupName="gender" 
                                Text="Male" />
&nbsp;
                            <asp:RadioButton ID="rdbFemale" runat="server" GroupName="gender" 
                                Text="Female" />
                        </td>
                    </tr>
                    <tr>
                        <td>Address </td><td>
                            <asp:TextBox ID="txtAddr" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">Mobile No.</td>
                        <td class="auto-style10">
                            <asp:TextBox ID="txtMob" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">E-Mail Address</td>
                        <td>
                            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">Country</td>
                        <td>
                            <asp:DropDownList ID="DropDownCountry" runat="server">
                                <asp:ListItem>India</asp:ListItem>
                                <asp:ListItem>UK</asp:ListItem>
                                <asp:ListItem>USA</asp:ListItem>
                                <asp:ListItem Value="E">England</asp:ListItem>
                                <asp:ListItem>Australia</asp:ListItem>
                                <asp:ListItem>Bangladesh</asp:ListItem>
                            </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; State&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownState" runat="server">
                                <asp:ListItem>Delhi</asp:ListItem>
                                <asp:ListItem>UP</asp:ListItem>
                                <asp:ListItem>MP</asp:ListItem>
                                <asp:ListItem>Maharastra</asp:ListItem>
                                <asp:ListItem>Bihar</asp:ListItem>
                                <asp:ListItem>Gujarat</asp:ListItem>
                                <asp:ListItem>AP</asp:ListItem>
                                <asp:ListItem>West Bengal</asp:ListItem>
                                <asp:ListItem>Karnataka</asp:ListItem>
                                <asp:ListItem>Punjab</asp:ListItem>
                                <asp:ListItem>Rajasthan</asp:ListItem>
                                <asp:ListItem>kerala</asp:ListItem>
                                <asp:ListItem Value="J&amp;K"></asp:ListItem>
                                <asp:ListItem>California</asp:ListItem>
                                <asp:ListItem>Florida</asp:ListItem>
                                <asp:ListItem>New York</asp:ListItem>
                                <asp:ListItem>London</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                      
                      <tr>
                        <td class="auto-style11">
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                                OnClick="btnSubmit_Click" class="black_submit_btn" 
                                style="background-color:#00AFF4;"  Height="41px" Width="174px"  />
                          </td>
                        <td class="auto-style12">
                            <asp:Label ID="lblSubmitMsg" runat="server" Text="Label" Visible="False"></asp:Label>
                          </td>
                    </tr>
                     
                </table>
                </div>
                </div>
            </td>
        </tr>
    </table>
    
</asp:Content>

