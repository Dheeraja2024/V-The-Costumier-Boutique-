using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication2.USER
{
    public partial class CustomerBill : System.Web.UI.Page
    {
        ConnectionClass objcls = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                grid_bind();
                string customerDetailStr = "select * from tbl_user where Cus_id='" + Session["uid"] + "'";//
                SqlDataReader dr = objcls.Fun_exe_Reader(customerDetailStr);
                while (dr.Read())
                {
                    lbl_name.Text = dr["Name"].ToString();
                    lbl_phone.Text = dr["Phone"].ToString();
                    lbl_address.Text = dr["Address"].ToString();
                    lbl_pinCode.Text = dr["Pin"].ToString();
                }

                lbl_invoice.Text = Guid.NewGuid().ToString();
                string billDate = DateTime.Now.ToString("yyyy,MM,dd");
                lbl_date.Text = billDate;
                string grandTotalStr = "select Grand_total from tbl_bill where User_id='" + Session["uid"] + "'";//'" + Session["uid"] + "'
                string grandTotal = objcls.Fun_exs_Scalar(grandTotalStr);
                lbl_total.Text = grandTotal;
                int gstAmount = (Convert.ToInt32(grandTotal) * 5) / 100;
                // int gstAmount = ((5 / 100) * Convert.ToInt32( grandTotal));
                int grandTotlAmount = Convert.ToInt32(grandTotal) + gstAmount;
                lbl_totalAmount.Text = Convert.ToString(grandTotlAmount);
                Session["totalAmount"] = grandTotlAmount;
            }
        }

        public void grid_bind()
        {
             string fetchCart = "select B.Pro_id,B.pro_name,B.pro_price,A.Order_id, A.Quantity,A.Total_price from tbl_Order A join tbl_product B on A.fk_productId=B.Pro_id where A.fk_user_id='" + Session["uid"] + "'";//" + Session["uid"] + "
           
            DataSet ds = objcls.Fun_Adapter(fetchCart);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

      

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/USER/CustomerHome.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/USER/BillPayment.aspx");
        }
    }
}