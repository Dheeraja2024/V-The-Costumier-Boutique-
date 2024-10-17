using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;

namespace WebApplication2.USER
{
    public partial class USER_PRODUCT_VIEW : System.Web.UI.Page
    {
        ConnectionClass objcls = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Session["selected_category_id"]
                string sel = "select * from tbl_product where fk_cat_id='" + Session["selected_category_id"] + "'";
                DataSet ds = objcls.Fun_Adapter(sel);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int productId = Convert.ToInt32(e.CommandArgument);
            Session["productId"] = productId;
            Response.Redirect("ProductFullDescription.aspx");
        }
    }
}