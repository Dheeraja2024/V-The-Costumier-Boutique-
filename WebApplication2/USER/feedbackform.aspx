<%@ Page Title="" Language="C#" MasterPageFile="~/USER/User.Master" AutoEventWireup="true" CodeBehind="feedbackform.aspx.cs" Inherits="WebApplication2.USER.feedbackform" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 48%;
            height: 540px;
            padding-left:50px;
        }
        .auto-style4 {
            height: 106px;
        }
        .auto-style5 {
            height: 66px;
        }
        .auto-style6 {
            height: 63px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <div>
        <asp:Label ID="Label1" runat="server" Text="FEEDBACK FORM"></asp:Label>
        <br />
        <table class="auto-style2">
           
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="Feedback Message "></asp:Label>
                    <br />
                    <asp:TextBox ID="txt_feedback" runat="server" Height="233px" TextMode="MultiLine" Width="848px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:TextBox ID="txt_productCode" runat="server" Placeholder="Product Code if any " Width="850px" Height="42px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="56px" Width="466px" />
                </td>
            </tr>
            
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Send Feedback" OnClick="Button1_Click" Height="45px" Width="694px" />
                &nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        
    </div>
        </center>
</asp:Content>
