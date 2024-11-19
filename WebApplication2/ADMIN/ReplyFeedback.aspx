<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN TEMPLATE/AdimDesign.Master" AutoEventWireup="true" CodeBehind="ReplyFeedback.aspx.cs" Inherits="WebApplication2.ADMIN.ReplyFeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 620px;
            margin-top: 0px;
            background-color:black;
        }
        .auto-style4 {
            width: 50%;
            float: left;
            height: 603px;
            background-color:cadetblue;
        }
        .auto-style5 {
            width: 226px;
        }
        .auto-style6 {
            width: 90%;
            padding-left:50px;
        }
        .auto-style7 {
            height: 409px;
           
        }
        .auto-style9 {
            width: 633px;
        }
        .auto-style10 {
            width: 207px;
        }
        .auto-style11 {
            height: 192px;
        }
        .auto-style12 {
            width: 658px;
            height: 475px;
        }
        .auto-style13 {
            width: 272px;
        }
        .auto-style14 {
            width: 507px
        }
        .auto-style15 {
            width: 231px;
        }
        .auto-style16 {
            width: 398px;
            float: left;
            height: 599px;
            background-color: cadetblue;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <center>
    <div class="auto-style2">
         <center>
        <div class="auto-style16">
           <br /><br />
            <center>
            <table class="auto-style6">
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label1" runat="server" Text="Customer Name " Font-Bold="True" Font-Size="Medium"  ForeColor="White"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text=":" Font-Size="Medium" ForeColor="White"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lbl_customerName" runat="server" Text="lbl_customerName"  Font-Size="Medium"  ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label3" runat="server" Text="Customer Email" Font-Bold="True" Font-Size="Medium"  ForeColor="White"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text=":" Font-Size="Medium" ForeColor="White"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lbl_email" runat="server" Text="Label" Font-Size="Medium"  ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label5" runat="server" Text="Customer Phone No." Font-Bold="True" Font-Size="Medium"  ForeColor="White"></asp:Label></td>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text=":" Font-Size="Medium" ForeColor="White"></asp:Label></td>
                    <td>
                        <asp:Label ID="lbl_phoneNo" runat="server" Text="Label" Font-Size="Medium"  ForeColor="White"></asp:Label>
                        </td>
                </tr>
            </table>
                <table class="auto-style7">
                    <tr>
                        <td rowspan="2" class="auto-style9">
                            <asp:Label ID="Label6" runat="server" Text=" CUSTOMER FEEDBACK" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="White"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="lbl_feedbackMessage" runat="server" Font-Size="Medium" ForeColor="White"></asp:Label>
                        </td>
                        <td rowspan="2" class="auto-style10">&nbsp;</td>
                        <td class="auto-style11">
                            <br />
                            <asp:Image ID="Image1" runat="server" width="155px" Height="146px"/>
                        </td>
                    </tr>
                    <tr>
                        
                        
                        <td>
                            <asp:Label ID="Label7" runat="server" Text="Product Code :" Font-Size="Medium" ForeColor="White"></asp:Label>
                            <br />
                            <asp:Label ID="lbl_productCode" runat="server" Text="Label" Font-Size="Medium" ForeColor="White"></asp:Label>
                        </td>
                    </tr>
                </table>
<br />           </center>
        </div>
        <div class="auto-style4">
            <center>
                <br />
                <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
            <div class="auto-style12">

                <table class="auto-style14">
                    <tr>
                        <td colspan="2">
                            <asp:TextBox ID="txt_replyFeedback" runat="server" TextMode="MultiLine" Height="273px" Width="524px"></asp:TextBox></td>
                       
                    </tr>
                    <tr>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style15">
                            <asp:Button ID="Button1" runat="server" Text="Back" OnClick="Button1_Click" />
                        &nbsp;
                            <asp:Button ID="Button2" runat="server" Text="Send Mail" OnClick="Button2_Click" />
                        </td>
                    </tr>
                </table>

            </div>
                </center>
        </div>
            </center>
    </div>
       </center>
</asp:Content>
