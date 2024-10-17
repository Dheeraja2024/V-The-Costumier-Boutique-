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
    public partial class CustomerHome : System.Web.UI.Page
    {
        ConnectionClass objcls = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bind_datalist();
            }
        }

        public void bind_datalist()
        {
            string sel = "select * from tbl_category";
            DataSet ds = objcls.Fun_Adapter(sel);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }





        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            Session["selected_category_id"] = id;
            //Label4.Text = Session["selected_category_id"].ToString();
            Response.Redirect("USER_PRODUCT_VIEW.aspx");

        }
    }
}