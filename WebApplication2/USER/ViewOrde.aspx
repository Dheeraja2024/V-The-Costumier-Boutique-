<%@ Page Title="" Language="C#" MasterPageFile="~/USER/User.Master" AutoEventWireup="true" CodeBehind="ViewOrde.aspx.cs" Inherits="WebApplication2.USER.ViewOrde" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 202px;
        }
        .auto-style3 {
            width: 50%;
            float: right;
            height: 406px;
            border:solid;
        }
        .auto-style4 {
            height: 432px;
        }
        .auto-style5 {
            height: 59px;
        }
        .auto-style6 {
            width: 228px;
        }
        .auto-style7 {
            height: 59px;
            width: 228px;
        }
        .auto-style8 {
            width: 86%;
            height: 328px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style4">
        <div style="width:40%;float:left"><asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False"  Width="533px" AllowPaging="True" OnPageIndexChanging="GridView2_PageIndexChanging" PageIndex="1" OnSelectedIndexChanging="GridView2_SelectedIndexChanging">
            <Columns>
                <asp:BoundField DataField="pro_name" HeaderText="PRODUCT CODE" />
                <asp:BoundField DataField="Date" HeaderText="ORDER DATE" />
                <asp:CommandField SelectText="VIEW DETAILS" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        
        </div>
        <div class="auto-style3">
            <br /><br />
            <center>
            <table class="auto-style8">
                <tr>
                    <td rowspan="6" class="auto-style2">
                        <asp:Image ID="Image2" runat="server" Width="200px" Height="310px"/></td>
                    <td class="auto-style6">
                        <asp:Label ID="Label1" runat="server" Text="PRODUCT CODE " Font-Bold="True" ForeColor="#000066"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text=":"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lbl_productCode" runat="server" Text="Label" Font-Bold="True" ForeColor="#333399"></asp:Label>
                    </td>
                </tr>
                <tr>
                    
                    <td class="auto-style6">
                        <asp:Label ID="Label4" runat="server" Text="PRODUCT PRICE"  Font-Bold="True" ForeColor="#000066"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text=":"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lbl_productPrice" runat="server" Text="Label"  Font-Bold="True" ForeColor="#000066"></asp:Label>
                    </td>
                </tr>
                <tr>
                    
                    <td class="auto-style6">
                        <asp:Label ID="Label7" runat="server" Text="QUANTITY"  Font-Bold="True" ForeColor="#000066"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text=":"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lbl_quantity" runat="server" Text="Label"  Font-Bold="True" ForeColor="#000066"></asp:Label>
                    </td>
                </tr>
                <tr>
                   
                    <td class="auto-style6">
                        <asp:Label ID="Label10" runat="server" Text="TOTAL PRICE"  Font-Bold="True" ForeColor="#000066"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label11" runat="server" Text=":"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lbl_totalPrice" runat="server" Text="Label"  Font-Bold="True" ForeColor="#000066"></asp:Label>
                    </td>
                </tr>
                <tr>
                    
                    <td class="auto-style7">
                        <asp:Label ID="Label13" runat="server" Text="ORDER DATE"  Font-Bold="True" ForeColor="#000066"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="Label14" runat="server" Text=":"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:Label ID="lbl_orderDate" runat="server" Text="Label"  Font-Bold="True" ForeColor="#000066"></asp:Label>
                    </td>
                </tr>
                <tr>
                    
                    <td class="auto-style6">
                        <asp:Label ID="Label16" runat="server" Text="PRODUCT STATUS"  Font-Bold="True" ForeColor="#000066"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label17" runat="server" Text=":"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lbl_productStatus" runat="server" Text=""  Font-Bold="True" ForeColor="#000066"></asp:Label>
                    </td>
                </tr>
                
            </table>
            </center>
        </div>
    </div>
</asp:Content>
