using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.USER
{
    public partial class BillPayment : System.Web.UI.Page
    {
        ConnectionClass objcls = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            string insertBankDetailStr = "insert into tbl_BankPayment values('" + Session["uid"] + "','" + txt_bnakName.Text + "','" + txt_accountNumber.Text + "','" + txt_ifscCode.Text + "','" + txt_accountType.Text + "','" + txt_balanceAmount.Text + "')";
            int insertedrRowsCount = objcls.Fun_exe_NonQuery(insertBankDetailStr);
            string accountNumber =Convert.ToString( txt_accountNumber.Text);
            if (insertedrRowsCount==1)
            {
                txt_accountNumber.Text = " ";
                txt_accountType.Text = " ";
                txt_balanceAmount.Text = " ";
                txt_bnakName.Text = " ";
                txt_ifscCode.Text = " ";
            }
            int uid = Convert.ToInt32(Session["uid"].ToString());
            ServiceReference2.ServiceClient obj = new ServiceReference2.ServiceClient();
            //GetUpdateBalanceService.ServiceClient obj = new GetUpdateBalanceService.ServiceClient();
            string balance = obj.GetAccountBalance(uid, accountNumber);
            if(Convert.ToInt32( balance)>= Convert.ToInt32( Session["totalAmount"].ToString()))
            {

                ServiceReference2.ServiceClient obj1 = new ServiceReference2.ServiceClient();
                string operationStatus = obj1.UpdateBalance(Convert.ToInt32(Session["uid"].ToString()), accountNumber, Session["totalAmount"].ToString());
                if (operationStatus == "sucess")
                {
                    string updateAvailability = "update tbl_Order set Status='Payment Paid' where fk_user_id='" + Session["uid"] + "' ";
                    int i= objcls.Fun_exe_NonQuery(updateAvailability);
                    if (i >= 1)
                    {
                        string updateStock = " UPDATE p SET p.pro_stock = p.pro_stock - o.Quantity FROM tbl_product p JOIN tbl_Order o ON p.Pro_id = o.fk_productId WHERE o.fk_user_id ='" + Session["uid"] + "' AND o.Status = 'Payment Paid'";
                        int j=objcls.Fun_exe_NonQuery(updateStock);
                        if(j>=1)
                        {
                            lbl_paymentSuccessMessage.Text = "<h2>Hurray!!!PAYMENT SUCESSFULL.</h2>";
                            Panel2.Visible = true;
                        }
                    }
                        
                }
            }
            else
            {
                lbl_paymentSuccessMessage.Text = "INSUFFICIENT BALANCE";
                Panel2.Visible = true;
                Panel1.Visible = false;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/USER/CustomerHome.aspx");
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/USER/ViewOrde.aspx");
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/USER/CustomerHome.aspx");
        }
    }
}