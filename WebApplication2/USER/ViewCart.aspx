<%@ Page Title="" Language="C#" MasterPageFile="~/USER/User.Master" AutoEventWireup="true" CodeBehind="ViewCart.aspx.cs" Inherits="WebApplication2.USER.ViewCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    </asp:GridView>
    <br />
    <asp:DataList ID="DataList1" runat="server" Width="1703px">
        <ItemTemplate>
            <table class="w-100">
                <tr>
                    <td rowspan="4">
                        <asp:Image ID="Image1" runat="server" />
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Product Code :"></asp:Label>
                    </td>
                    <td class="auto-style2" >
                        <asp:Label runat="server" Text="Quantity" ></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label runat="server" Text="Total Price"></asp:Label>
                    </td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_productCode" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td rowspan="3">
                        <asp:Label ID="lbl_Quantity" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td rowspan="3">
                        <asp:Label ID="lbl_totalPrice" runat="server" Text="Label"></asp:Label>
                    </td>
                   
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Product Price :"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lbl_producyPrice" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />
</asp:Content>
