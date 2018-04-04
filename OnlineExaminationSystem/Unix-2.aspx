<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineExaminationSystem-2.master" AutoEventWireup="true" CodeFile="Unix-2.aspx.cs" Inherits="Unix_2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="OnlineExaminationSystem.css" rel="stylesheet" />   
    <link href="Content_area.css" rel="stylesheet" />
    <link href="Content_area-2.css" rel="stylesheet" />
    <script src="jQuery/jquery-3.1.0.js"></script>
    <script src="jQuery/CountDownJQuery.js"></script>
    <script>
        $(document).ready(function () {
            var Qno = $('#ContentPlaceHolder1_lblQNo').text();
            var QnoPrev = Qno - 1;
            $('#questionStage #List' + Qno).css('background-color', 'green');
            for (i = 0; i <= QnoPrev; i++) {
                $('#questionStage #List' + i).css('background-color', 'red');
            }
            var CurrntDate = $('#ContentPlaceHolder1_lblCurrentDate').text();
            var CurrntHour = parseInt($('#ContentPlaceHolder1_lblCurrentHour').text());
            CurrntHour = CurrntHour + 1;
            var CurrntTime = $('#ContentPlaceHolder1_lblCurrentTime').text();
            var DateTime = CurrntDate + " " + CurrntHour + CurrntTime;
            $('#Timer').countdown({ date: DateTime }, function () {
                $('#ContentPlaceHolder1_btnSubmitExam').trigger("click");
            });
        });
    </script>
          <style type="text/css">
              #content_area
              {
                  background-image:none;
              }
              #questionStage
              {
                  width:1330px;
              }
              .auto-style7
              {
                  width: 22px;
              }
          </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="">
            <table>
                <tr>
                    <td><h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; UNIX</h2></td>  <td rowspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;
                     <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Test Time Left :</h3>
                    &nbsp;&nbsp;&nbsp;&nbsp; </td>  
                    <td rowspan="2">
                            <div id="Timer">
                                <div id="hour" class="timerCommon"></div>
                        <div class="column">
                        <img src="Images/column.png"  />
                        </div>
                        <div id="minutes" class="timerCommon" ></div>
                        <div class="column">
                        <img src="Images/column.png"  />
                        </div>
                        <div id="second" class="timerCommon" ></div>
                        
                        </div>
                            
                    </td>
               
               </tr>
               <tr>
                         <td><h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TOTAL QUESTIONS : 10</h2></td>  
               </tr>
              
            </table>
        </div>
    <div id="main" style="height:307px;">
     
        <div id="questionStage">
            <ul>
                <li>
                <div >
                    <input type="submit" id="List1"  value="1"  title="this question is unvisited" class="ListDynamicQuestion" />
                </div>
                </li>
                <li>
                <div >
                    <input type="submit" id="List2" value="2"  title="this question is unvisited" class="ListDynamicQuestion" />
                </div>
                </li>
                <li>
                <div >
                    <input type="submit" id="List3" value="3"  title="this question is unvisited" class="ListDynamicQuestion" />
                </div>
                </li>
                <li>
                <div >
                    <input type="submit" id="List4"  value="4"  title="this question is unvisited" class="ListDynamicQuestion" />
                </div>
                </li>
                <li>
                <div >
                    <input type="submit" id="List5" value="5"  title="this question is unvisited" class="ListDynamicQuestion" />
                </div>
                </li>
                <li>
                <div >
                    <input type="submit" id="List6" value="6"  title="this question is unvisited" class="ListDynamicQuestion" />
                </div>
                </li>
                <li>
                <div >
                    <input type="submit" id="List7" value="7"  title="this question is unvisited" class="ListDynamicQuestion" />
                </div>
                </li>
                <li>
                <div >
                    <input type="submit" id="List8" value="8"  title="this question is unvisited" class="ListDynamicQuestion" />
                </div>
                </li>
                <li>
                <div >
                    <input type="submit" id="List9" value="9"  title="this question is unvisited" class="ListDynamicQuestion" />
                </div>
                </li>
                <li>
                <div >
                    <input type="submit" id="List10"  value="10"  title="this question is unvisited" class="ListDynamicQuestion" />
                </div>
                </li>
                
            </ul>
        </div>
        <div id="heading">
                <h2>&nbsp; <asp:Label ID="lblQNo" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="Label1" runat="server" Text="."></asp:Label>
                    <asp:Label ID="lblQuestion" runat="server" Text="Label"></asp:Label>
                    </h2>
        </div>
        <div id="content" style="height:200px;">
                
            <table class="auto-style1">
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td>
                        <asp:RadioButton ID="rdbOptionA" runat="server" GroupName="question" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td>
                        <asp:RadioButton ID="rdbOptionB" runat="server" GroupName="question" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td>
                        <asp:RadioButton ID="rdbOptionC" runat="server" GroupName="question" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td>
                        <asp:RadioButton ID="rdbOptionD" runat="server" GroupName="question" />
                    </td>
                </tr>
            </table>
                
        </div>
    </div>
    <div id="btnNextBack">
            
        <table class="auto-style1">
            <tr>
                
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                    <asp:ImageButton ID="btnNextQuestion" runat="server" 
                        ImageUrl="~/Images/next_starttest.png" OnClick="btnNextQuestion_Click"  />
                    
                </td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;<asp:Button ID="btnSubmitExam" runat="server" Text="End &amp; Submit Exam" 
            class="black_submit_btn" ToolTip="End Exam &amp; Submit Answer" 
                        OnClick="btnSubmitExam_Click" />      </td>
            </tr>
        </table>
             
    </div>
    <div id="CurrentTimeDate">
        <asp:Label ID="lblCurrentDate" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="lblCurrentHour" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="lblCurrentTime" runat="server" Text="Label"></asp:Label>
    </div>
</asp:Content>

