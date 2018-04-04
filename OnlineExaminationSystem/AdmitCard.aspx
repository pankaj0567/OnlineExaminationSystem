<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineExaminationSystem-1.master" AutoEventWireup="true" CodeFile="AdmitCard.aspx.cs" Inherits="AdmitCard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="OnlineExaminationSystem.css" rel="stylesheet" />
    <link href="OnlineExam.css" rel="stylesheet" />
    <link href="Content_area.css" rel="stylesheet" />
    <link href="Content_area-2.css" rel="stylesheet" />
    <script src="jQuery/jquery-3.1.0.js"></script>
    <style type="text/css">
        .auto-style7
        {
            width: 314px;
        }
    .auto-style8
    {
        width: 381px;
    }
        .auto-style9
        {
            width: 305px;
        }
        .auto-style11
        {
            width: 24px;
        }
        .auto-style12
        {
            width: 108px;
        }
        .auto-style13
        {
            width: 108px;
            height: 13px;
        }
        .auto-style14
        {
            width: 24px;
            height: 13px;
        }
        .auto-style15
        {
            width: 305px;
            height: 13px;
        }
    </style>
     <script type="text/javascript">
         function show() {
             window.print();
         }
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="main" style="" >
           <div id="heading" style="width:;">
                <h2>Welcome To Admit Card Details</h2>
           </div>
        <div id="content">
    <table class="auto-style1">
        <tr>
            <td rowspan="10">
                &nbsp;</td>
            <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enter Roll Number</td>
            <td>
                <asp:TextBox ID="txtRollNo" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                    OnClick="btnSubmit_Click" class="black_submit_btn" 
                                style="background-color:#00AFF4;" Height="35px" 
                    Width="134px" />
            &nbsp;
                <asp:Label ID="lblMsg" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr></table>
       
        <asp:Panel ID="pnlAdmitDetails" runat="server" Visible="False">
        <table>
        <tr>
            <td class="auto-style7" rowspan="6">
                
                
                <asp:Image ID="imgPic" runat="server" Height="245px" Width="210px" />
            </td>
            <td class="auto-style12"></td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">Name</td>
            <td class="auto-style11">
                :</td>
            <td class="auto-style9">
                <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">Father&#39;s Name</td>
            <td class="auto-style11">
                :</td>
            <td class="auto-style9">
                <asp:Label ID="lblFatherName" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">Roll No</td>
            <td class="auto-style11">
                :</td>
            <td class="auto-style9">
                <asp:Label ID="lblRollNo" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Exam Name</td>
            <td class="auto-style14">
                :</td>
            <td class="auto-style15">
                <asp:Label ID="lblExamName" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style11">
                &nbsp;</td>
            <td class="auto-style9">
                <asp:Button ID="btnPrint" runat="server" class="black_submit_btn" Height="35px" 
                    OnClientClick="show()" style="background-color:#00AFF4;" Text="Print" 
                    Width="134px" />
            </td>
        </tr>
    </table>
    
    </asp:Panel>
    </div>
    </div>  
</asp:Content>

