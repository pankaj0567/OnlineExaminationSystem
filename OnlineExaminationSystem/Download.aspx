<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineExaminationSystem-1.master" AutoEventWireup="true" CodeFile="Download.aspx.cs" Inherits="Download" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="OnlineExaminationSystem.css" rel="stylesheet" />
    <link href="OnlineExam.css" rel="stylesheet" />
    <link href="Content_area.css" rel="stylesheet" />
    <link href="Content_area-2.css" rel="stylesheet" />
    <script src="jQuery/jquery-3.1.0.js"></script>
 <script>
     $(document).ready(function () {
         $('.examitem').hide();
         $('.exam').mouseover(function (event) {
             var k = event.target.id;
             $('#div' + k).slideDown(2000);
         });

         $('.examitem').mouseleave(function () {
             $(this).slideUp(2000);
         });
     });
    </script>
     <style type="text/css">
         .auto-style8
         {
         }
         .auto-style9
         {
             height: 21px;
         }
         .auto-style14
         {
             height: 21px;
             width: 125px;
         }
         .auto-style15
         {
             width: 125px;
         }
         .auto-style17
         {
             height: 21px;
             width: 249px;
         }
         .auto-style18
         {
             width: 249px;
         }
         .auto-style19
         {
             width: 373px;
         }
         .auto-style21
         {
             height: 21px;
             width: 357px;
         }
         .auto-style22
         {
             width: 357px;
         }
        #content_area
        {
            background-image:url(Images/slider1.jpg);
        }
    
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="listexam" >
    <h1  style="text-align:center;">Welcome To Download </h1>
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
                        <li><a class="courseitem" href="PDF/operating-system.pdf">Operating Systems</a></li>
                        <li><a class="courseitem" href="PDF/Web%20Development.pdf">Web Development</a></li>
                        
                    </ul>
                </div>
            </td>
            <td>      
                  <div class="exam">
		        	<a id="course3" class="course" href="#">Reasoning </a>
		        </div>
                <div id="divcourse3" class="examitem">
                    <ul>
                        <li><a class="courseitem" href="PDF/logical-reasoning.pdf">Logical Reasoning</a></li>
                       
                    </ul>
                </div>
            </td>
            <td> 
                <div class="exam">
		        	<a id="course4" class="course" href="#"> General Knowledge</a>
		        </div>
                <div id="divcourse4" class="examitem">
                    <ul>
                        <li><a class="courseitem" href="PDF/gk.pdf">Basic GK</a></li>
                        
                       
                    </ul>
                </div>
            </td>
            <td>
                <div class="exam">
	        		<a id="course5" class="course" href="#"> Management </a>
		        </div>
                <div id="divcourse5" class="examitem">
                    <ul>
                        
                        <li><a title="Compensation Management" class="courseitem" href="PDF/compensation.pdf">Compensation Manage...</a></li>
                      
                    </ul>
                </div>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                
            </td>
            <td>
                <div class="exam">  
        			<a id="course7" class="course" href="#">Medical </a>
		        </div>
                <div id="divcourse7" class="examitem">
                    <ul>
                        <li><a class="courseitem" href="PDF/medical.pdf">Medical </a></li>
                       
                    </ul>
                </div>
            </td>
            <td>
                <div class="exam">
		    	<a id="course8" class="course" href="#">Linux And Unix</a>
		        </div>
                <div id="divcourse8" class="examitem">
                    <ul>
                        <li><a class="courseitem" href="PDF/UNIX.pdf">Unix</a></li>
                        <li><a class="courseitem" href="PDF/linux.pdf">Linux Basic</a></li>
                        
                    </ul>
                </div>
            </td>
            <td>
                <div class="exam">
        			<a id="course9" class="course" href="#">Finance </a>
		        </div>
                <div id="divcourse9" class="examitem">
                    <ul>
                        
                        
                        <li><a class="courseitem" href="PDF/MutualFund.pdf">Mutual funds</a></li>
                    </ul>
                </div>
            </td>
            <td>
                <div class="exam">
			        <a id="course10" class="course" href="#">Bank </a>
	        	</div>
                <div id="divcourse10" class="examitem">
                    <ul>
                        
                        <li><a title="Institute of Banking Personnel Selection" class="courseitem" href="PDF/IBPS.PDF">IBPS</a></li>
                
                    </ul>
                </div>  
            </td>
        </tr>
    </table>

</div>        
    
</asp:Content>

