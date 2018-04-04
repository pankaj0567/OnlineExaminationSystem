<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineExaminationSystem-1.master" AutoEventWireup="true" CodeFile="StudentInfo.aspx.cs" Inherits="StudentInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="OnlineExaminationSystem.css" rel="stylesheet" />
    <link href="OnlineExam.css" rel="stylesheet" />
    <link href="Content_area.css" rel="stylesheet" />
    <link href="Content_area-2.css" rel="stylesheet" />
    <script src="jQuery/jquery-3.1.0.js"></script>
     <style type="text/css">
         .auto-style9
    {
         }
    .auto-style10
    {
        width: 215px;
    }
         .auto-style12
         {
             width: 188px;
         }
         .auto-style13
         {
             width: 161px;
         }
         .auto-style14
         {
             width: 14px;
         }
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="main"  >
           <div id="heading" >
                <h2>Welcome To Student Information</h2>
           </div>
        <div id="content" >
    <table class="auto-style1">
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style10">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Enter Roll Number</td>
            <td>
                <asp:TextBox ID="txtRollNo" runat="server" Height="29px" Width="133px"></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" Text="Search" 
                    OnClick="btnSearch_Click" class="black_submit_btn" 
                                style="background-color:#00AFF4;" Height="35px" Width="134px" />
            &nbsp;
                <asp:Label ID="lblMsg" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9" colspan="3">
                <asp:Panel ID="pnlStudentInfo" runat="server" Visible="False">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style12">
                                <asp:Image ID="imgPic" runat="server" Height="261px" Width="213px" />
                            </td>
                            <td>
                                <table class="auto-style1">
                                    <tr>
                                        <td class="auto-style13">Roll Number</td>
                                        <td class="auto-style14">:</td>
                                        <td>
                                            <asp:Label ID="lblRollNo" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style13">Name</td>
                                        <td class="auto-style14">:</td>
                                        <td>
                                            <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style13">Father Name</td>
                                        <td class="auto-style14">:</td>
                                        <td>
                                            <asp:Label ID="lblFatherName" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style13">Date of Birth</td>
                                        <td class="auto-style14">:</td>
                                        <td>
                                            <asp:Label ID="lblDOB" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style13">Sex</td>
                                        <td class="auto-style14">:</td>
                                        <td>
                                            <asp:Label ID="lblSex" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style13">Address</td>
                                        <td class="auto-style14">:</td>
                                        <td>
                                            <asp:Label ID="lblAddr" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style13">Email Id</td>
                                        <td class="auto-style14">:</td>
                                        <td>
                                            <asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style13">Exam Name</td>
                                        <td class="auto-style14">:</td>
                                        <td>
                                            <asp:Label ID="lblExamName" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style13">TransactionID</td>
                                        <td class="auto-style14">:</td>
                                        <td>
                                            <asp:Label ID="lblTanID" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style13">Qualification</td>
                                        <td class="auto-style14">:</td>
                                        <td>
                                            <asp:Label ID="lblQual" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style13">Contact No</td>
                                        <td class="auto-style14">:</td>
                                        <td>
                                            <asp:Label ID="lblMob" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </div>
    </div>
</asp:Content>

