<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN TEMPLATE/AdimDesign.Master" AutoEventWireup="true" CodeBehind="CATEGORY_EDITING.aspx.cs" Inherits="WebApplication2.ADMIN.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
             width: 50%;
            border-style: solid;
            border-color: inherit;
            border-width: 5px;
            margin: auto;
            padding: 10px;
            left: 0px;
            top: 0px;
            width: 740px;
        }
        .auto-style7 {
            width: 295px;
        }
        .auto-style8 {
            width: 24px;
        }
        .auto-style9 {
            width: 23px;
            height: 28px;
        }
        .auto-style10 {
            width: 50%;
            border-style: solid;
            border-color: inherit;
            border-width: 5px;
            margin: auto;
            padding: 10px;
            left: 0px;
            top: 26px;
            width: 632px;
            height: 519px;
        }
        .auto-style11 {
            left: 3px;
            top: -66px;
            height: 602px;
        }
        .auto-style12 {
            width: 100%;
            height: 483px;
        }
        .auto-style14 {
            width: 23px;
            height: 22px;
        }
        .auto-style15 {
            width: 23px;
            height: 180px;
        }
        .auto-style16 {
            height: 2px;
        }
        .auto-style17 {
            width: 160px;
            height: 65px;
        }
        .auto-style18 {
            height: 65px;
        }
        .auto-style22 {
            height: 24px;
        }
        .auto-style23 {
            width: 160px;
        }
        .auto-style24 {
            width: 100%;
            left: 4px;
            top: -159px;
            height: 533px;
            background-size: cover;
            min-height: auto;
            border-style: solid;
            border-color: inherit;
            border-width: 5px;
            margin-left: auto;
            margin-right: auto;
            margin-top: 70px;
            margin-bottom: auto;
            padding: 10px;
            background-repeat: no-repeat;
            background-position: center;
        }
        .auto-style25 {
            left: 193px;
            top: 22px;
            width: 651px;
            height: 450px;
        }
        .auto-style26 {
            width: 754px;
            height: 357px;
        }
        .auto-style28 {
            width: 212px;
            height: 86px;
        }
        .auto-style29 {
            width: 24px;
            height: 86px;
        }
        .auto-style30 {
            width: 295px;
            height: 86px;
        }
        .auto-style31 {
            height: 86px;
        }
        .auto-style32 {
            width: 212px;
        }
        .auto-style36 {
            float: left;
            left: 37px;
            top: -3px;
            width: 1495px;
            height: 399px;
        }
        .auto-style37 {
            left: 0px;
            top: 0px;
            height: 331px;
        }
        .auto-style38 {
            width: 212px;
            height: 11px;
        }
        .auto-style39 {
            width: 24px;
            height: 11px;
        }
        .auto-style40 {
            width: 295px;
            height: 11px;
        }
        .auto-style41 {
            height: 11px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style37">
    <br />
    <div class="auto-style36" >
        <asp:GridView ID="GridView1" runat="server" Width="1481px" CellPadding="4" DataKeyNames="Cat_id" ForeColor="#333333" GridLines="None" OnRowDeleting="GridView1_RowDeleting" AutoGenerateColumns="False" CssClass="mt-0" Height="382px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" OnCommand="LinkButton1_Command" CommandArgument='<%# Eval("Cat_id") %>'>VIEW</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField></asp:TemplateField>
                <asp:CommandField DeleteText="DELETE" ShowDeleteButton="True" >
                <ControlStyle BackColor="#009999" ForeColor="#FF0066" />
                </asp:CommandField>
                <asp:BoundField DataField="Cat_id" HeaderText="NO." />
                <asp:BoundField DataField="Cat_name" HeaderText="CATEGORY NAME" />
                <asp:BoundField DataField="Cat_description" HeaderText="CATEGORY DESCRIPTION" />
                <asp:BoundField DataField="Cat_status" HeaderText="STATUS" />
            </Columns>
           
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" ForeColor="#003399" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#666666" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
           
        </asp:GridView>
    </div>
            
   <%--</asp:Panel>--%>
        </asp:Panel>
    <br />
    <br />
    <%--<asp:Panel ID="Panel2" runat="server" Visible="False"  style="background-image:url(images/slider_1.jpg)">--%>
    <asp:Panel ID="Panel2" runat="server" Visible="False" BackImageUrl="~/images/background_black.jpg" CssClass="auto-style11">
    <div CssClass="auto-style3" class="auto-style10">

        <table class="auto-style12">
            <tr>
                <td  rowspan="5" class="auto-style23">
                    <asp:Image ID="Image1" runat="server" Height="379px" Width="269px" CssClass="mt-0" />
                </td>
                
                <td class="auto-style22">
                    
                </td>
              
            </tr>
            <tr>
                
                <td class="auto-style14">
                    
                    &nbsp;</td>
                
               
            </tr>
          <%--  <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                
            </tr>--%>
            <tr>
                
                <td class="auto-style9">
                   <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="White" Text="CATEGORY NAME   "></asp:Label>
                    <asp:TextBox ID="txt_cat_name" runat="server" Height="30px" Width="269px"></asp:TextBox>
                   
                    
                </td>
                
              
            </tr>
            <%--<tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
               
            </tr>--%>
            <tr>
                
                <td class="auto-style15">
                   <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="White" Text="DESCRIPTION"></asp:Label>
                    <asp:TextBox ID="txt_cat_description" runat="server" Height="137px" TextMode="MultiLine" Width="268px" CssClass="mt-0"></asp:TextBox>
                </td>
               
                
            </tr>
            <%--<tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>
                   
                </td>
                
            </tr>--%>
            <tr>
                
              
                <td class="auto-style16">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="White" Text="STATUS"></asp:Label>
                    <asp:TextBox ID="txt_status" runat="server" Height="40px" Width="265px"></asp:TextBox>
                </td>
             
            </tr>
            <tr>
                <td class="auto-style17">
                     <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Small" OnClick="Button1_Click" Text="VIEW ALL CATEGORY" />
                </td>
              
                <td class="auto-style18">
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">UPDATE DETAILS</asp:LinkButton>
                   
                    
                </td>
                
            </tr>
            
        </table>

    </div>
    </asp:Panel>
    <asp:Panel  ID="Panel3" runat="server" CssClass="auto-style24" Visible="False" BackImageUrl="~/images/background3.jpg" >
        <div class="auto-style25">

        <table class="auto-style26">
            <tr>
                <td class="auto-style38"></td>
                <td class="auto-style39"></td>
                <td class="auto-style40"></td>
                <td class="auto-style41"></td>
            </tr>
            <tr>
                <td class="auto-style28">
                    <asp:Label ID="Label9" runat="server" Text="CATEGORY NAME   " Font-Bold="True" Font-Size="Larger" ForeColor="#000066"></asp:Label>
                </td>
                <td class="auto-style29">
                    <asp:Label ID="Label10" runat="server" Text=":" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
                <td class="auto-style30">
                    <asp:TextBox ID="txt_up_name" runat="server" Height="35px" Width="263px"></asp:TextBox></td>
                <td class="auto-style31">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_up_name" ErrorMessage="Enter category" ForeColor="#990033" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
                </td>
            </tr>
           
            <tr>
                <td class="auto-style32">
                    <asp:Label ID="Label11" runat="server" Text="DESCRIPTION" Font-Bold="True" Font-Size="Larger" ForeColor="#000066"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:Label ID="Label12" runat="server" Text=":" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txt_up_description" runat="server" Height="137px" TextMode="MultiLine" Width="268px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_up_description" ErrorMessage="Enter description" ForeColor="Red" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
                </td>
            </tr>
            
            <tr>
                <td class="auto-style32">
                    <asp:Label ID="Label13" runat="server" Text="PHOTO" Font-Bold="True" Font-Size="Larger" ForeColor="#000066"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:Label ID="Label14" runat="server" Text=":" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:FileUpload ID="FileUpload1_update" runat="server" Height="40px" Width="266px" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FileUpload1_update" ErrorMessage="Upload image" ForeColor="Red" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
                </td>
            </tr>
           
            <tr>
                <td class="auto-style32">
                    <asp:Label ID="Label15" runat="server" Text="STATUS" Font-Bold="True" Font-Size="Larger" ForeColor="#000066"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:Label ID="Label16" runat="server" Text=":" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txt_up_status" runat="server" Height="40px" Width="265px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_up_status" ErrorMessage="Enter AVAILABLE or OUT OF STOCK" ForeColor="Red" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Button ID="Button2" runat="server" Text="UPDATE " OnClick="Button2_Click" BackColor="#000066" Font-Bold="True" Font-Size="Medium" ForeColor="#FFCCFF" Width="154px" />&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" OnClick="LinkButton3_Click" Font-Size="Medium" ForeColor="#660066">CANCEL UPDATING</asp:LinkButton>
                </td>
                <td>
                    <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label></td>
            </tr>
        </table>

    </div>
    </asp:Panel>

</asp:Content>
