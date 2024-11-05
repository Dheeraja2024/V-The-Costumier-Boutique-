<%@ Page Title="" Language="C#" MasterPageFile="~/USER/User.Master" AutoEventWireup="true" CodeBehind="CustomerHome.aspx.cs" Inherits="WebApplication2.USER.CustomerHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style3 {
            width: 248px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 248px;
            height: 23px;
        }
        .auto-style6 {
            height: 159px;
        }
        .auto-style7 {
            width: 248px;
            height: 159px;
        }
         .auto-style8 {
             height: 1670px;
         }
         .auto-style9 {
             width: 20%;
             float: left;
             height: 1231px;
             background-color:brown;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style8">
       
        <div style="width:80%;float:right;">
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="SELECT CATEGORY" Font-Names="Mongolian Baiti" Font-Size="XX-Large" ForeColor="#000066"></asp:Label>
            <br />
            <br />
           
            <asp:DataList ID="DataList1" runat="server" Width="995px" RepeatColumns="4" CellPadding="0" ForeColor="#CC0099">
               
                <ItemTemplate>
                   
                    <table class="w-100">
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style3">
                                <asp:ImageButton ID="ImageButton1" runat="server" Width="300px" Height="300px" ImageUrl='<%# Eval("Cat_image") %>' OnCommand="ImageButton1_Command" CommandArgument='<%# Eval("Cat_id") %>'/>
                            </td>
                            
                        </tr>
                      
                        <tr>
                            <td class="auto-style4"></td>
                            <td class="auto-style5">
                               
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Cat_name") %>' Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0099"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6"></td>
                            <td class="auto-style7">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Cat_description") %>' ForeColor="#666666"  ></asp:Label>
                            </td>
                        </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style3">&nbsp;</td>
                        </tr>
                    </table>
                    
                    
                    
                </ItemTemplate>
            </asp:DataList>

        </div>
      
    </div>

</asp:Content>
