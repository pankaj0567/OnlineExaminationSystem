<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineExaminationSystem.master" AutoEventWireup="true" CodeFile="OnlineExam.aspx.cs" Inherits="OnlineExam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <link href="OnlineExaminationSystem.css" rel="stylesheet" />
    <link href="OnlineExam.css" rel="stylesheet" />
    <link href="Content_area.css" rel="stylesheet" />
    <link href="Content_area-2.css" rel="stylesheet" />
    <script src="jQuery/jquery-3.1.0.js"></script>
    <script>
        $(document).ready(function () {
            $('.examitem').hide();
            $('.exam').click(function (event) {
                var k = event.target.id;
                    $('#div'+k).slideDown(2000);           
                });
                
            $('.examitem').click(function () {
                $(this).slideUp(2000);
            });
        });
    </script>
    <style rel="stylesheet">
        #content_area
        {
            background-image:url(Images/slider1.jpg);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="listexam" >
    <h1  style="text-align:center;">List of Exam</h1>
    </div>
<div>

    <table >
        <tr>
            <td class="auto-style5">
                
            </td>
            <td>
                <div class="exam">
	        		<a id="course2" class="course" href="#">Information Technology</a>
		        </div>
                <div id="divcourse2" class="examitem">
                    <ul>
                        <li><a class="courseitem" href="OperatingSystem.aspx">Operating Systems</a></li>
                        <li><a class="courseitem" href="WebDevelopment.aspx">Web Development</a></li>
                        
                    </ul>
                </div>
            </td>
            <td>      
                  <div class="exam">
		        	<a id="course3" class="course" href="#">Reasoning Exam</a>
		        </div>
                <div id="divcourse3" class="examitem">
                    <ul>
                        <li><a class="courseitem" href="LogicalReasoning.aspx">Logical Reasoning</a></li>
                       
                    </ul>
                </div>
            </td>
            <td> 
                <div class="exam">
		        	<a id="course4" class="course" href="#"> General Knowledge</a>
		        </div>
                <div id="divcourse4" class="examitem">
                    <ul>
                        <li><a class="courseitem" href="GK.aspx">Basic GK</a></li>
                        
                       
                    </ul>
                </div>
            </td>
            <td>
                <div class="exam">
	        		<a id="course5" class="course" href="#"> Management Exam</a>
		        </div>
                <div id="divcourse5" class="examitem">
                    <ul>
                        
                        <li><a title="Compensation Management" class="courseitem" href="CompensationManagement.aspx">Compensation Manage...</a></li>
                      
                    </ul>
                </div>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                
            </td>
            <td>
                <div class="exam">  
        			<a id="course7" class="course" href="#">Medical Exam</a>
		        </div>
                <div id="divcourse7" class="examitem">
                    <ul>
                        <li><a class="courseitem" href="Medical.aspx">Medical Exam</a></li>
                       
                    </ul>
                </div>
            </td>
            <td>
                <div class="exam">
		    	<a id="course8" class="course" href="#">Linux And Unix</a>
		        </div>
                <div id="divcourse8" class="examitem">
                    <ul>
                        <li><a class="courseitem" href="Unix.aspx">Unix</a></li>
                        <li><a class="courseitem" href="Linux.aspx">Linux Basic</a></li>
                        
                    </ul>
                </div>
            </td>
            <td>
                <div class="exam">
        			<a id="course9" class="course" href="#">Finance Exam</a>
		        </div>
                <div id="divcourse9" class="examitem">
                    <ul>
                        
                        
                        <li><a class="courseitem" href="MutualFund.aspx">Mutual funds</a></li>
                    </ul>
                </div>
            </td>
            <td>
                <div class="exam">
			        <a id="course10" class="course" href="#">Bank Exam</a>
	        	</div>
                <div id="divcourse10" class="examitem">
                    <ul>
                        
                        <li><a title="Institute of Banking Personnel Selection" class="courseitem" href="IBPS.aspx">IBPS</a></li>
                
                    </ul>
                </div>  
            </td>
        </tr>
    </table>

</div>        
</asp:Content>

