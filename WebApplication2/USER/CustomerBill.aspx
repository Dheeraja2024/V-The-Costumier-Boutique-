<%@ Page Title="" Language="C#" MasterPageFile="~/USER/User.Master" AutoEventWireup="true" CodeBehind="CustomerBill.aspx.cs" Inherits="WebApplication2.USER.CustomerBill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 31%;
        }
        .auto-style7 {
            width: 34px;
        }
        .auto-style9 {
            width: 7%;
        }
        .auto-style10 {
            width: 34px;
            height: 38px;
        }
        .auto-style11 {
            width: 56%;
            height: 38px;
        }
        .auto-style14 {
            width: 34px;
            height: 85px;
        }
        .auto-style17 {
            width: 31%;
            height: 85px;
        }
        .auto-style19 {
            width: 325px;
            height: 117px;
        }
        .auto-style21 {
            width: 128px;
        }
        .auto-style23 {
            width: 128px;
            height: 36px;
        }
        .auto-style24 {
            height: 36px;
        }
        .auto-style25 {
            width: 75px;
        }
        .auto-style26 {
            width: 70%;
        }
        .auto-style27 {
            height: 978px;
        }
        .auto-style29 {
            width: 56%;
            height: 85px;
        }
        .auto-style30 {
            width: 56%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style27" >
         <div style="width:50%;float: left;">
                    <div style="width:90%;padding:50px">
                    <br />
                    <p aria-atomic="False">
                      
                    <h3><u>Estimated Time</u></h3>

                </p>
                    <p aria-atomic="False">
                       <h4> Dispatch time – 70 to 90 working days.</h4><br />
                        Product dispatch time may increase or decrease depends on the manufacturing.<br />
                            <br />
                        &nbsp;NB : Please note that the colours in the images can slightly vary from the original product due to lighting/ camera lens and Website image compression.

                        <br />
                        <br />
                       <span style="color:goldenrod"> Tracking and Shipment based complaints raised after 30 days from the date of product dispatch will not be taken into consideration.</span>

                        <br />
                        <br />
                        After receiving the product, if there are any complaints, you should respond within 24 hours.

                        A detailed video showing the opening of the package must be provided for return and refund purposes.&nbsp;</p>
                    </div>
        </div>
        
           
         <div style="border-style: solid; border-color: inherit; border-width: medium; width:50%;float:right" >
                               
                            <table>
                                <tr>
                                    <td rowspan="3" colspan="2">
                                        <img alt="" class="auto-style19" src="../images/v_coutier%20logo.png" /></td>
                   
                   
                   
                                </tr>
                                <tr>
                    
                                    <td colspan="2" >
                                        <asp:Label ID="Label1" runat="server" Text="INVOICE" Font-Size="XX-Large" ForeColor="#000066" Font-Bold="True"></asp:Label></td>
                    
                                </tr>
                                <tr>
                    
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style4">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="4">&nbsp;</td>
                    
                                </tr>
                                <tr>
                                    <td colspan="4">
                                     <u>  <asp:Label ID="Label2" runat="server" Text="BILLED TO :" Font-Bold="True" Font-Size="Large"></asp:Label> </u> </td>
                  
                                </tr>
                                <tr>
                                    <td class="auto-style10">
                                        <asp:Label ID="Label3" runat="server" Text="Name "></asp:Label>
                                    </td>
                                    <td class="auto-style11">: 
                                        <asp:Label ID="lbl_name" runat="server" Text="Label"></asp:Label>
                                    </td>
                    
                    
                                </tr>
                                <tr>
                                    <td class="auto-style7">
                                        <asp:Label ID="Label4" runat="server" Text="Phone "></asp:Label>
                                    </td>
                                    <td class="auto-style30">: 
                                        <asp:Label ID="lbl_phone" runat="server" Text="Label"></asp:Label>
                                    </td>
                   
                                    <td class="auto-style4">
                                        <asp:Label ID="Label7" runat="server" Text="Date :"></asp:Label>
                                        &nbsp;
                                        <asp:Label ID="lbl_date" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style14">
                                        <asp:Label ID="Label5" runat="server" Text="Address "></asp:Label>
                                    </td>
                                    <td class="auto-style29">: 
                                        <asp:Label ID="lbl_address" runat="server" Text="Label"></asp:Label>
                                    </td>
                    
                                    <td class="auto-style17">
                                        <asp:Label ID="Label8" runat="server" Text="INVOICE NO."></asp:Label>
                                        <br />
                                        <asp:Label ID="lbl_invoice" runat="server" Text="Label" Font-Bold="True" Font-Size="Small"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style7">
                                        <asp:Label ID="Label6" runat="server" Text="PIN "></asp:Label>
                                    </td>
                                    <td class="auto-style30">: 
                                       <asp:Label ID="lbl_pinCode" runat="server" Text="Label"></asp:Label>
                                    </td>
                   
                                    <td class="auto-style4">&nbsp;</td>
                                </tr>
                                
                            </table>
                                
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="806px">
                 <Columns>
                     <asp:BoundField DataField="pro_name" HeaderText="PRODUCT CODE" />
                     <asp:BoundField DataField="pro_price" HeaderText="PRICE" />
                     <asp:BoundField DataField="Quantity" HeaderText="QUANTITY" />
                     <asp:BoundField DataField="Total_price" HeaderText="TOTAL AMOUNT" />
                 </Columns>
                
             </asp:GridView>
             <br />
                                   <table class="auto-style26">
                                       <tr>
                                           <td colspan="2" rowspan="4" class="auto-style25">
                                              <center> <asp:Label ID="Label16" runat="server" Text="THANK YOU !" Font-Bold="True" Font-Size="X-Large"></asp:Label></center>
                                           </td>
                                        
                                           <td class="auto-style23">
                                               <asp:Label ID="Label10" runat="server" Text="SUBTOTAL"></asp:Label>
                                           </td>
                                           <td class="auto-style24">
                                               <asp:Label ID="lbl_total" runat="server" Text="Label"></asp:Label></td>
                                       </tr>
                                       
                                       <tr>
                                           
                                         
                                           
                                           <td class="auto-style21">
                                               <asp:Label ID="Label11" runat="server" Text="TAX"></asp:Label>
                                           </td>
                                           <td>
                                               <asp:Label ID="Label14" runat="server" Text="5 %"></asp:Label>
                                           </td>
                                       </tr>
                                       <tr>
                                         
                                          
                                           <td class="auto-style21">
                                               <asp:Label ID="Label12" runat="server" Text="TOTAL AMOUNT"></asp:Label>
                                           </td>
                                           <td>
                                               <asp:Label ID="lbl_totalAmount" runat="server" Text="Label"></asp:Label>
                                           </td>
                                       </tr>
                                   </table>
                                   <br />
                                   
                           </div>
         <br />
         <asp:Button ID="Button1" runat="server" Text="PROCEED PAYMENT" Width="257px" Height="61px"   OnClick="Button1_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="Button2" runat="server" Text="BACK TO SHOPPING" Width="278px" Height="58px" OnClick="Button2_Click" />
    </div>
</asp:Content>
