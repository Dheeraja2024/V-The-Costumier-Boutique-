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
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Cart_id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
        <Columns>
            <asp:TemplateField HeaderText="Product Image">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("pro_image") %>' Width="70px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="pro_name" HeaderText="Product  Code" />
            <asp:BoundField DataField="pro_price" HeaderText="Price" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
            <asp:BoundField DataField="Total_price" HeaderText="Total Amount" />
            <asp:CommandField ShowEditButton="True" EditText="UPDATE QUANTITY" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <br />
    <br />
    </asp:Content>
   
