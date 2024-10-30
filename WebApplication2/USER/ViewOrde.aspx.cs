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
    public partial class ViewOrde : System.Web.UI.Page
    {
        ConnectionClass objcls = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            grid_bind();
        }

        public void grid_bind()
        {
            string select = "select p.pro_image,p.pro_name,o.Date from tbl_product p join tbl_Order o on p.Pro_id=fk_productId where fk_user_id='2'";//Session["uid"]
            DataSet ds = objcls.Fun_Adapter(select);
            GridView2.DataSource = ds;
            GridView2.DataBind();
        }

      

        protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView2.PageIndex=e.NewPageIndex;
            grid_bind();
            
        }

        protected void GridView2_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
           GridViewRow rw = GridView2.Rows[e.NewSelectedIndex];
           string productCode=rw.Cells[0].Text;
            string getProductIdStr = "select Pro_id from tbl_product where pro_name='" + productCode + "'";
           string getProductId= objcls.Fun_exs_Scalar(getProductIdStr);
            int productId = Convert.ToInt32(getProductId);

            String SET = "select p.pro_image,p.pro_name,p.pro_price,o.fk_user_id,o.Quantity,o.Total_Price,o.Date,o.Status from tbl_product p join tbl_Order o on p.Pro_id=o.fk_productId where o.fk_productId='" + productId + "' and o.fk_user_id='"+Session["uid"]+"'";
            SqlDataReader dr= objcls.Fun_exe_Reader(SET);
            while(dr.Read())
            {
                Image2.ImageUrl = dr["pro_image"].ToString();
                lbl_productCode.Text = dr["pro_name"].ToString();
                lbl_productPrice.Text = dr["pro_price"].ToString();
                lbl_quantity.Text = dr["Quantity"].ToString();
                lbl_totalPrice.Text = dr["Total_Price"].ToString();
                lbl_orderDate.Text = dr["Date"].ToString();
                lbl_productStatus.Text = dr["Status"].ToString();
            }
        }
    }
}