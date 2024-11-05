<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN TEMPLATE/AdimDesign.Master" AutoEventWireup="true" CodeBehind="PRODUCT_EDITING.aspx.cs" Inherits="WebApplication2.ADMIN.PRODUCT_EDITING" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style3 {
            left: 0px;
            top: 0px;
        }
        .auto-style4 {
            border: 5px solid;
              margin: auto;
              width: 50%;
              padding: 10px;
   
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <asp:Panel ID="Panel1" runat="server">
    <div class="auto-style4">
       <table class="auto-style6">
           <tr>
               <td></td>
               <td></td>
               <td> <h3>VIEW&nbsp; PRODUCT<br /><br /></h3></td>
           </tr>
          
           <tr>
               <td class="auto-style3">
                   <asp:Label ID="Label1" runat="server" Text="CATEGORY"></asp:Label>
               </td>
               <td class="auto-style11">:</td>
               <td class="auto-style9">
                   <asp:TextBox ID="txt_category" runat="server" Height="27px" Width="199px"></asp:TextBox>
               </td>
               
           <tr>
               <td class="auto-style3"></td>
               <td class="auto-style11"></td>
               <td class="auto-style9">
                   &nbsp;</td>
           </tr>
           <tr>
               <td class="auto-style7">
                   <asp:Label ID="Label2" runat="server" Text="PROCUCT NAME"></asp:Label>
               </td>
               <td class="auto-style8">
                   <asp:Label ID="Label3" runat="server" Text=":"></asp:Label></td>
               <td class="auto-style10">
                   <asp:TextBox ID="txt_name" runat="server" Height="27px" Width="206px"></asp:TextBox>
               </td>
               
           </tr>
            <tr>
               <td class="auto-style3"></td>
               <td class="auto-style11"></td>
               <td class="auto-style9">
                   &nbsp;</td>
           </tr>
           <tr>
               <td class="auto-style3">
                   <asp:Label ID="Label4" runat="server" Text="PHOTO"></asp:Label>
               </td>
               <td class="auto-style11">
                   <asp:Label ID="Label5" runat="server" Text=":"></asp:Label>
               </td>
               <td class="auto-style9">
                  <%-- <asp:FileUpload ID="FileUpload1" runat="server" />--%>
                   <asp:Image ID="Image1" runat="server" Height="229px" Width="229px" />
               </td>
               
           </tr>
            <tr>
               <td class="auto-style3"></td>
               <td class="auto-style11"></td>
               <td class="auto-style9">
                   &nbsp;</td>
           </tr>
           <tr>
               <td class="auto-style3">
                   <asp:Label ID="Label6" runat="server" Text="PRODUCT DESCRIPTION"></asp:Label>
               </td>
               <td class="auto-style11">
                   <asp:Label ID="Label7" runat="server" Text=":"></asp:Label>
               </td>
               <td class="auto-style9">
                   <asp:TextBox ID="txt_description" runat="server" TextMode="MultiLine" Height="149px" Width="362px"></asp:TextBox>
               </td>
               
           </tr>
            <tr>
               <td class="auto-style3"></td>
               <td class="auto-style11"></td>
               <td class="auto-style9">
                   &nbsp;</td>
           </tr>
           
           <tr>
               <td class="auto-style3">
                   <asp:Label ID="Label8" runat="server" Text="PRICE"></asp:Label>
               </td>
               <td class="auto-style11">
                   <asp:Label ID="Label9" runat="server" Text=":"></asp:Label>
               </td>
               <td class="auto-style9">
                   <asp:TextBox ID="txt_price" runat="server" Height="27px" Width="206px"></asp:TextBox>
               </td>
              
           </tr>
            <tr>
               <td class="auto-style3"></td>
               <td class="auto-style11"></td>
               <td class="auto-style9">
                   &nbsp;</td>
           </tr>
           <tr>
               <td class="auto-style3">
                   <asp:Label ID="Label10" runat="server" Text="STOCK"></asp:Label>
               </td>
               <td class="auto-style11">
                   <asp:Label ID="Label11" runat="server" Text=":"></asp:Label>
               </td>
               <td class="auto-style9">
                   <asp:TextBox ID="txt_stock" runat="server" Height="27px" Width="206px"></asp:TextBox>
               </td>
               
           </tr>
            <tr>
               <td class="auto-style3"></td>
               <td class="auto-style11"></td>
               <td class="auto-style9">
                   &nbsp;</td>
           </tr>
           
           <tr>
               <td class="auto-style3">&nbsp;</td>
               <td class="auto-style11">&nbsp;</td>
               <td class="auto-style9">
                   <asp:Button ID="Button1" runat="server" Text="BACK" OnClick="Button1_Click"  />
                   &nbsp;&nbsp;&nbsp
                   <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" OnClick="LinkButton1_Click">UPDATE PRODUCT DETAILS</asp:LinkButton>
               </td>
               
           </tr>
           <%--<tr>
               <td class="auto-style3">&nbsp;</td>
               <td class="auto-style11">&nbsp;</td>
               <td class="auto-style9">&nbsp;</td>
               
           </tr>--%>
           <tr>
               <td class="auto-style3">&nbsp;</td>
               <td class="auto-style11">&nbsp;</td>
               <td class="auto-style9">
                   <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
               </td>
         
           </tr>
       </table>
        <div></div>
        <div></div>
    </div>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server" Visible="False">
        <div class="auto-style4">
            <table class="auto-style6">
           <tr>
               <td></td>
               <td></td>
               <td> <h3>UPDATE PRODUCT<br /><br /></h3></td>
           </tr>
          
           <tr>
               <td class="auto-style3">
                   <asp:Label ID="Label13" runat="server" Text="CATEGORY"></asp:Label>
               </td>
               <td class="auto-style11">:</td>
               <td class="auto-style9">
                   <asp:DropDownList ID="DropDownList1" runat="server" Height="27px" Width="206px">
                   </asp:DropDownList>
               </td>
               
           <tr>
               <td class="auto-style3"></td>
               <td class="auto-style11"></td>
               <td class="auto-style9">
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="* Select Category" ForeColor="Red"></asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
               <td class="auto-style7">
                   <asp:Label ID="Label14" runat="server" Text="PROCUCT NAME"></asp:Label>
               </td>
               <td class="auto-style8">
                   <asp:Label ID="Label15" runat="server" Text=":"></asp:Label></td>
               <td class="auto-style10">
                   <asp:TextBox ID="txt_up_name" runat="server" Height="52px" Width="207px" TextMode="MultiLine"></asp:TextBox>
               </td>
               
           </tr>
            <tr>
               <td class="auto-style3"></td>
               <td class="auto-style11"></td>
               <td class="auto-style9">
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_up_name" ErrorMessage="Enter Product Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
           </tr>
           <tr>
               <td class="auto-style3">
                   <asp:Label ID="Label16" runat="server" Text="PHOTO"></asp:Label>
               </td>
               <td class="auto-style11">
                   <asp:Label ID="Label17" runat="server" Text=":"></asp:Label>
               </td>
               <td class="auto-style9">
                   <asp:FileUpload ID="FileUpload1" runat="server" />
               </td>
               
           </tr>
            <tr>
               <td class="auto-style3"></td>
               <td class="auto-style11"></td>
               <td class="auto-style9">
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Upload photo" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
           </tr>
           <tr>
               <td class="auto-style3">
                   <asp:Label ID="Label18" runat="server" Text="PRODUCT DESCRIPTION"></asp:Label>
               </td>
               <td class="auto-style11">
                   <asp:Label ID="Label19" runat="server" Text=":"></asp:Label>
               </td>
               <td class="auto-style9">
                   <asp:TextBox ID="txt_up_description" runat="server" TextMode="MultiLine" Height="86px" Width="211px"></asp:TextBox>
               </td>
               
           </tr>
            <tr>
               <td class="auto-style3"></td>
               <td class="auto-style11"></td>
               <td class="auto-style9">
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_up_description" ErrorMessage="Enter Description" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
           </tr>
           
           <tr>
               <td class="auto-style3">
                   <asp:Label ID="Label20" runat="server" Text="PRICE"></asp:Label>
               </td>
               <td class="auto-style11">
                   <asp:Label ID="Label21" runat="server" Text=":"></asp:Label>
               </td>
               <td class="auto-style9">
                   <asp:TextBox ID="txt_up_price" runat="server" Height="27px" Width="206px"></asp:TextBox>
               </td>
              
           </tr>
            <tr>
               <td class="auto-style3"></td>
               <td class="auto-style11"></td>
               <td class="auto-style9">
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Price" ControlToValidate="txt_up_price" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
           </tr>
           <tr>
               <td class="auto-style3">
                   <asp:Label ID="Label22" runat="server" Text="STOCK"></asp:Label>
               </td>
               <td class="auto-style11">
                   <asp:Label ID="Label23" runat="server" Text=":"></asp:Label>
               </td>
               <td class="auto-style9">
                   <asp:TextBox ID="txt_up_stock" runat="server" Height="27px" Width="206px"></asp:TextBox>
               </td>
               
           </tr>
            <tr>
               <td class="auto-style3"></td>
               <td class="auto-style11"></td>
               <td class="auto-style9">
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Stock Details" ControlToValidate="txt_up_stock" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
           </tr>
           
           <tr>
               <td class="auto-style3">&nbsp;</td>
               <td class="auto-style11">&nbsp;</td>
               <td class="auto-style9">
                   <asp:Button ID="Button2" runat="server" Text="UPDATE PRODUCT" OnClick="Button2_Click" />
                   &nbsp;&nbsp;&nbsp
                   <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" OnClick="LinkButton2_Click" >CANCEL </asp:LinkButton>
               </td>
               
           </tr>
           <%--<tr>
               <td class="auto-style3">&nbsp;</td>
               <td class="auto-style11">&nbsp;</td>
               <td class="auto-style9">&nbsp;</td>
               
           </tr>--%>
           <tr>
               <td class="auto-style3">&nbsp;</td>
               <td class="auto-style11">&nbsp;</td>
               <td class="auto-style9">
                   <asp:Label ID="Label24" runat="server" Text="Label"></asp:Label>
               </td>
         
           </tr>
       </table></div>
    </asp:Panel>

</asp:Content>
