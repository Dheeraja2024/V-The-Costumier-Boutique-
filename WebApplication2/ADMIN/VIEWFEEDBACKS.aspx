﻿<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN TEMPLATE/AdimDesign.Master" AutoEventWireup="true" CodeBehind="VIEWFEEDBACKS.aspx.cs" Inherits="WebApplication2.ADMIN.VIEWFEEDBACKS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 1441px;
            margin-right: 815px;
            background-color:black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style2">
        <br />
        <br />
        <br />
        <center>
    <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" Width="849px" AutoGenerateColumns="False" BackColor="White">
        <Columns>
            <asp:BoundField DataField="f_id" HeaderText="Sr No." />
            <asp:BoundField DataField="Name" HeaderText="Customer Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:BoundField DataField="AdminAction" HeaderText="Reply Status" />
            <asp:CommandField SelectText="REPLY" ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
            <br />
            <br />
            
            </center>
    <br />
        </div>
    
</asp:Content>
