<%@ Page Title="" Language="C#" MasterPageFile="~/USER/User.Master" AutoEventWireup="true" CodeBehind="CATEGORY_ADMIN.aspx.cs" Inherits="WebApplication2.ADMIN.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
          .box1 {
           flex:5;                /* Make each div take equal space */
            margin: 0 10px;        /* Space between the divs */
            padding: 20px;         /* Padding inside each box */
            background-color: #f0f0f0; /* Optional: Background color */
           /* text-align: center;     /* Center text inside the boxes */
            border: 1px solid #aaa; /* Optional: Border around each box */
        }
        .container1 {
            display: flex;           /* Use Flexbox for horizontal layout */
            justify-content: space-between; /* Space out the divs */
            margin: 20px;           /* Margin around the container */
            padding: 10px;          /* Padding inside the container */
            border: 1px solid #ccc; /* Optional: Border around the container */
        }
      
        .auto-style3 {
            height: 23px;
            width: 282px;
        }
      
        .auto-style4 {
            width: 282px;
        }
      
        .auto-style5 {
            flex: 1; /* Make each div take equal space */
            margin: 0 10px;/* Space between the divs */
            padding: 20px;/* Padding inside each box */
            background-color: #f0f0f0; /* Optional: Background color */ /* text-align: center;     /* Center text inside the boxes */
            border: 1px solid #aaa;
            left: 0px;
            top: 0px;
            width: 240px;
        }
      
        .auto-style6 {
            left: 0px;
            top: 0px;
            width: 1325px;
        }
        .auto-style7 {
            flex: 5; /* Make each div take equal space */
            margin: 0 10px;/* Space between the divs */
            padding: 20px;/* Padding inside each box */
           /* background-color: #f0f0f0;  Optional: Background color */ /* text-align: center;     /* Center text inside the boxes */;
            border: 1px solid #aaa;
            left: 0px;
            top: 0px;
            width: 889px;
        }
      
        .auto-style8 {
            left: 19px;
            top: -43px;
            width: 100%;
            height: 277px;
            background-size: cover;
            min-height: auto;
            margin-top: 70px;
            background-repeat: no-repeat;
            background-position: center;
        }
      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container1">
        <div class="auto-style5">
        <asp:Panel ID="Panel1" runat="server" >
            <table class="w-100">
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label4" runat="server" Text="CATEGORY NAME :" Font-Bold="True" Font-Size="Small"></asp:Label></td>
               
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:TextBox ID="txt_cat_name" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="ENTER CATEGORY NAME" ControlToValidate="txt_cat_name" ForeColor="Red"></asp:RequiredFieldValidator></td>
                   
                   
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label1" runat="server" Text="CATEGORY IMAGE :" Font-Bold="True" Font-Size="Small"></asp:Label></td>
               
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:FileUpload ID="FileUpload1" runat="server" /></td>
                   
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Kindly upload image" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label2" runat="server" Text="CATEGORY DESCRIPTION  :" Font-Bold="True" Font-Size="Small"></asp:Label></td>
                
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:TextBox ID="txt_cat_description" runat="server" Height="131px" TextMode="MultiLine" Width="209px"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_cat_description" ErrorMessage="Enter description" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" Text="ADD CATEGORY" OnClick="Button1_Click" Font-Bold="True" Font-Size="Small" /> 
                      
                      
                        
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" OnClick="LinkButton1_Click1">EDIT CATEGORY</asp:LinkButton></td>
                </tr>
            </table>
            
        </asp:Panel>
            </div>
        <div class="auto-style7">
        <asp:Panel ID="Panel2" runat="server" CssClass="auto-style8" >
            <asp:GridView ID="GridView1" runat="server" Width="864px" AllowPaging="True" Height="241px" PageIndex="1" PageSize="6" OnPageIndexChanging="GridView1_PageIndexChanging1"  >
            </asp:GridView>
        </asp:Panel>
        </div>
    </div>

</asp:Content>
