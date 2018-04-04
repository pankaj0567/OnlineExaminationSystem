<%@ Page Title="" Language="C#" MasterPageFile="~/OnlineExaminationSystem.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="OnlineExaminationSystem.css" rel="stylesheet" />
    <link href="OnlineExam.css" rel="stylesheet" />
    <link href="Content_area.css" rel="stylesheet" />
    <link href="Content_area-2.css" rel="stylesheet" />
    <script src="jQuery/jquery-3.1.0.js"></script>
    <script>
       
    </script>
<style type="text/css">
    .auto-style7
    {
        width: 319px;
    }
    .auto-style8
    {
        width: 15px;
    }
    .auto-style9
    {
        width: 15px;
        height: 3px;
    }
    .auto-style10
    {
        height: 3px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="auto-style1">
        <tr>
            <td class="auto-style7">
                <asp:Image ID="Image2" runat="server" Height="366px" 
                    ImageUrl="~/Images/contact.us-2.png" Width="348px" />
            </td>
            <td>
              <div id="main" style="width:800px;height:365px;margin-bottom:10px;" >
           <div id="heading" style="width:800px;height:60px;" >
                <h2 style="font-family:open sans;">Welcome To Contact Us</h2>
           </div>
        <div id="content" style="width:800px;height:304px;">

                <table class="auto-style1">
                    <tr>
                        <td class="auto-style9"></td>
                        <td class="auto-style10"></td>
                        <td class="auto-style10">
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td>From</td>
                        <td>
                            <asp:TextBox ID="txtFrom" runat="server" Height="21px" Width="153px" 
                                TextMode="Email" placeholder="e.g., pankaj0567@gmail.com" ></asp:TextBox >
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td>Subject</td>
                        <td>
                            <asp:TextBox ID="txtSubject" runat="server" Height="21px" Width="153px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td>Message</td>
                        <td>
                            <asp:TextBox ID="txtBody" runat="server" Height="115px" TextMode="MultiLine" 
                                Width="394px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click"  class="black_submit_btn" 
                                style="background-color:#00AFF4;" Height="41px" Width="174px" />
                        </td>
                        <td>
                            <asp:Button ID="btnDiscard" runat="server" Text="Discard" class="black_submit_btn" 
                                style="background-color:#00AFF4;" Height="41px" Width="174px" 
                                OnClick="btnDiscard_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="lblMsg" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                </div>

              </div>
            </td>
        </tr>
    </table>

</asp:Content>

