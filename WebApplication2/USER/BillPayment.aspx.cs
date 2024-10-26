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
            
            GetUpdateBalanceService.ServiceClient obj = new GetUpdateBalanceService.ServiceClient();
            string balance = obj.GetAccountBalance(Convert.ToInt32(Session["uid"].ToString()), accountNumber);
            if(Convert.ToInt32( balance)>= Convert.ToInt32( Session["totalAmount"].ToString()))
            {
                
                GetUpdateBalanceService.ServiceClient ob1 = new GetUpdateBalanceService.ServiceClient();
                lbl_paymentSuccessMessage.Text = ob1.UpdateBalance(Convert.ToInt32(Session["uid"].ToString()), accountNumber, Session["totalAmount"].ToString());
                Panel2.Visible = true;
            }
            else
            {
                lbl_paymentSuccessMessage.Text = "INSUFFICIENT BALANCE";
                Panel2.Visible = true;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/USER/CustomerHome.aspx");
        }

       
    }
}