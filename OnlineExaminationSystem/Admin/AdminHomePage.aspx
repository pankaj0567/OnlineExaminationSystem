<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminHomePage.aspx.cs" Inherits="Admin_AdminHomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="../OnlineExaminationSystem.css" rel="stylesheet" /> 
     <link href="../Content_area-2.css" rel="stylesheet" />
    <link href="../Content_area.css" rel="stylesheet" />
    <link href="../OnlineExam.css" rel="stylesheet" />
    <script src="../jQuery/jquery-3.1.0.js"></script>
    <script>
        $(document).ready(function () {
            $('.examitem').hide();
            $('.exam').click(function (event) {
                var k = event.target.id;
                $('#div' + k).slideDown(2000);
            });

            $('.examitem').click(function () {
                $(this).slideUp(2000);
            });
        });
    </script>
<style type="text/css">
    .auto-style1
    {
        width: 100%;
       
    }
    .auto-style11
    {
        width: 100%;
    }
    #content_area
    {
        height:450px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div id="listexam" >
                <h1  style="text-align:center;"><a style="text-decoration:none;color:white;" href="AdminHomePage.aspx">Main Menu</a></h1>
        </div>
    
        
        <table class="auto-style11">
            <tr>
                <td>&nbsp;</td>
                <td><div class="exam">
                    <a id="course1" class="course" href="AdminCompensationManagementPaper.aspx">Compensation Management</a>
                </div>
                </td>
                <td>
                    <div class="exam">
                        <a id="course2" class="course" href="AdminEvaluatorDetails.aspx">&nbsp; Evaluator Details</a>
                    </div>
                </td>
                <td>
                    <div class="exam">
                        <a id="course3" class="course" href="AdminGK.aspx">General Knowledge</a>
                    </div>
                </td>
                <td>
                    <div class="exam">
                        <a id="course4" class="course" href="ResultDetails.aspx">Result Details</a>
                        
                    </div>
                </td>
                <td>
                    <div class="exam">
                        <a id="course5" class="course" href="AdminLogicalReasoning.aspx">&nbsp; Logical Reasoning</a>
                    </div>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <div class="exam">
                        <a id="course6" class="course" href="AdminMutualFund.aspx">Mutual Funds </a>
                    </div>
                </td>
                <td>
                    <div class="exam">
                        <a id="course7" class="course" href="AdminStudentDetail.aspx">Student Detail</a>
                    </div>
                </td>
                <td>
                    <div class="exam">
                        <a id="course8" class="course" href="AdmintOperatingSystem.aspx">&nbsp;&nbsp;&nbsp; Operating&nbsp; System</a>
                    </div>
                </td>
                <td>
                    <div class="exam">
		    	<a id="course9" class="course" href="#">Linux And Unix</a>
		        </div>
                <div id="divcourse9" class="examitem">
                    <ul>
                        <li><a class="courseitem" href="AdminUnix.aspx">Unix</a></li>
                        <li><a class="courseitem" href="AdminLinux.aspx">Linux</a></li>
                        
                    </ul>
                </div>
                </td>
                <td>
                    <div class="exam">
                    <a id="course10" class="course" href="AdminWebDevelopment.aspx">Web&nbsp;&nbsp;&nbsp; Development</a>
                    </div>
                    
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <div class="exam">
                        <a id="course11" class="course" href="AdmitCardDetails.aspx">Admit Card Details</a>
                    </div>
                </td>
                <td>
                    <div class="exam">
                        <a id="course12" class="course" href="AdmitCardIssue.aspx">&nbsp;&nbsp;&nbsp;&nbsp; 
                        Admit&nbsp;&nbsp; Card Issue</a>
                    </div>
                </td>
                <td>
                    <div class="exam">
                        <a id="course13" class="course" href="IBPS.aspx">IBPS</a>
                    </div>
                </td>
                <td>
                    <div class="exam">
                        <a id="course14" class="course" href="MedicalPaper.aspx">Medical Paper</a>
                    </div>
                </td>
                <td>
                    <div class="exam">
                        <a id="course15" class="course" href="RegistrationDetails.aspx">Registration Details</a>
                    </div>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        
    
        
    
</asp:Content>

