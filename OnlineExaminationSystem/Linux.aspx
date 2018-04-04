<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineExaminationSystem.master" AutoEventWireup="true" CodeFile="Linux.aspx.cs" Inherits="Linux" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="OnlineExaminationSystem.css" rel="stylesheet" />
    <link href="OnlineExam.css" rel="stylesheet" />
    <link href="Content_area.css" rel="stylesheet" />
    <link href="Content_area-2.css" rel="stylesheet" />
    <script src="jQuery/jquery-3.1.0.js"></script>
    <style type="text/css">
        .auto-style7
        {
            width: 246px;
        }
        .auto-style8
        {
            width: 346px;
        }
        .auto-style9
        {
            width: 544px;
        }
         #content_area #main
        {
            height:300px;
        }
        #content_area #content
        {
            height:239px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="main" >
        <div id="heading">
            <h2>LINUX</h2>
        </div>
        <div id="content">
            
           
            
            <table class="auto-style1">
                <tr>
                    <td class="auto-style7">Description</td>
                    <td>:</td>
                    <td colspan="5">It is provide a basic knowledge about linux programing .</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">Keywords</td>
                    <td>:</td>
                    <td colspan="5">open sources . os . linux , unix , commands .</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="8">
                        <asp:Image ID="Image2" runat="server" Height="1px" 
                            ImageUrl="~/Images/dscp_seprator.png" Width="1300px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Total Questions</td>
                    <td>:</td>
                    <td class="auto-style8">10&nbsp;</td>
                    <td>Total Duration </td>
                    <td>:</td>
                    <td>1 Hours</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <table class="auto-style1" style="height: 23px; width: 85%">
                            <tr>
                                <td>Total Marks </td>
                                <td></td>
                            </tr>
                        </table>
                    </td>
                    <td>:</td>
                    <td class="auto-style8">100</td>
                    <td>Passing Percentage</td>
                    <td>:</td>
                    <td>40%</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">Exam Appearance</td>
                    <td>:</td>
                    <td class="auto-style8">One Question</td>
                    <td>Negative Marking</td>
                    <td>:</td>
                    <td>10%</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">Re-Attempt</td>
                    <td>:</td>
                    <td class="auto-style8">Allowed</td>
                    <td>Result Declaration</td>
                    <td>:</td>
                    <td>Immediately after Completion </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                
            </table>
            
           
            
        </div>
    </div>
    <div>
        
        <table >
            <tr>
                <td class="auto-style9">    
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
                       <asp:ImageButton ID="btnBackPage" runat="server" 
                           ImageUrl="~/Images/adm_back_button.png" Height="32px" Width="105px" 
                           OnClick="btnBackPage_Click" OnClientClick="JavaScript: window.history.back(1); return false;" />
                       &nbsp;&nbsp;&nbsp;
                       </td>
                <td style="font-weight: 700">
                             <a style="text-decoration:none;" class="StartExambtn" href="TestLogin.aspx">
                       <div >
                                  <h2 aria-hidden="False">Start Exam Now</h2>         
                       </div>
                       </a>
                </td>
            </tr>
        </table>
        </div>
    
</asp:Content>

