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
    public partial class ProductFullDescription : System.Web.UI.Page
    {
        ConnectionClass objcls = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            { 
            string sqlQuery = "Select * from tbl_product where Pro_id='"+Session["productId"] +"' ";
           SqlDataReader dr= objcls.Fun_exe_Reader(sqlQuery);
            while (dr.Read())
            {
                Image1.ImageUrl = dr["pro_image"].ToString();
                lblProductName.Text = dr["pro_name"].ToString();
                TextBox1.Text = dr["pro_description"].ToString();
                lblProductPrice.Text = dr["pro_price"].ToString();
                lblProductStatus.Text = dr["pro_status"].ToString();
            }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //string cartId= Guid.NewGuid().ToString();
            string sqlQuery = "select max(Cart_id) from tbl_Cart";
            string lastId= objcls.Fun_exs_Scalar(sqlQuery);
            int newId = 0;
            if(lastId=="")
            {
                newId = 1;
            }
            else
            {
                newId =Convert.ToInt32( lastId) + 1;
            }
            string productPrice = "Select pro_price from tbl_product where Pro_id='" + Session["productId"] + "' ";
            string SingleProductAmount= objcls.Fun_exs_Scalar(productPrice);
            //int singleProductAmount = Convert.ToInt32(SingleProductAmount);
            int totalAmount = Convert.ToInt32(SingleProductAmount) * Convert.ToInt32(txt_count.Text);

            string InsCart = "insert into tbl_Cart values('"+newId+"','"+Session["productId"] + "','"+Session["uid"]+ "','"+txt_count.Text+ "','"+totalAmount+"')";
            int insCount= objcls.Fun_exe_NonQuery(InsCart);
            if(insCount==1)
            {
                Label5.Text = "ITEM ADDED TO CART";
                // txt_count.Text = " ";
                Response.Redirect("ViewCart1.aspx");
            }
            
        }
    }
}