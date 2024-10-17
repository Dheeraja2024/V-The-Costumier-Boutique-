using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication2.ADMIN
{
    public partial class PRODUCT_EDITING : System.Web.UI.Page
    {
        ConnectionClass objcls = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            string i = Session["Sel_product_id"].ToString();
            Label14.Text = i;
            if (!IsPostBack)
            {
                SqlDataReader dr = get_product();
                while (dr.Read())
                {
                    txt_category.Text = dr["Cat_name"].ToString();
                    txt_name.Text = dr["pro_name"].ToString();
                    Image1.ImageUrl = dr["pro_image"].ToString();
                    txt_description.Text = dr["pro_description"].ToString();
                    txt_price.Text = dr["pro_price"].ToString();
                    txt_stock.Text = dr["pro_stock"].ToString();
                    //dr[""].ToString();
                }
            }

        }

        public SqlDataReader get_product()
        {
            string sel = "select tbl_category.*,tbl_product.* from tbl_product join tbl_category on tbl_category.Cat_id=tbl_product.fk_cat_id where tbl_product.pro_id='" + Session["Sel_product_id"] + "' ";
            SqlDataReader dr = objcls.Fun_exe_Reader(sel);
            return dr;
        }



        public DataSet bind_dropdown()
        {
            string sel = "Select Cat_id,Cat_name from tbl_category";
            DataSet ds = objcls.Fun_Adapter(sel);
            return ds;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
            DropDownList1.DataSource = bind_dropdown();
            DropDownList1.DataBind();


            SqlDataReader dr = get_product();
            while (dr.Read())
            {
                txt_category.Text = dr["Cat_name"].ToString();
                txt_up_name.Text = dr["pro_name"].ToString();
                //Image1.ImageUrl = dr["pro_image"].ToString();
                txt_up_description.Text = dr["pro_description"].ToString();
                txt_up_price.Text = dr["pro_price"].ToString();
                txt_up_stock.Text = dr["pro_stock"].ToString();
                //dr[""].ToString();
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string path = "~/PRODUCTS IMAGE/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(path));
            string update = "update  tbl_product set fk_cat_id='" + DropDownList1.SelectedItem.Value + "',pro_image='" + path + "',pro_name='" + txt_up_name.Text + "',pro_description='" + txt_up_description.Text + "',pro_price='" + txt_up_price.Text + "',pro_status='AVAILABLE',pro_stock='" + txt_up_stock.Text + "' where Pro_id='" + Session["Sel_product_id"] + "' ";
            int i = objcls.Fun_exe_NonQuery(update);
            if (i == 1)
            {
                Label24.Text = "INSERTED SUCESSFULLY";
                txt_up_name.Text = " ";
                txt_up_description.Text = " ";
                txt_up_price.Text = " ";
                txt_up_stock.Text = " ";

            }

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("PRODUCTS_ADMIN.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("PRODUCTS_ADMIN.aspx");
        }
    }
}