<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineExaminationSystem-1.master" AutoEventWireup="true" CodeFile="StudentHome.aspx.cs" Inherits="StudentHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="OnlineExaminationSystem.css" rel="stylesheet" />
    <link href="OnlineExam.css" rel="stylesheet" />
    <link href="Content_area.css" rel="stylesheet" />
    <link href="Content_area-2.css" rel="stylesheet" />
    <script src="jQuery/jquery-3.1.0.js"></script>
    <style type="text/css">
        .auto-style8
        {
            width: 499px;
        }
        #content_area
        {
            background-image:url(Images/slider0.jpg);
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="auto-style1" ">
        <tr>
            <td class="auto-style8">
                <asp:Image ID="Image2" runat="server" Height="367px" 
                    ImageUrl="~/Images/StudentHome.jpg" Width="486px" />
            </td>
            <td>
              
                <table >
                    <tr>
                        <td><div class="exam">
	        		<a id="course1" class="course" href="Result.aspx">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Check&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Result</a>
		        </div>
                            <div class="exam">
                                <a id="course2" class="course" href="AdmitCard.aspx">&nbsp;&nbsp; Check&nbsp; Admit Card</a>
                            </div>
                        </td>
                        <td>
                            <div class="exam">
                                <a id="course3" class="course" href="TestLogin.aspx">&nbsp;&nbsp;&nbsp;&nbsp; Start&nbsp;&nbsp;&nbsp;&nbsp; Exam&nbsp;&nbsp;&nbsp;&nbsp; Now</a>
                            </div>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <div class="exam">
                                <a id="course4" class="course" href="PaymentDetail.aspx">Check Payment Details</a>
                            </div>
                            <div class="exam">
                                <a id="course5" class="course" href="StudentInfo.aspx">Student Information</a>
                            </div>
                        </td>
                        <td>
                            <div class="exam">
                                <a id="course6" class="course" href="Download.aspx">&nbsp;&nbsp;&nbsp;&nbsp; Study&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Material</a>
                            </div>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    
                </table>
              
            </td>
        </tr>
    </table>
    
</asp:Content>

