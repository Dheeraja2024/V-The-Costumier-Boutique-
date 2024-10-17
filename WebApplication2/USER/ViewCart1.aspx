<%@ Page Title="" Language="C#" MasterPageFile="~/USER/User.Master" AutoEventWireup="true" CodeBehind="ViewCart1.aspx.cs" Inherits="WebApplication2.USER.ViewCart1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 180px;
        }
        .auto-style5 {
            width: 52px;
            height: 72px;
        }
        .auto-style6 {
            margin-right: 0px;
        }
        .auto-style7 {
            width: 172px;
            height: 72px;
        }
        .auto-style9 {
            width: 172px;
        }
        .auto-style10 {
            width: 165px;
            height: 72px;
        }
        .auto-style11 {
            width: 165px;
        }
        .auto-style12 {
            width: 57px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    <br />
    <br />
   <%-- <asp:DataList ID="DataList1" runat="server" CssClass="auto-style6" Height="1108px" Width="1770px">
        <ItemTemplate>
            <table class="w-100">
                <tr>
                    <td rowspan="4" class="auto-style12">
                        <asp:Image ID="Image1" runat="server" Height="100px" Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label1" runat="server" Text="Product Code :"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="Label3" runat="server" Text="Quantity"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:Label ID="Label4" runat="server" Text="Total Price"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="lbl_productCode" runat="server" Text="label"></asp:Label>
                    </td>
                    <td rowspan="3">
                        <asp:Label ID="lbl_Quantity" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td rowspan="3" class="auto-style11">
                        <asp:Label ID="lbl_totalPrice" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="Label2" runat="server" Text="Product Price :"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Confirm" />
                    </td>
                  
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style9">
                        <asp:Label ID="lbl_producyPrice" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>--%>
      </asp:Content>
