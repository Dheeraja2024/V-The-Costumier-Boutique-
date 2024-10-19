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
    public partial class ViewCart1 : System.Web.UI.Page
    {
        ConnectionClass objcls = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //string fetchCart = "select tbl_product.pro_image,tbl_product.pro_name,tbl_product.pro_price,tbl_Cart.Quantity,tbl_Cart.Total_price from tbl_Cart join tbl_product on tbl_Cart.fk_product=tbl_product.Pro_id where tbl_Cart.fk_userId='2'";//" + Session["uid"] + "
                grid_bind();
                
            }
 
        }

        public void grid_bind()
        {
           // string fetchCart = "select B.Pro_id,B.pro_image,B.pro_name,B.pro_price,A.Cart_id, A.Quantity,A.Total_price from tbl_Cart A join tbl_product B on A.fk_product=B.Pro_id where A.fk_userId='2'";//" + Session["uid"] + "
            string fetchCart = "select tbl_product.pro_image,tbl_product.pro_name,tbl_product.pro_price,tbl_Cart.Cart_id, tbl_Cart.Quantity,tbl_Cart.Total_price from tbl_Cart  join tbl_product  on tbl_Cart.fk_product=tbl_product.Pro_id where tbl_Cart.fk_userId='" + Session["uid"] + "'";//
            DataSet ds = objcls.Fun_Adapter(fetchCart);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int getId=Convert.ToInt32( GridView1.DataKeys[i].Value);
            string del = "delete from tbl_Cart where Cart_id='" + getId + "'";
            int effectedRow= objcls.Fun_exe_NonQuery(del);
            if(effectedRow==1)
            {
               
                grid_bind();
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            grid_bind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            grid_bind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int getId = Convert.ToInt32( GridView1.DataKeys[i].Value);
            TextBox txtQuantity = (TextBox)GridView1.Rows[i].Cells[3].Controls[0];
            //fetch product id from cart table
            string getProductId = "Select fk_product from tbl_Cart where Cart_id='"+getId+"'";
             string productId=objcls.Fun_exs_Scalar(getProductId).ToString();
           //fetch price from product table using fetched product id
            string productPrice = "Select pro_price from tbl_product where Pro_id='"+productId+ "' "; 
            string SingleProductAmount1 = objcls.Fun_exs_Scalar(productPrice);

            // int singleProductAmount = Convert.ToInt32(SingleProductAmount1)
            // int Quantity=Convert.ToInt32(txtQuantity.Text);

            int updatedAmount = Convert.ToInt32(SingleProductAmount1) *Convert.ToInt32(txtQuantity.Text);
            string latestUpdate = "Update tbl_Cart set  Quantity='" + txtQuantity.Text + "' ,Total_price='" + updatedAmount + "' where Cart_id='"+getId+"'";
             int m = objcls.Fun_exe_NonQuery(latestUpdate);
             if(m==1)
            {
                GridView1.EditIndex = -1;
                grid_bind();

            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string grandTotalStr = "select sum(Total_price) from tbl_Cart where fk_userId='"+Session["uid"]+"'";
             string grandTotal=objcls.Fun_exs_Scalar(grandTotalStr);

            string sdate = DateTime.Now.ToString("yyyy-MM-dd");
            string insOrder = "INSERT INTO tbl_Order (fk_productId, fk_user_id, Quantity, Total_price,'"+sdate+"','Ordered') SELECT fk_product, fk_userId, Quantity, Total_priceFROM tbl_Cart where fk_userId ='"+Session["uid"]+"' ";
             int rowsEffected=objcls.Fun_exe_NonQuery(insOrder);

            string insBill = "insert into  tbl_bill values ('"+Session["uid"] +"','"+sdate+"','"+grandTotal+"')";
            int rowsEffected1 = objcls.Fun_exe_NonQuery(insBill);

        }
    }

}