<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineExaminationSystem.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="OnlineExaminationSystem.css" rel="stylesheet" />
    <link href="OnlineExam.css" rel="stylesheet" />
    <link href="Content_area.css" rel="stylesheet" />
    <link href="Content_area-2.css" rel="stylesheet" />
    <script src="jQuery/jquery-3.1.0.js"></script>
    <style type="text/css">
       
        .auto-style11
        {
            height: 23px;
            width: 121px;
        }
        .auto-style15
        {
            width: 121px;
        }
        .auto-style17
        {
            width: 310px;
        }
        .auto-style18
        {
            width: 123px;
        }
        .auto-style19
        {
            width: 40px;
        }
        .auto-style21
        {
            width: 62px;
        }
        .auto-style22
        {
            width: 237px;
        }
        .auto-style23
        {
            width: 344px;
        }
        .auto-style24
        {
            width: 62px;
            height: 79px;
        }
        .auto-style25
        {
            width: 237px;
            height: 79px;
        }
        .auto-style26
        {
            width: 344px;
            height: 79px;
        }
        .auto-style27
        {
            height: 79px;
        }
       
        .auto-style28
        {
            width: 270px;
        }
        .auto-style29
        {
            width: 180px;
        }
       
        .auto-style30
        {
            width: 227px;
        }
       
    </style>
    <script type="text/javascript" >
        function show()
        {
            window.print();
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="main"  >
           <div id="heading" ">
                <h2>Welcome To Registration</h2>
           </div>
        <div id="content" >
    <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" 
                   OnFinishButtonClick="Wizard1_FinishButtonClick" Height="35px" Width="1293px" 
        >
        <WizardSteps>
            <asp:WizardStep runat="server" title="Step 1">
                    
    
       
                
            <table style="width: 1093px" >
                <tr>
                    <td class="auto-style19">&nbsp;</td>
                    <td class="auto-style18">Exam Name</td>
                    <td class="auto-style17">
                        <asp:DropDownList ID="DropDownExamName" runat="server">
                            <asp:ListItem>Operating System</asp:ListItem>
                            <asp:ListItem>Web Development</asp:ListItem>
                            <asp:ListItem>Logical Reasoning</asp:ListItem>
                            <asp:ListItem>Basic GK</asp:ListItem>
                            <asp:ListItem>Compensation Mangement</asp:ListItem>
                            <asp:ListItem>Unix</asp:ListItem>
                            <asp:ListItem>Linux Basic</asp:ListItem>
                            <asp:ListItem>Mutual Funds</asp:ListItem>
                               <asp:ListItem>Medical</asp:ListItem>
                            <asp:ListItem>IBPS</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19">&nbsp;</td>
                    <td class="auto-style18">Name</td>
                    <td class="auto-style17">
                        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                        &nbsp;&nbsp;
                        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19">&nbsp;</td>
                    <td class="auto-style18">Father&#39;s Name</td>
                    <td class="auto-style17">
                        <asp:TextBox ID="txtFatherName" runat="server"></asp:TextBox>
                        &nbsp;&nbsp;
                        <asp:TextBox ID="txtFatherLastName" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19">&nbsp;</td>
                    <td class="auto-style18">Date of Birth</td>
                    <td class="auto-style17">
                        <asp:DropDownList ID="DOBd" runat="server">
                        </asp:DropDownList>
                        <asp:DropDownList ID="DOBm" runat="server">
                        </asp:DropDownList>
                        <asp:DropDownList ID="DOBy" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19">&nbsp;</td>
                    <td class="auto-style18">Gender</td>
                    <td class="auto-style17">
                        <asp:RadioButton ID="rdbMale" runat="server" GroupName="gender" 
                             Text="Male" />
                        <asp:RadioButton ID="rdbFemale" runat="server" GroupName="gender" 
                            Text="Female" />
                    </td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19">&nbsp;</td>
                    <td class="auto-style18">Category</td>
                    <td class="auto-style17">
                        <asp:RadioButton ID="rdbGeneral" runat="server" GroupName="Category" 
                            Text="General" />
                        <asp:RadioButton ID="rdbOBC" runat="server" GroupName="Category" 
                            Text="OBC" />
                        <asp:RadioButton ID="rdbSC" runat="server" GroupName="Category" 
                            Text="SC" />
                        <asp:RadioButton ID="rdbOthers" runat="server" GroupName="Category" 
                            Text="Others" />
                    </td>
                    <td class="auto-style11"></td>
                </tr>
                <tr>
                    <td class="auto-style19">&nbsp;</td>
                    <td class="auto-style18">Contact Address</td>
                    <td class="auto-style17">
                        <asp:TextBox ID="txtAddr" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19">&nbsp;</td>
                    <td class="auto-style18">Country</td>
                    <td class="auto-style17">
                        <asp:DropDownList ID="DropDownCountry" runat="server">
                                <asp:ListItem>India</asp:ListItem>
                                <asp:ListItem>UK</asp:ListItem>
                                <asp:ListItem>USA</asp:ListItem>
                                <asp:ListItem >England</asp:ListItem>
                                <asp:ListItem>Australia</asp:ListItem>
                                <asp:ListItem>Bangladesh</asp:ListItem>
                            </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; City&nbsp;
                        <asp:DropDownList ID="DropDownState" runat="server">
                            <asp:ListItem>Delhi</asp:ListItem>
                            <asp:ListItem>UP</asp:ListItem>
                            <asp:ListItem>MP</asp:ListItem>
                            <asp:ListItem>Maharastra</asp:ListItem>
                            <asp:ListItem>Bihar</asp:ListItem>
                            <asp:ListItem>Gujarat</asp:ListItem>
                            <asp:ListItem>AP</asp:ListItem>
                            <asp:ListItem>West Bengal</asp:ListItem>
                            <asp:ListItem>Karnataka</asp:ListItem>
                            <asp:ListItem>Punjab</asp:ListItem>
                            <asp:ListItem>Rajasthan</asp:ListItem>
                            <asp:ListItem>kerala</asp:ListItem>
                            <asp:ListItem Value="J&amp;K"></asp:ListItem>
                            <asp:ListItem>California</asp:ListItem>
                            <asp:ListItem>Florida</asp:ListItem>
                            <asp:ListItem>New York</asp:ListItem>
                            <asp:ListItem>London</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19">&nbsp;</td>
                    <td class="auto-style18">Pin Code</td>
                    <td class="auto-style17">
                        <asp:TextBox ID="txtPinCode" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19">&nbsp;</td>
                    <td class="auto-style18">Contact No.</td>
                    <td class="auto-style17">
                        <asp:TextBox ID="txtMob" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19">&nbsp;</td>
                    <td class="auto-style18">Email </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
             
            </table>
                
       
    
    
            </asp:WizardStep>
            <asp:WizardStep runat="server" title="Step 2">
                 <table class="auto-style1">
                    <tr>
                        <td class="auto-style21">&nbsp;</td>
                        <td class="auto-style22">Qualification</td>
                        <td class="auto-style23">
                            <asp:DropDownList ID="DropDownQual" runat="server">
                                <asp:ListItem>10th Pass</asp:ListItem>
                                <asp:ListItem>12th Pass</asp:ListItem>
                                <asp:ListItem>Graduation</asp:ListItem>
                                <asp:ListItem>Post Graduation</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style21">&nbsp;</td>
                        <td class="auto-style22">Nationality</td>
                        <td class="auto-style23">
                            <asp:DropDownList ID="DropDownNationality" runat="server">
                                <asp:ListItem>Hindu</asp:ListItem>
                                <asp:ListItem>Punjabi </asp:ListItem>
                                <asp:ListItem>Sikh</asp:ListItem>
                                <asp:ListItem>Muslim</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style21">&nbsp;</td>
                        <td class="auto-style22">Board/University</td>
                        <td class="auto-style23">
                            <asp:DropDownList ID="DropDownBoard" runat="server">
                                <asp:ListItem>CBSE Board</asp:ListItem>
                                <asp:ListItem>ICSE board</asp:ListItem>
                                <asp:ListItem>State board</asp:ListItem>
                                <asp:ListItem>IGNOU</asp:ListItem>
                                <asp:ListItem>SOl</asp:ListItem>
                                <asp:ListItem>Delhi University</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style21">&nbsp;</td>
                        <td class="auto-style22">Year of Passing</td>
                        <td class="auto-style23">
                            <asp:DropDownList ID="YearPassingd" runat="server" 
                                >
                            </asp:DropDownList>
                            <asp:DropDownList ID="YearPassingM" runat="server">
                            </asp:DropDownList>
                            <asp:DropDownList ID="YearPassingY" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style24">
                        </td>
                        <td class="auto-style25">
                            <asp:FileUpload ID="FileUploadPicture" runat="server"  />
                        </td>
                        <td class="auto-style26">
                            <asp:Image ID="imgPic" runat="server" Height="105px" Width="105px" />
                        </td>
                        <td class="auto-style27"></td>
                    </tr>
                    <tr>
                        <td class="auto-style21">
                            &nbsp;</td>
                        <td class="auto-style22">
                            <asp:FileUpload ID="FileUploadSign" runat="server" />
                        </td>
                        <td class="auto-style23">
                            <asp:Image ID="imgSign" runat="server" Height="48px" Width="115px" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:WizardStep>
            <asp:WizardStep runat="server" Title="Step 3">
                  <table class="auto-style1">
        <tr>
            <td class="auto-style28" rowspan="9">
                <asp:Image ID="Image2" runat="server" Height="240px" 
                    ImageUrl="~/Images/pay-online-1.png" Width="293px" />
            </td>
            <td class="auto-style29">Select Bank</td>
            <td>
                <asp:DropDownList ID="DropDownBankName" runat="server">
                    <asp:ListItem>State Bank of India.</asp:ListItem>
                    <asp:ListItem>Bank of Baroda.</asp:ListItem>
                    <asp:ListItem>Allahabad Bank.</asp:ListItem>
                    <asp:ListItem>State Bank of Saurashtra.</asp:ListItem>
                    <asp:ListItem>Central Bank of India.</asp:ListItem>
                    <asp:ListItem>Punjab National Bank</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style29">Payment Date</td>
            <td>
                <asp:Label ID="lblDate" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style29">Card No</td>
            <td>
                <asp:TextBox ID="txtCardNo" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style29">CVV No</td>
            <td>
                <asp:TextBox ID="txtCardCVV" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style29">Name on Card</td>
            <td>
                <asp:TextBox ID="txtCardName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style29">Valid Upto</td>
            <td>
                <asp:DropDownList ID="DropDownCardValidM" runat="server">
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownCardValidY" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style29">Amount</td>
            <td>
                <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style29">
                <asp:Button ID="btnPrint" runat="server" Text="Print" OnClientClick="show()" class="black_submit_btn" 
                                style="background-color:#00AFF4;" Height="35px" Width="134px" Visible=false />
            </td>
            <td>
                <asp:Button ID="btnPayAmount" runat="server" Text="Pay" 
                    OnClick="btnPayAmount_Click" class="black_submit_btn" 
                                style="background-color:#00AFF4;" Height="35px" Width="134px" />
                &nbsp;&nbsp;
                <asp:Label ID="lblPaymentMsg" runat="server" Text="Label" Visible="False"></asp:Label>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style29">
                <asp:Label ID="lblTranID" runat="server" Text="Your Transaction ID " 
                    Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblTranIDNo" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
            </asp:WizardStep>
           
            <asp:WizardStep runat="server" Title="Step 4">
            <asp:Panel runat="server" Visible="false" ID="pnlDetails">
                  <table class="auto-style1" style="width: 71%">
                    <tr>
                        <td class="auto-style30">Registration Successful</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style30">Roll Number</td>
                        <td>
                            <asp:Label ID="lblRegNo" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style30">Exam Name</td>
                        <td>
                            <asp:Label ID="lblExamName" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style30">Name</td>
                        <td>
                            <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style30">Father&#39;s Name</td>
                        <td>
                            <asp:Label ID="lblFatherName" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style30">Address</td>
                        <td>
                            <asp:Label ID="lblAddr" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style30">&nbsp;</td>
                        <td>
                            <asp:Button ID="btnPrint1" runat="server" Text="Print" OnClientClick="show()" class="black_submit_btn" 
                                style="background-color:#00AFF4;" Height="35px" Width="134px" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    
                </table>
                </asp:Panel>
            </asp:WizardStep>
        </WizardSteps>
    </asp:Wizard>
    </div>
    </div>
</asp:Content>

