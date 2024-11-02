<%@ Page Title="" Language="C#" MasterPageFile="~/USER/User.Master" AutoEventWireup="true" CodeBehind="BillPayment.aspx.cs" Inherits="WebApplication2.USER.BillPayment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 246px;
        }
        .auto-style3 {
            width: 24px;
        }
        .auto-style4 {
            width: 270px;
        }
        .auto-style5 {
            height: 517px;
        }
        .auto-style6 {
            height: 697px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style6">
        <div style="width:50%;float:left">
            <asp:Panel ID="Panel1" runat="server">
            <br />
            <br />
            <h2>PAYMENT AMOUNT IS <asp:Label ID="lbl_grandTotal" runat="server" Text=""></asp:Label></h2>
            <h4>Enter Bank Details For Payment</h4>
            <table class="w-100">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label9" runat="server" Text="BANK NAME"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="Label10" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txt_bnakName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Enter Detail" ControlToValidate="txt_bnakName"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="ACCOUNT NUMBER"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" Text=":"></asp:Label></td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txt_accountNumber" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Enter Detail" ControlToValidate="txt_accountNumber"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="IFSC CODE"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="Label4" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txt_ifscCode" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Enter Detail" ControlToValidate="txt_ifscCode"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" Text="ACCOUNT TYPE"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="Label6" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txt_accountType" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="* Enter Detail" ControlToValidate="txt_accountType"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server" Text="BALANCE AMOUNT"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="Label8" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txt_balanceAmount" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="* Enter Detail" ControlToValidate="txt_balanceAmount"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button2" runat="server" Text=" GO BACK" OnClick="Button2_Click" />
                    </td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style4">
                    &nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="PROCEED PAYMENT" OnClick="Button1_Click" />
                    &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
                </asp:Panel>
        </div>
        <div style="width:50%;float:left">
            <asp:Panel ID="Panel2" runat="server" Height="523px" Visible="False">
                <center class="auto-style5">
                <br />
                <br /><br />
                    
                <h2> <asp:Label ID="lbl_paymentSuccessMessage" runat="server" Text=""></asp:Label></h2>
                      <br />
                    <br />
                    <asp:Button runat="server" Text="VIEW ORDERS" OnClick="Unnamed1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button runat="server" Text="BACK TO HOME PAGE" OnClick="Unnamed2_Click" />
                    
                   
                
                    
                    
              
                  
                    </center>
            </asp:Panel>
        </div>
    </div>
</asp:Content>
