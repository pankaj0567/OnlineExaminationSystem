<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdmitCardIssue.aspx.cs" Inherits="Admin_AdmitCardIssue" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="../OnlineExaminationSystem.css" rel="stylesheet" /> 
     <link href="../Content_area-2.css" rel="stylesheet" />
    <link href="../Content_area.css" rel="stylesheet" />
    <link href="../OnlineExam.css" rel="stylesheet" />
    <script src="../jQuery/jquery-3.1.0.js"></script>
     <style type="text/css">
         .auto-style6
         {
             width: 100%;
             height: 161px;
         }
         .auto-style7
         {
             width: 411px;
         }
         .auto-style8
         {
             width: 134px;
         }
         .auto-style9
         {
             width: 411px;
             height: 46px;
         }
         .auto-style10
         {
             width: 134px;
             height: 46px;
         }
         .auto-style11
         {
             height: 46px;
         }
         .auto-style12
         {
             width: 411px;
             height: 12px;
         }
         .auto-style13
         {
             width: 134px;
             height: 12px;
         }
         .auto-style14
         {
             height: 12px;
         }
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div id="main" >
           <div id="heading" >
                <h2>Welcome To Admin Student Card Issue</h2>
           </div>
        <div id="content" >
    <table class="auto-style6">
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">Name</td>
            <td>
                <asp:TextBox ID="txtName" runat="server" Width="181px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">Father&#39;s Name</td>
            <td>
                <asp:TextBox ID="txtFatherName" runat="server" Width="181px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">Roll No</td>
            <td>
                <asp:TextBox ID="txtRollNo" runat="server" Width="181px" AutoPostBack="True" 
                    OnTextChanged="txtRollNo_TextChanged"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">Exam Name</td>
            <td>
                <asp:DropDownList ID="DropDownExamName" runat="server" Width="181px">
                            <asp:ListItem>Operating System</asp:ListItem>
                            <asp:ListItem>Web Development</asp:ListItem>
                            <asp:ListItem>Logical Reasoning</asp:ListItem>
                            <asp:ListItem>Basic GK</asp:ListItem>
                            <asp:ListItem>Compensation Mangement</asp:ListItem>
                            <asp:ListItem>Unix</asp:ListItem>
                            <asp:ListItem>Linux Basic</asp:ListItem>
                            <asp:ListItem>Mutual Funds</asp:ListItem>
                            <asp:ListItem>IBPS</asp:ListItem>
                        </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style13">Photo</td>
            <td class="auto-style14">
                <asp:TextBox ID="txtPhoto" runat="server" Width="181px"></asp:TextBox>
            </td>
            <td class="auto-style14"></td>
        </tr>
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style10"></td>
            <td class="auto-style11">
                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" 
                    Text="Submit" class="black_submit_btn" 
                                style="background-color:#00AFF4;" Height="35px" Width="134px"  />
&nbsp;&nbsp;
                <asp:Label ID="lblMsg" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td class="auto-style11"></td>
        </tr>
    </table>
        </div>
        </div>
    </asp:Content>

