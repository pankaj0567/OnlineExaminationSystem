<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineExaminationSystem-2.master" AutoEventWireup="true" CodeFile="Unix-1.aspx.cs" Inherits="Unix_1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="OnlineExaminationSystem.css" rel="stylesheet" />
    <link href="OnlineExam.css" rel="stylesheet" />
    <link href="Content_area.css" rel="stylesheet" />
    <link href="Content_area-2.css" rel="stylesheet" />
    <script src="jQuery/jquery-3.1.0.js"></script>

     <style type="text/css">
         .auto-style7
         {
             width: 13px;
         }
         .auto-style8
         {
             width: 224px;
         }
         .auto-style9
         {
             width: 28px;
         }
         .auto-style12
         {
             width: 17px;
         }
         .auto-style13
         {
             width: 229px;
         }
         .auto-style14
         {
             width: 49px;
         }
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="main" >
        <div id="heading">
             <h2>UNIX</h2>
        </div>
        <div id="content">
            
        
           
            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style8">
                         
                        <span style="color: rgb(0, 167, 244); font-family: OpenSans-Regular; font-size: 17px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: bold; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">
                        Instruction:-</span></td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td> 
                        <span style="color: rgb(0, 167, 244); font-family: OpenSans-Regular; font-size:17px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: bold; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">
                        Notes:-</span></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/aero_bulet.png" />
                    </td>
                    <td class="auto-style8">
                        
                        Total Questions </td>
                    <td class="auto-style9">:</td>
                    <td class="auto-style13">10</td>
                    <td rowspan="8" class="auto-style14">
                        <asp:Image ID="Image16" runat="server" Height="190px" 
                            ImageUrl="~/Images/instruct_divider.png" />
                    </td>
                    <td class="auto-style12">
                        <asp:Image ID="Image11" runat="server" ImageUrl="~/Images/aero_bulet.png" />
                    </td>
                    <td>
                        Please don&#39;t refresh the page during test. </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/aero_bulet.png" />
                    </td>
                    <td class="auto-style8">
                        
                        Total Duration </td>
                    <td class="auto-style9">:</td>
                    <td class="auto-style13">
                        
                        1 Hours </td>
                    <td class="auto-style12">
                        <asp:Image ID="Image12" runat="server" ImageUrl="~/Images/aero_bulet.png" />
                    </td>
                    <td>
                        Please don&#39;t use browser back button. </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/aero_bulet.png" />
                    </td>
                    <td class="auto-style8">
                        
                        Total Marks </td>
                    <td class="auto-style9">:</td>
                    <td class="auto-style13">100</td>
                    <td class="auto-style12">
                        <asp:Image ID="Image13" runat="server" ImageUrl="~/Images/aero_bulet.png" />
                    </td>
                    <td>
                        Use Next and Back buttons to move on to the next or previous question in the 
                        test if available. </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/aero_bulet.png" />
                    </td>
                    <td class="auto-style8">
                        
                        Result Declaration </td>
                    <td class="auto-style9">:</td>
                    <td class="auto-style13">
                        
                        Immediately after Completion </td>
                    <td class="auto-style12">
                        <asp:Image ID="Image14" runat="server" ImageUrl="~/Images/aero_bulet.png" />
                    </td>
                    <td>
                        After you finish the test, click on the Submit button to Submit your test. </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Image ID="Image6" runat="server" ImageUrl="~/Images/aero_bulet.png" />
                    </td>
                    <td class="auto-style8">
                        
                        Re-Attempt </td>
                    <td class="auto-style9">:</td>
                    <td class="auto-style13">
                        
                        Allowed </td>
                    <td class="auto-style12">
                        <asp:Image ID="Image15" runat="server" ImageUrl="~/Images/aero_bulet.png" />
                    </td>
                    <td>
                        Click the start test button below to start. </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Image ID="Image7" runat="server" ImageUrl="~/Images/aero_bulet.png" />
                    </td>
                    <td class="auto-style8">
                        
                        Test Appearance </td>
                    <td class="auto-style9">:</td>
                    <td class="auto-style13">
                        
                        One Question </td>
                    <td class="auto-style12">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Image ID="Image8" runat="server" ImageUrl="~/Images/aero_bulet.png" />
                    </td>
                    <td class="auto-style8">
                        
                        Negative Marking </td>
                    <td class="auto-style9">:</td>
                    <td class="auto-style13">
                        
                        10%</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Image ID="Image9" runat="server" ImageUrl="~/Images/aero_bulet.png" />
                    </td>
                    <td class="auto-style8">
                        
                        Passing Percentage </td>
                    <td class="auto-style9">:</td>
                    <td class="auto-style13">40%</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
               
            </table>
            
        
           
        </div>
        <div>
        
        <table >
            <tr>
                      <td >    
                    
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" 
                                     ImageUrl="~/Images/adm_back_button.png" Height="32px" Width="105px" OnClientClick="JavaScript: window.history.back(1); return false;" />
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       </td>
                    <td >
                           <a style="text-decoration:none;" class="StartExambtn" href="Unix-2.aspx">
                               <div >
                                  <h2 aria-hidden="False">Start Exam Now</h2>         
                               </div>
                          </a>
                   </td>
            </tr>
        </table>
        
    </div>
    </div>
    
</asp:Content>

