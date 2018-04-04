<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineExaminationSystem-1.master" AutoEventWireup="true" CodeFile="Result.aspx.cs" Inherits="Result" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="OnlineExaminationSystem.css" rel="stylesheet" />
    <link href="OnlineExam.css" rel="stylesheet" />
    <link href="Content_area.css" rel="stylesheet" />
    <link href="Content_area-2.css" rel="stylesheet" />
    <script src="jQuery/jquery-3.1.0.js"></script>
     
     <script type="text/javascript">
         function show()
         {
             window.print();
         }
     </script>
     <style type="text/css">
         .auto-style7
         {
             width: 26px;
         }
         .auto-style8
         {
             width: 123px;
         }
         .auto-style11
         {
             width: 278px;
         }
         .auto-style13
         {
             width: 22px;
         }
         .auto-style14
         {
             width: 120px;
         }
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1" style="height: 259px">
        <tr>
            <td class="auto-style7">
                <asp:Image ID="Image2" runat="server" Height="366px" 
                    ImageUrl="~/Images/result.png" Width="413px" />
            </td>
            <td>
            <div id="main" style="width:910px;" >
           <div id="heading" style="width:910px;" >
                <h2>Welcome To Result</h2>
           </div>
        <div id="content" style="width:909px;" >

                <table >
                    <tr>
                        <td style="font-size:25px;" class="auto-style11" >Enter the Roll Number</td>
                        <td>
                            <asp:TextBox ID="txtEnterRollNo" runat="server" Height="31px" Width="153px"></asp:TextBox>
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" 
                              class="black_submit_btn" 
                                style="background-color:#00AFF4;" Height="36px" Width="132px" />
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblMsg" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Panel ID="pnlResultDetail" runat="server" Visible="False" 
                                Height="173px" Width="610px">
                                       
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style8">
                                        
                                        &nbsp;</td>
                                    <td class="auto-style14"></td>
                                    <td class="auto-style13">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style14">Name</td>
                                    <td class="auto-style13">:</td>
                                    <td>
                                        <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style14">Father&#39;s Name</td>
                                    <td class="auto-style13">:</td>
                                    <td>
                                        <asp:Label ID="lblFatherName" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style14">Roll No</td>
                                    <td class="auto-style13">:</td>
                                    <td>
                                        <asp:Label ID="lblRollNo" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style14">Exam Name</td>
                                    <td class="auto-style13">:</td>
                                    <td>
                                        <asp:Label ID="lblExamName" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style14">Marks</td>
                                    <td class="auto-style13">:</td>
                                    <td>
                                        <asp:Label ID="lblMarks" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style14">Total Marks</td>
                                    <td class="auto-style13">:</td>
                                    <td>
                                        <asp:Label ID="lblTotalMarks" runat="server" Text="100"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style14">Status</td>
                                    <td class="auto-style13">:</td>
                                    <td>
                                        <asp:Label ID="lblStatus" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">&nbsp;</td>
                                    <td class="auto-style14">Date And Time</td>
                                    <td class="auto-style13">:</td>
                                    <td>
                                        <asp:Label ID="lblDateTime" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                             </asp:Panel>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            </td>
                        <td>
                            <asp:Button ID="btnPrintResult" runat="server" Text="Print" 
                                OnClientClick="show()" class="black_submit_btn" 
                                style="background-color:#00AFF4;" Height="41px" Width="174px" 
                                Visible="False" />
                        </td>
                    </tr>
                </table>
                </div>
                </div>
            </td>
        </tr>
    </table>

</asp:Content>

