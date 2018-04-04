<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineExaminationSystem-1.master" AutoEventWireup="true" CodeFile="EvaluatorHome.aspx.cs" Inherits="EvaluatorHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="OnlineExaminationSystem.css" rel="stylesheet" />
    <link href="OnlineExam.css" rel="stylesheet" />
    <link href="Content_area.css" rel="stylesheet" />
    <link href="Content_area-2.css" rel="stylesheet" />
    <script src="jQuery/jquery-3.1.0.js"></script>
    <style type="text/css">
        .auto-style7
        {
            width: 470px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="auto-style1" style="background-image:url(Images/slider_4_img.jpg);">
        <tr>
            <td class="auto-style7">
                <asp:Image ID="Image2" runat="server" Height="367px" 
                    ImageUrl="~/Images/EvaluatorHome.jpg" Width="454px" />
            </td>
            <td>
             <table class="auto-style1" >
                    <tr>
                        <td><div class="exam">
	        		        <a id="course1" class="course" href="Result.aspx">Check&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            Student&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Result</a>
		        </div>
                            <div class="exam">
                                <a id="course2" class="course" href="AdmitCard.aspx">&nbsp;&nbsp; Check Student&nbsp; Admit Card</a>
                            </div>
                        </td>
                        <td>
                            <div class="exam">
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:FileUpload ID="FileUpload1"
                                    runat="server" /> <asp:Button ID="btnSubmit" runat="server" 
                                    Text="Upload pdf" OnClick="btnSubmit_Click1" /></div>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <div class="exam">
                                <a id="course4" class="course" href="PaymentDetail.aspx">Check student Payment Details</a>
                            </div>
                            <div class="exam">
                                <a id="course5" class="course" href="StudentInfo.aspx">check&nbsp; Student Information</a>
                            </div>
                        </td>
                        <td>
                            <div class="exam">
                                <a id="course6" class="course" href="Download.aspx">&nbsp;&nbsp;&nbsp;&nbsp;check Study&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Material</a>
                            </div>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    
</asp:Content>

