<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN TEMPLATE/AdimDesign.Master" AutoEventWireup="true" CodeBehind="ADMIN_HOME.aspx.cs" Inherits="WebApplication2.ADMIN.ADMIN_HOME" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style type="text/css">
     
        .auto-style7 {
            left: 0px;
            top: -60px;
            height: 474px;
            width: 100%;
            background-size: cover;
            min-height: auto;
            margin-top: 70px;
            background-repeat: no-repeat;
            background-position: center;
            background-image:url()
        }
        .auto-style8 {
            left: 295px;
            top: 63px;
            height: 457px;
            width: 690px;
        }
  
        .auto-style15 {
            float: left;
            width: 33%;
            left: 0px;
            top: 114px;
            height: 255px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="auto-style7" style="background-image:url(images/slider_1.jpg)" >
        <div class="auto-style8">
            <div class="auto-style15">
                <br />
                <asp:Button ID="Button1" runat="server"   Text="ADD CATEGORY" BackColor="#660033" BorderColor="#666699" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="200px" Width="200px" OnClick="Button1_Click" style="border-radius:50%" />
            </div>
            <div class="auto-style15">
                <br />
                <asp:Button ID="Button2" runat="server" Text="ADD PRODUCT" BackColor="#660033" BorderColor="#666699" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="200px" Width="200px" OnClick="Button2_Click"  style="border-radius:50%"/>
               </div>
        </div>
<%--                <table class="auto-style5">
                  
                    <tr>
                        <td class="auto-style4"></td>
                        <td class="auto-style4">
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="200px" Width="200px" ImageUrl="~/CATEGORY IMAGE/category.png" OnClick="ImageButton1_Click" />
                        </td>
                        
                        <td class="auto-style4" >
                            &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" Height="200px" Width="200px" ImageUrl="~/CATEGORY IMAGE/product1.png"  BorderStyle="Ridge"  CssClass="offset-sm-0" OnClick="ImageButton2_Click" />
                            
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;</td>
                        <td>&nbsp;</td>
                     
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="ADD / EDIT CATEGORY" Font-Bold="True" Font-Size="Medium" ForeColor="Black"></asp:Label></td>
                        
                        <td class="auto-style3">
                            <asp:Label ID="Label2" runat="server" Text="ADD /EDIT PRODUCTS" Font-Bold="True" Font-Size="Medium"></asp:Label></td>
                    </tr>
                </table>--%>
          
    </div>
</asp:Content>
