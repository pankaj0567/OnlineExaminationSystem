<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineExaminationSystem.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            width: 183px;
        }
    </style>
    <link href="OnlineExaminationSystem.css" rel="stylesheet" />
    <link href="OnlineExam.css" rel="stylesheet" />
    <link href="Content_area.css" rel="stylesheet" />
    <link href="Content_area-2.css" rel="stylesheet" />
    <script src="jQuery/jquery-3.1.0.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style7">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/about-us-1.png" 
                    Height="366px" Width="487px" />
            </td>
            

            <td style="text-align:justify;margin-right:20px;">
                  <div id="main" style="width:800px;margin-left:0px;margin-top:0px;height:360px;" >
           <div id="heading" style="width:800px;">
                <h2>Welcome To About Us</h2>
           </div>
        <div id="content" style="width:800px;height:299px;">
                    <p style="margin-right:20px;">
                        &nbsp;</p>
                    <p style="margin-right:20px;">
                        &nbsp;</p>
                    <p style="margin-right:20px;">
                        A site for educators, Online Examination System allows them to create and 
                        administer tests in a fast and reliable way. If you&#39;re one, this new platform 
                        lets you create tests using an interface that is intuitive before anything else, 
                        and that is hosted 100 % online. You don&#39;t have to install anything on your own 
                        computer.
                    </p>
                    <p style="margin-right:20px;">
                        And this also means that you&#39;ll be able to create tests and 
                        have them edited from wherever you are. Anywhere there&#39;s a computer that can 
                        access the Internet will do. In all cases, you are the one choosing who is being 
                        able to take any of your tests, and you&#39;ll get to see and manage results right 
                        as they come along. And a site like Online Examination System is also one that people who want to 
                        become more knowledgeable will find greatly useful. If you&#39;re one such 
                        individual, you can come to the site, browse through these topics that you want 
                        to master and then take as many exams as you wish. If you are restless for 
                        knowledge, you can take one after the other the whole night through, until the 
                        morning comes.
                    </p>
            </div>
            </div>    
            </td>
            
        </tr>
    </table>
</asp:Content>

