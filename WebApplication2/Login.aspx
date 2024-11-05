<%@ Page Title="" Language="C#" MasterPageFile="~/USER/User.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication2.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style8 {
        width: 95%;
        height: 223px;
    }
    .auto-style9 {
        width: 304px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-image:url(images/slider_1.jpg)"">
            <div style=" margin: auto; width: 50%;padding: 50px;" >
               <br />
              
                <center>
                <h2>LOGIN DETAILS</h2>
                <table class="auto-style8">
                 
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style9">&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="USERNAME" Font-Bold="True" Font-Size="Medium"></asp:Label></td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text=":"></asp:Label></td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txt_username" runat="server" Height="32px" Width="271px"></asp:TextBox></td>
                        <td class="auto-style9">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_username" ErrorMessage="* Enter Username" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="PASSWORD" Font-Bold="True" Font-Size="Medium"></asp:Label></td>
                        <td>:</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txt_password" runat="server" Height="35px" Width="270px"></asp:TextBox></td>
                        <td class="auto-style9">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_password" ErrorMessage="* Enter password" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                          <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style9">
                            <asp:Button ID="Button1" runat="server" Text="LOG IN" OnClick="Button1_Click" Font-Bold="True" Font-Size="Medium" Height="47px" Width="154px" />
                              </td>
                        <td class="auto-style9">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style9">&nbsp;</td>
                    </tr>
                </table>
               </center>
            </div>
        </div>
</asp:Content>
