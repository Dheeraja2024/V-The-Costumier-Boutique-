<%@ Page Title="" Language="C#" MasterPageFile="~/USER/User.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="WebApplication2.USER.UserRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
  CUSTOMER REGISTRATION
       <div class="auto-style3">
           <table style="width: 100%;">
        
               <tr>
                   <td class="auto-style4">
                       <asp:Label ID="Label1" runat="server" Text="NAME"></asp:Label></td>
                   <td>
                       <asp:Label ID="Label2" runat="server" Text=":"></asp:Label></td>
                   <td class="auto-style5">
                       <asp:TextBox ID="txt_name" runat="server"></asp:TextBox></td>
                   <td>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txt_name" ForeColor="Red"></asp:RequiredFieldValidator>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style4">
                       <asp:Label ID="Label3" runat="server" Text="EMAIL ID"></asp:Label></td>
                   <td>
                       <asp:Label ID="Label4" runat="server" Text=":"></asp:Label></td>
                   <td class="auto-style5">
                       <asp:TextBox ID="txt_email" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter valid email " ControlToValidate="txt_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style4">
                       <asp:Label ID="Label5" runat="server" Text="PIN"></asp:Label></td>
                   <td>
                       <asp:Label ID="Label6" runat="server" Text=":"></asp:Label></td>
                   <td class="auto-style5">
                       <asp:TextBox ID="txt_pin" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txt_pin" ForeColor="Red"></asp:RequiredFieldValidator>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style4">
                       <asp:Label ID="Label16" runat="server" Text="ADDRESS"></asp:Label></td>
                   <td>
                       <asp:Label ID="Label17" runat="server" Text=":"></asp:Label></td>
                   <td class="auto-style5">
                       <asp:TextBox ID="txt_address" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="txt_address" ForeColor="Red"></asp:RequiredFieldValidator>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style4">
                       <asp:Label ID="Label7" runat="server" Text="PHONE"></asp:Label></td>
                   <td>
                       <asp:Label ID="Label8" runat="server" Text=":"></asp:Label></td>
                   <td class="auto-style5">
                       <asp:TextBox ID="txt_phone" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="txt_phone" ValidationExpression="^([0]|\+91)?[789]\d{9}$"></asp:RegularExpressionValidator>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style4">
                       <asp:Label ID="Label9" runat="server" Text="USERNAME"></asp:Label></td>
                   <td>
                       <asp:Label ID="Label10" runat="server" Text=":"></asp:Label></td>
                   <td class="auto-style5">
                       <asp:TextBox ID="txt_username" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txt_username" ForeColor="Red"></asp:RequiredFieldValidator>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style4">
                       <asp:Label ID="Label11" runat="server" Text="PASSWORD"></asp:Label></td>
                   <td>
                       <asp:Label ID="Label12" runat="server" Text=":"></asp:Label></td>
                   <td class="auto-style5">
                       <asp:TextBox ID="txt_password" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_password" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style4">
                       <asp:Label ID="Label14" runat="server" Text="CONFIRM PASSWORD"></asp:Label></td>
                   <td>
                       <asp:Label ID="Label15" runat="server" Text=":"></asp:Label></td>
                   <td class="auto-style5">
                       <asp:TextBox ID="txt_confiem_password" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_password" ControlToValidate="txt_confiem_password" ErrorMessage="Password doesnot match" ForeColor="Red"></asp:CompareValidator>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style4"></td>
                   <td></td>
                   <td class="auto-style5">
                       <asp:Button ID="Button1" runat="server" Text="REGISTER" OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label18" runat="server" ForeColor="Red" Text="All * are Mandatory inputs. "></asp:Label>
                   </td>
                    <td></td>
               </tr>
               <tr>
                   <td class="auto-style4"></td>
                   <td></td>
                   <td class="auto-style5">
                       <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label></td>
                    <td></td>
               </tr>
           </table>
       </div>
       
   </div>
</asp:Content>
