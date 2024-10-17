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
            string fetchCart = "select tbl_product.pro_image,tbl_product.pro_name,tbl_product.pro_price,tbl_Cart.Quantity,tbl_Cart.Total_price from tbl_Cart join tbl_product on tbl_Cart.fk_product=tbl_product.Pro_id where tbl_Cart.fk_userId='2'";//" + Session["uid"] + "
            DataSet ds = objcls.Fun_Adapter(fetchCart);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            //DataList1.DataSource = dr;
            //DataBind();
            //while (dr.Read())
            //{
            //   Image1.ImageUrl= dr["pro_image"].ToString();
            //    lbl_productCode.Text= dr["pro_name"].ToString();
            //    lbl_producyPrice.Text = dr["pro_price"].ToString();
            //    lbl_Quantity.Text = dr["Quantity"].ToString();
            //    lbl_totalPrice.Text = dr["Total_price"].ToString();
            //}
        }

    }

}