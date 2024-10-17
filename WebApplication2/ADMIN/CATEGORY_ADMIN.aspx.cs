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
    public partial class WebForm1 : System.Web.UI.Page
    {
        ConnectionClass objcls = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                grid_bind();
            }

        }

        public void grid_bind()
        {
            string str = "select * from tbl_category order by Cat_id desc ";
            DataSet ds = objcls.Fun_Adapter(str);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        public string ConvertQuotes(string str)
        {
            return str.Replace("'", " ''");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string path = "~/CATEGORY IMAGE/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(path));
            string ins = "insert into tbl_category values ('" + txt_cat_name.Text + "','" + path + "','" + ConvertQuotes(txt_cat_description.Text) + "','Available') ";
            int i = objcls.Fun_exe_NonQuery(ins);
            if (i == 1)
            {
                Label3.Text = "INSERTED SUCESSFULLY";
            }
            txt_cat_description.Text = " ";
            txt_cat_name.Text = " ";
            grid_bind();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.EditIndex = e.NewPageIndex;
            grid_bind();
        }


        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/ADMIN/CATEGORY_EDITING.aspx");

        }

        protected void GridView1_PageIndexChanging1(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            grid_bind();
        }
    }
}