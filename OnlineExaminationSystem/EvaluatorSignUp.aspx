<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineExaminationSystem.master" AutoEventWireup="true" CodeFile="EvaluatorSignUp.aspx.cs" Inherits="EvaluatorSignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="OnlineExaminationSystem.css" rel="stylesheet" />
    <link href="OnlineExam.css" rel="stylesheet" />
    <link href="Content_area.css" rel="stylesheet" />
    <link href="Content_area-2.css" rel="stylesheet" />
    <script src="jQuery/jquery-3.1.0.js"></script>
     <style type="text/css">
         .auto-style7
         {
             width: 467px;
         }
         .auto-style8
         {
             height: 21px;
         }
         .auto-style9
         {
             width: 208px;
         }
         .auto-style10
         {
             height: 23px;
             width: 208px;
         }
         .auto-style11
         {
             height: 21px;
             width: 208px;
         }
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="auto-style1">
        <tr>
            <td class="auto-style7">
                <asp:Image ID="Image2" runat="server" Height="366px" 
                    ImageUrl="~/Images/EvaluatorSignUp.jpg" Width="457px" />
            </td>
            <td>
                 <div id="main" style="width:800px;height:358px;margin-left:0px;margin-top:0px;margin-bottom:5px;" >
           <div id="heading" style="width:800px;">
                <h2>Welcome To Sign Up</h2>
           </div>
        <div id="content" style="width:800px;height:297px">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style9">Email ID</td>
                        <td>
                            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">Name</td>
                        <td>
                            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">Password</td>
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
                            <asp:TextBox ID="txtCumPasswd" runat="server" TextMode="Password"></asp:TextBox>
                        &nbsp;&nbsp;
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToCompare="txtCumPasswd" ControlToValidate="txtPasswd" 
                                ErrorMessage="Password Mismatch"></asp:CompareValidator>
                        </td>
                        </tr>
                        <tr>
                        <td class="auto-style10">Gender</td>
                        <td class="auto-style2">
                            <asp:RadioButton ID="rdbMale" runat="server" GroupName="Gender" 
                                Text="Male" />
                            <asp:RadioButton ID="rdbFemale" runat="server" GroupName="Gender" 
                                OnCheckedChanged="RadioButton2_CheckedChanged" Text="Female" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">Speciality of Subject</td>
                        <td>
                            <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">Address</td>
                        <td>
                            <asp:TextBox ID="txtAddr" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Mobile No</td><td>
                            <asp:TextBox ID="txtMob" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                                OnClick="btnSubmit_Click" class="black_submit_btn" 
                                style="background-color:#00AFF4;" Height="35px" Width="134px"  />
                        </td>
                        <td>
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

