<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN TEMPLATE/AdimDesign.Master" AutoEventWireup="true" CodeBehind="PRODUCTS_ADMIN.aspx.cs" Inherits="WebApplication2.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style type="text/css">
        .auto-style3 {
            width: 179px;
        }
        .auto-style4 {
             border-style: solid;
            border-color: inherit;
            border-width: 5px;
            margin: auto;
width: 33%;
            padding: 10px;
            left: 0px;
            top: 0px;
        }
        .auto-style5 {
            background-image: url('~/CATEGORY%20IMAGE/backhground.jpg');
            left: 0px;
            top: 0px;
            height: 1206px;
        }
        .auto-style6 {
            width: 93%;
            height: 433px;
        }
        .auto-style7 {
            width: 179px;
            height: 31px;
        }
        .auto-style8 {
            height: 31px;
            width: 30px;
        }
        .auto-style9 {
            width: 254px;
        }
        .auto-style10 {
            height: 31px;
            width: 254px;
        }
        .auto-style11 {
            width: 30px;
        }
        .auto-style12 {
            border-style: solid;
            border-color: inherit;
            border-width: 5px;
            margin: auto;
            width: 91%;
            padding: 10px;
            left: 0px;
            top: 70px;
            height: 793px;
        }
        .auto-style13 {
            left: 0px;
            top: 1px;
            height: 381px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="auto-style5">
        <asp:Panel ID="Panel1" runat="server" style="background-image:url('../images/slider_1.jpg')">
   <div class="auto-style4" >
       <table class="auto-style6">
           <tr>
               <td></td>
               <td></td>
               <td> <h3>ADD PRODUCT<br /><br /></h3></td>
           </tr>
          
           <tr>
               <td class="auto-style3">
                   <asp:Label ID="Label1" runat="server" Text="CATEGORY"></asp:Label>
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
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_name" ErrorMessage="Enter Product Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
           </tr>
           <tr>
               <td class="auto-style3">
                   <asp:Label ID="Label4" runat="server" Text="PHOTO"></asp:Label>
               </td>
               <td class="auto-style11">
                   <asp:Label ID="Label5" runat="server" Text=":"></asp:Label>
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
                   <asp:Label ID="Label6" runat="server" Text="PRODUCT DESCRIPTION"></asp:Label>
               </td>
               <td class="auto-style11">
                   <asp:Label ID="Label7" runat="server" Text=":"></asp:Label>
               </td>
               <td class="auto-style9">
                   <asp:TextBox ID="txt_description" runat="server" TextMode="MultiLine" Height="86px" Width="211px"></asp:TextBox>
               </td>
               
           </tr>
            <tr>
               <td class="auto-style3"></td>
               <td class="auto-style11"></td>
               <td class="auto-style9">
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_description" ErrorMessage="Enter Description" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
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
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Price" ControlToValidate="txt_price" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
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
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Stock Details" ControlToValidate="txt_stock" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
           </tr>
           
           <tr>
               <td class="auto-style3">&nbsp;</td>
               <td class="auto-style11">&nbsp;</td>
               <td class="auto-style9">
                   <asp:Button ID="Button1" runat="server" Text="ADD PRODUCT" OnClick="Button1_Click" />
                   &nbsp;&nbsp;&nbsp
                   <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" OnClick="LinkButton1_Click">VIEW ALL PRODUCT DETAILS</asp:LinkButton>
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
        </div>
            </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Visible="False" CssClass="auto-style13" >
        <div class="auto-style12">
            <br />
            <br />
            <asp:Label ID="Label13" runat="server" Text="SEARCH BY CATEGORY :" Font-Bold="True" Font-Size="Medium" ForeColor="#000099"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" Height="39px" Width="233px"></asp:DropDownList>
            <asp:Button ID="Button2" runat="server" Text="SEARCH " Font-Bold="True" Font-Size="Medium" ForeColor="#003399" Height="39px" Width="126px" OnClick="Button2_Click" />
            <br />
            <br />
            <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
            <br />
            <br />

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="1064px" AllowPaging="True" PageIndex="1" DataKeyNames="Pro_id" Height="16px" OnRowDeleting="GridView1_RowDeleting" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="7">
                <Columns>
                    <asp:BoundField DataField="pro_id" HeaderText="No." />
                    <asp:BoundField DataField="pro_name" HeaderText="PRODUCT NANE" />
                    <asp:BoundField DataField="pro_price" HeaderText="RATE" />
                    <asp:BoundField DataField="pro_status" HeaderText="STATUS" />
                    <asp:BoundField DataField="pro_stock" HeaderText="No. OF ITEM" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            &nbsp;&nbsp;&nbsp;&nbsp;<table class="w-100">
                                <tr>
                                    <td>
                                        <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("pro_id") %>' OnCommand="LinkButton2_Command" Text="VIEW"></asp:LinkButton>
                                    </td>
                                </tr>
                            </table>
                            &nbsp;
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField></asp:TemplateField>
                    <asp:CommandField DeleteText="DELETE" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
        </div>
        </asp:Panel>

      
    </div>
</asp:Content>
