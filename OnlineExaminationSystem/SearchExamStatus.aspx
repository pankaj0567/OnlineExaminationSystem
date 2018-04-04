<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineExaminationSystem.master" AutoEventWireup="true" CodeFile="SearchExamStatus.aspx.cs" Inherits="SearchExamStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="OnlineExaminationSystem.css" rel="stylesheet" />
    <link href="OnlineExam.css" rel="stylesheet" />
    <link href="Content_area.css" rel="stylesheet" />
    <link href="Content_area-2.css" rel="stylesheet" />
    <script src="jQuery/jquery-3.1.0.js"></script>
    <style type="text/css">
        .auto-style7
        {
            width: 357px;
        }
        .auto-style8
        {
            width: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div id="main"  >
           <div id="heading"  >
                <h2>Welcome To Pricing</h2>
           </div>
        <div id="content"  >
    <table class="auto-style1">
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">Choose the Exam Type </td>
            <td>
                <asp:DropDownList ID="DropDownCategory" runat="server">
                    <asp:ListItem>INFORMATION TECHNOLOGY</asp:ListItem>
                    <asp:ListItem>REASONING</asp:ListItem>
                    <asp:ListItem>GENERAL KNOWLEDGE </asp:ListItem>
                    <asp:ListItem>MANAGEMENT</asp:ListItem>
                    <asp:ListItem>MEDICAL</asp:ListItem>
                    <asp:ListItem>LINUX AND UNIX</asp:ListItem>
                    <asp:ListItem>FINANCE</asp:ListItem>
                    <asp:ListItem>BANK</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="btnSearchPrice" runat="server" Text="Search" 
                    OnClick="btnSearchPrice_Click"  class="black_submit_btn" 
                                style="background-color:#00AFF4;" Height="35px" Width="134px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4">
                    <Columns>
                        <asp:BoundField DataField="ExamCode" HeaderText="Exam Code" />
                        <asp:BoundField DataField="ExamName" HeaderText="Exam Name" />
                        <asp:BoundField DataField="ExamFee" HeaderText="Exam Fee" />
                        <asp:BoundField DataField="ExamStatus" HeaderText="Exam Status" />
                    </Columns>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </div>
    </div>

</asp:Content>

