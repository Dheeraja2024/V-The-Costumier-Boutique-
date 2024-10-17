<%@ Page Title="" Language="C#" MasterPageFile="~/USER/User.Master" AutoEventWireup="true" CodeBehind="USER_PRODUCT_VIEW.aspx.cs" Inherits="WebApplication2.USER.USER_PRODUCT_VIEW" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 146px;
            width: 203px;
        }
        .auto-style4 {
            height: 29px;
            width: 203px;
        }
        .auto-style6 {
            height: 33px;
            width: 203px;
        }
        .auto-style8 {
            width: 15%;
            height: 343px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
        
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" Width="1037px">
            <ItemTemplate>
                <table class="auto-style8">
                    <tr>
                        <td class="auto-style3">
                            <asp:ImageButton ID="ImageButton1" runat="server" Width="200px" height="200px" CommandArgument='<%# Eval("pro_id") %>' ImageUrl='<%# Eval("pro_image") %>' OnCommand="ImageButton1_Command"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6" width="200px">
                             <asp:Label ID="Label4" runat="server" Text="PRODUCT CODE:" Font-Size="X-Small"></asp:Label>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("pro_name") %>' Font-Bold="True" Font-Size="Medium" ForeColor="#CC0099"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4" width="10px">
                            <asp:Label ID="Label2" runat="server" Text="INR :" Font-Size="Small"></asp:Label>
                            &nbsp;<asp:Label ID="Label3" runat="server" Text='<%# Eval("pro_price") %>' Font-Bold="True" Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                    </tr>
                    
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
