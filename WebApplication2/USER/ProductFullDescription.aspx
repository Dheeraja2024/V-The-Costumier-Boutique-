<%@ Page Title="" Language="C#" MasterPageFile="~/USER/User.Master" AutoEventWireup="true" CodeBehind="ProductFullDescription.aspx.cs" Inherits="WebApplication2.USER.ProductFullDescription" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 1358px;
        }
        .auto-style3 {
            width: 177px;
        }
        .auto-style4 {
            width: 74px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table class="auto-style2">
            <tr>
                <td rowspan="6" class="auto-style3">
                    <asp:Image ID="Image1" runat="server" Height="343px" Width="300px" /></td>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Label ID="lblProductName" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Product Description :"></asp:Label>
                </td>

            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="344px" Width="863px" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td class="auto-style4"></td>             
                <td></td>

            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Price : INR"></asp:Label>
                &nbsp;
                    <asp:Label ID="lblProductPrice" runat="server" Text="Label"></asp:Label>
                </td>

            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="QUANTITY :"></asp:Label>
                    <asp:TextBox ID="txt_count" runat="server" Width="44px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_count" ErrorMessage="* Enter Count of product"></asp:RequiredFieldValidator>
                </td>

            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="ADD TO CART" OnClick="Button1_Click" />
&nbsp; <asp:Button ID="Button2" runat="server" Text="Continue Shoping" />
                </td>
                <td class="auto-style4"></td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="PRODUCT STATUS :"></asp:Label>
                &nbsp;
                    <asp:Label ID="lblProductStatus" runat="server" Text="Label"></asp:Label>
                </td>

            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                </td>
                <td></td>

            </tr>
           <tr>
               <td class="auto-style3"></td>
           </tr>
        </table>
    </div>
</asp:Content>
