<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineExaminationSystem-1.master" AutoEventWireup="true" CodeFile="SearchPaymentDetail.aspx.cs" Inherits="SearchPaymentDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="OnlineExaminationSystem.css" rel="stylesheet" />
    <link href="OnlineExam.css" rel="stylesheet" />
    <link href="Content_area.css" rel="stylesheet" />
    <link href="Content_area-2.css" rel="stylesheet" />
    <script src="jQuery/jquery-3.1.0.js"></script>
    <style type="text/css">
        .auto-style7
        {
            width: 426px;
        }
        .auto-style8
        {
            width: 194px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="main"  >
           <div id="heading" >
                <h2>Welcome To Payment Details</h2>
           </div>
        <div id="content" ;">
     <table class="auto-style1">
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;Enter Transaction ID</td>
            <td>
                <asp:TextBox ID="txtTranId" runat="server" Height="25px" Width="144px"></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" Text="Search" 
                    OnClick="btnSearch_Click" class="black_submit_btn" 
                                style="background-color:#00AFF4;" Height="35px" Width="134px" />
            &nbsp;
                <asp:Label ID="lblMsg" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4">
                    <Columns>
                        
                        <asp:BoundField DataField="TransactionID" HeaderText="Transaction ID" />
                        <asp:BoundField DataField="RollNo" HeaderText="Roll No" />
                        <asp:BoundField DataField="Date" HeaderText="Date" />
                        <asp:BoundField DataField="CardNo" HeaderText="Card No" />
                        <asp:BoundField DataField="NameOnCard" HeaderText="Name" />
                        <asp:BoundField DataField="bankName" HeaderText="Bank Name" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" />
                        
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
    <</div>
</asp:Content>

