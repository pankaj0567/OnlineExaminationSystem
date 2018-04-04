<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineExaminationSystem.master" AutoEventWireup="true" CodeFile="Help.aspx.cs" Inherits="Help" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="OnlineExaminationSystem.css" rel="stylesheet" />
    <link href="OnlineExam.css" rel="stylesheet" />
    <link href="Content_area.css" rel="stylesheet" />
    <link href="Content_area-2.css" rel="stylesheet" />
    <script src="jQuery/jquery-3.1.0.js"></script>
    <script>
        
    </script>
     <style type="text/css">
        
         .auto-style14
         {
             width:300px;
         }
         .auto-style16
         {
             width: 14px;
         }
         .auto-style17
         {
             width: 500px;
         }
         </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="main"  style="position:relative;" >
           <div id="heading" >
                <h2>Welcome To Help</h2>
           </div>
    <div id="content" >

        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <table class="auto-style1" style="height: 64px;">
                    <tr>
                        <td class="auto-style16"></td>
                        <td class="auto-style14" colspan="2">
                            <span style="color: rgb(0, 167, 244); font-family: serif; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: bold; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">
                            Student User<br /> </span>Online Examination System is bundled with a lot of 
                            mind blowing features, which offers user a freedom of doing everything relating 
                            to online exams<br />
                            <br />
                            <br />
                            <h3>How to Start ?</h3>
                            There are two way to start, if you are a registered user then login directly 
                            from the Online Exam page or use Exam Login button from the Menu Bar. And if you 
                            are not a register user then click on&nbsp;&nbsp; Registration button from the Menu for 
                            New User.<br /> </td>
                        <td rowspan="2">
                            <asp:Image ID="imgSreenshot" runat="server" Height="300px" 
                                ImageUrl="~/ScreenShot/Screenshot-1.png" Width="500px" CssClass="zoomin" style="-webkit-transition: all 2s ease; -moz-transition: all 2s ease; -ms-transition: all 2s ease; transition: all 2s ease; " />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"></td>
                        <td class="auto-style14">
                            <asp:LinkButton ID="btnBack" runat="server" class="black_submit_btn" 
                                style="background-color:#00AFF4; line-height:34px;text-decoration:none;" 
                                Height="36px" Width="132px"  OnClientClick="JavaScript: window.history.back(1); return false;" >Back</asp:LinkButton>
                        </td>
                        <td class="auto-style17">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp;&nbsp; <asp:LinkButton ID="btnNext" runat="server" class="black_submit_btn" 
                                style="background-color:#00AFF4; line-height:34px;text-decoration:none;" 
                                Height="36px" Width="132px" OnClick="btnNext_Click" >Next</asp:LinkButton></td>
                        <td></td>
                        
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View2" runat="server">
                     <table class="auto-style1" style="height: 64px;">
                    <tr>
                        <td class="auto-style16"></td>
                        <td class="auto-style14" colspan="2">
                            In These place you login with your name and Roll No If you are new user than 
                            register Follow as shown in next image.<br />
                            <br />
                            
                            <br /> 
                            
                            If you don&#39;t have a Name and Roll No then Please press Registration link ..</td>
                        <td rowspan="2">
                            <asp:Image ID="Image1" runat="server" Height="300px" 
                                ImageUrl="~/ScreenShot/Screenshot-2.png" Width="500px" CssClass="zoomin" style="-webkit-transition: all 2s ease; -moz-transition: all 2s ease; -ms-transition: all 2s ease; transition: all 2s ease; " />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"></td>
                        <td class="auto-style14">
                            <asp:LinkButton ID="LinkButton1" runat="server" class="black_submit_btn" 
                                style="background-color:#00AFF4; line-height:34px;text-decoration:none;" Height="36px" Width="132px" OnClientClick="JavaScript: window.history.back(1); return false;" >Back</asp:LinkButton>
                        </td>
                        <td class="auto-style17">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp;&nbsp; <asp:LinkButton ID="LinkButton2" runat="server" class="black_submit_btn" 
                                style="background-color:#00AFF4; line-height:34px;text-decoration:none;" 
                                Height="36px" Width="132px" OnClick="LinkButton2_Click" >Next</asp:LinkButton></td>
                        <td></td>
                        
                    </tr>
                </table>
            </asp:View>
                 <asp:View ID="View6" runat="server">
                             <table class="auto-style1" style="height: 64px;">
                    <tr>
                        <td class="auto-style16"></td>
                        <td class="auto-style14" colspan="2">
                          
                            Register your self just with your valid Information . After registration you get a 
                            Roll No.<br /> It&#39;s divide in four part
                            <br />
                            First&nbsp; is your Personal Information</td>
                        <td rowspan="2">
                            <asp:Image ID="Image5" runat="server" Height="300px" 
                                ImageUrl="~/ScreenShot/Screenshot-3.png" Width="500px" CssClass="zoomin" 
                                style="-webkit-transition: all 2s ease; -moz-transition: all 2s ease; -ms-transition: all 2s ease; transition: all 2s ease; " />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"></td>
                        <td class="auto-style14">
                            <asp:LinkButton ID="LinkButton9" runat="server" class="black_submit_btn" 
                                style="background-color:#00AFF4; line-height:34px;text-decoration:none;" Height="36px" Width="132px" OnClientClick="JavaScript: window.history.back(1); return false;" >Back</asp:LinkButton>
                        </td>
                        <td class="auto-style17">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp;&nbsp; <asp:LinkButton ID="LinkButton10" runat="server" class="black_submit_btn" 
                                style="background-color:#00AFF4; line-height:34px;text-decoration:none;" 
                                Height="36px" Width="132px" OnClick="LinkButton10_Click" >Next</asp:LinkButton></td>
                        <td></td>
                        
                    </tr>
                </table>
               </asp:View>
               <asp:View ID="View3" runat="server">
                             <table class="auto-style1" style="height: 64px;">
                    <tr>
                        <td class="auto-style16"></td>
                        <td class="auto-style14" colspan="2">
                          
                            Register your self just with your valid Information . After registration you get a 
                            Roll No.<br /> It&#39;s divide in four part
                            <br />
                            Second&nbsp; is your Qualification</td>
                        <td rowspan="2">
                            <asp:Image ID="Image2" runat="server" Height="300px" 
                                ImageUrl="~/ScreenShot/Screenshot-4.png" Width="500px" CssClass="zoomin" 
                                style="-webkit-transition: all 2s ease; -moz-transition: all 2s ease; -ms-transition: all 2s ease; transition: all 2s ease; " />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"></td>
                        <td class="auto-style14">
                            <asp:LinkButton ID="LinkButton3" runat="server" class="black_submit_btn" 
                                style="background-color:#00AFF4; line-height:34px;text-decoration:none;" Height="36px" Width="132px" OnClientClick="JavaScript: window.history.back(1); return false;" >Back</asp:LinkButton>
                        </td>
                        <td class="auto-style17">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp;&nbsp; <asp:LinkButton ID="LinkButton4" runat="server" class="black_submit_btn" 
                                style="background-color:#00AFF4; line-height:34px;text-decoration:none;" 
                                Height="36px" Width="132px" OnClick="LinkButton4_Click" >Next</asp:LinkButton></td>
                        <td></td>
                        
                    </tr>
                </table>
               </asp:View>
                 <asp:View ID="View4" runat="server">
                             <table class="auto-style1" style="height: 64px;">
                    <tr>
                        <td class="auto-style16"></td>
                        <td class="auto-style14" colspan="2">
                          
                            Register your self just with your valid Information . After registration you get a 
                            Roll No.<br /> It&#39;s divide in four part
                            <br />
                            Third is your Payment Details</td>
                        <td rowspan="2">
                            <asp:Image ID="Image3" runat="server" Height="300px" 
                                ImageUrl="~/ScreenShot/Screenshot-5.png" Width="500px" CssClass="zoomin" 
                                style="-webkit-transition: all 2s ease; -moz-transition: all 2s ease; -ms-transition: all 2s ease; transition: all 2s ease; " />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"></td>
                        <td class="auto-style14">
                            <asp:LinkButton ID="LinkButton5" runat="server" class="black_submit_btn" 
                                style="background-color:#00AFF4; line-height:34px;text-decoration:none;" Height="36px" Width="132px" OnClientClick="JavaScript: window.history.back(1); return false;" >Back</asp:LinkButton>
                        </td>
                        <td class="auto-style17">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp;&nbsp; <asp:LinkButton ID="LinkButton6" runat="server" class="black_submit_btn" 
                                style="background-color:#00AFF4; line-height:34px;text-decoration:none;" 
                                Height="36px" Width="132px" OnClick="LinkButton6_Click" >Next</asp:LinkButton></td>
                        <td></td>
                        
                    </tr>
                </table>
               </asp:View>
                       <asp:View ID="View5" runat="server">
                             <table class="auto-style1" style="height: 64px;">
                    <tr>
                        <td class="auto-style16"></td>
                        <td class="auto-style14" colspan="2">
                          
                            Register your self just with your valid Information . After registration you get a 
                            Roll No.<br /> It&#39;s divide in four part
                            <br />
                            Fourth is Print or Note Your Roll No</td>
                        <td rowspan="2">
                            <asp:Image ID="Image4" runat="server" Height="300px" 
                                ImageUrl="~/ScreenShot/Screenshot-6.png" Width="500px" CssClass="zoomin" 
                                style="-webkit-transition: all 2s ease; -moz-transition: all 2s ease; -ms-transition: all 2s ease; transition: all 2s ease; " />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"></td>
                        <td class="auto-style14">
                            <asp:LinkButton ID="LinkButton7" runat="server" class="black_submit_btn" 
                                style="background-color:#00AFF4; line-height:34px;text-decoration:none;" Height="36px" Width="132px" OnClientClick="JavaScript: window.history.back(1); return false;" >Back</asp:LinkButton>
                        </td>
                        <td class="auto-style17">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp;&nbsp; <asp:LinkButton ID="LinkButton8" runat="server" class="black_submit_btn" 
                                style="background-color:#00AFF4; line-height:34px;text-decoration:none;" 
                                Height="36px" Width="132px" OnClick="LinkButton8_Click" >Next</asp:LinkButton></td>
                        <td></td>
                        
                    </tr>
                </table>
               </asp:View>
                  <asp:View ID="View7" runat="server">
                             <table class="auto-style1" style="height: 64px;">
                    <tr>
                        <td class="auto-style16"></td>
                        <td class="auto-style14" colspan="2">
                          
                            <span style="color: rgb(0, 167, 244); font-family: serif; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: bold; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">
                            Attend Test<br />
                            <span style="color: rgb(102, 102, 102); font-family: verdana; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">
                            Once you searched/find your desired Exam</span></span></td>
                        <td rowspan="2">
                            <asp:Image ID="Image6" runat="server" Height="300px" 
                                ImageUrl="~/ScreenShot/Screenshot-7.png" Width="500px" CssClass="zoomin" 
                                style="-webkit-transition: all 2s ease; -moz-transition: all 2s ease; -ms-transition: all 2s ease; transition: all 2s ease; " />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"></td>
                        <td class="auto-style14">
                            <asp:LinkButton ID="LinkButton11" runat="server" class="black_submit_btn" 
                                style="background-color:#00AFF4; line-height:34px;text-decoration:none;" Height="36px" Width="132px" OnClientClick="JavaScript: window.history.back(1); return false;" >Back</asp:LinkButton>
                        </td>
                        <td class="auto-style17">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp;&nbsp; <asp:LinkButton ID="LinkButton12" runat="server" class="black_submit_btn" 
                                style="background-color:#00AFF4; line-height:34px;text-decoration:none;" 
                                Height="36px" Width="132px" OnClick="LinkButton12_Click" >Next</asp:LinkButton></td>
                        <td></td>
                        
                    </tr>
                </table>
               </asp:View>
                     <asp:View ID="View8" runat="server">
                             <table class="auto-style1" style="height: 64px;">
                    <tr>
                        <td class="auto-style16"></td>
                        <td class="auto-style14" colspan="2">
                          
                            <span style="color: rgb(102, 102, 102); font-family: verdana; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">
                            Once you searched/find your desired test to attend, you need to click on button 
                            &quot;Start Exam Now&quot; as shown in the picture</span></td>
                        <td rowspan="2">
                            <asp:Image ID="Image7" runat="server" Height="300px" 
                                ImageUrl="~/ScreenShot/Screenshot-8.png" Width="500px" CssClass="zoomin" 
                                style="-webkit-transition: all 2s ease; -moz-transition: all 2s ease; -ms-transition: all 2s ease; transition: all 2s ease; " />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"></td>
                        <td class="auto-style14">
                            <asp:LinkButton ID="LinkButton13" runat="server" class="black_submit_btn" 
                                style="background-color:#00AFF4; line-height:34px;text-decoration:none;" Height="36px" Width="132px" OnClientClick="JavaScript: window.history.back(1); return false;" >Back</asp:LinkButton>
                        </td>
                        <td class="auto-style17">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp;&nbsp; <asp:LinkButton ID="LinkButton14" runat="server" class="black_submit_btn" 
                                style="background-color:#00AFF4; line-height:34px;text-decoration:none;" 
                                Height="36px" Width="132px" OnClick="LinkButton14_Click" >Next</asp:LinkButton></td>
                        <td></td>
                        
                    </tr>
                </table>
               </asp:View>
                   <asp:View ID="View9" runat="server">
                             <table class="auto-style1" style="height: 64px;">
                    <tr>
                        <td class="auto-style16"></td>
                        <td class="auto-style14" colspan="2">
                          
                            Exam<b 
                                style="padding: 0px; margin: 0px; outline: none; color: rgb(102, 102, 102); font-family: verdana; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;"> 
                            Description:</b><p 
                                style="padding: 0px; margin: 0px 0px 9px; outline: none; max-width: 620px; color: rgb(102, 102, 102); font-family: verdana; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                                After clicking Start Test button, you will see the Exam Description page. This 
                                page will display all the details of the Exam like</p>
                            <p style="padding: 0px; margin: 0px 0px 9px; outline: none; max-width: 620px; color: rgb(102, 102, 102); font-family: verdana; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                            </p>
                            <ul class="ulmargin" 
                                style="padding: 0px; margin: 0px 0px 0px 40px; outline: none; color: rgb(102, 102, 102); font-family: verdana; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                                <li style="padding: 0px; margin: 0px; outline: none;">Passing Percentage</li>
                                <li style="padding: 0px; margin: 0px; outline: none;">Negative Marking</li>
                                <li style="padding: 0px; margin: 0px; outline: none;">Exam Time:</li>
                            </ul>
                            <ul class="ulmargin" 
                                style="padding: 0px; margin: 0px 0px 0px 40px; outline: none; color: rgb(102, 102, 102); font-family: verdana; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                                <li style="padding: 0px; margin: 0px; outline: none;">And many more…</li>
                            </ul>
                            <p style="padding: 0px; margin: 0px 0px 9px; outline: none; max-width: 620px; color: rgb(102, 102, 102); font-family: verdana; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                            </p>
                            <p style="padding: 0px; margin: 0px 0px 9px; outline: none; max-width: 620px; color: rgb(102, 102, 102); font-family: verdana; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                                To start the Exam, you have to click on<span class="Apple-converted-space">&nbsp;</span><b 
                                    style="padding: 0px; margin: 0px; outline: none;">&quot;Click Here To Start Exam 
                                Now&quot;</b><span class="Apple-converted-space">&nbsp;</span>button as shown in next 
                                picture.</p>
                        </td>
                        <td rowspan="2">
                            <asp:Image ID="Image8" runat="server" Height="300px" 
                                ImageUrl="~/ScreenShot/Screenshot-9.png" Width="500px" CssClass="zoomin" 
                                style="-webkit-transition: all 2s ease; -moz-transition: all 2s ease; -ms-transition: all 2s ease; transition: all 2s ease; " />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"></td>
                        <td class="auto-style14">
                            <asp:LinkButton ID="LinkButton15" runat="server" class="black_submit_btn" 
                                style="background-color:#00AFF4; line-height:34px;text-decoration:none;" Height="36px" Width="132px" OnClientClick="JavaScript: window.history.back(1); return false;" >Back</asp:LinkButton>
                        </td>
                        <td class="auto-style17">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp;&nbsp; <asp:LinkButton ID="LinkButton16" runat="server" class="black_submit_btn" 
                                style="background-color:#00AFF4; line-height:34px;text-decoration:none;" 
                                Height="36px" Width="132px" OnClick="LinkButton16_Click" >Next</asp:LinkButton></td>
                        <td></td>
                        
                    </tr>
                </table>

               </asp:View>
                   <asp:View ID="View10" runat="server">
                             <table class="auto-style1" style="height: 64px;">
                    <tr>
                        <td class="auto-style16"></td>
                        <td class="auto-style14" colspan="2">
                          
                            <b style="padding: 0px; margin: 0px; outline: none; color: rgb(102, 102, 102); font-family: verdana; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                            Your Exam has been Started</b><p 
                                style="padding: 0px; margin: 0px 0px 9px; outline: none; max-width: 620px; color: rgb(102, 102, 102); font-family: verdana; font-size: 12px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                                After clicking on start Exam Now button, you can the question of your Exam. You 
                                need to select the Correct Answer for each question and click on<span 
                                    class="Apple-converted-space">&nbsp;</span><b 
                                    style="padding: 0px; margin: 0px; outline: none;">&quot;Next&quot;</b><span 
                                    class="Apple-converted-space">&nbsp;</span>button to get next question as shown 
                                in picture next.</p>
                        </td>
                        <td rowspan="2">
                            <asp:Image ID="Image9" runat="server" Height="300px" 
                                ImageUrl="~/ScreenShot/Screenshot-10.png" Width="500px" CssClass="zoomin" 
                                style="-webkit-transition: all 2s ease; -moz-transition: all 2s ease; -ms-transition: all 2s ease; transition: all 2s ease; " />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16"></td>
                        <td class="auto-style14">
                            <asp:LinkButton ID="LinkButton17" runat="server" class="black_submit_btn" 
                                style="background-color:#00AFF4; line-height:34px;text-decoration:none;" Height="36px" Width="132px" OnClientClick="JavaScript: window.history.back(1); return false;" >Back</asp:LinkButton>
                        </td>
                        <td class="auto-style17">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp;&nbsp; <asp:LinkButton ID="LinkButton18" runat="server" class="black_submit_btn" 
                                style="background-color:#00AFF4; line-height:34px;text-decoration:none;" 
                                Height="36px" Width="132px"  >Next</asp:LinkButton></td>
                        <td></td>
                        
                    </tr>
                </table>
               </asp:View>
        </asp:MultiView>

    </div>     
    
        
        
        </div>
   </asp:Content>

