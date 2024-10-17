using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        ConnectionClass objcls = new ConnectionClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                DropDownList1.DataSource = bind_dropdown();
                DropDownList1.DataTextField = "Cat_name";
                DropDownList1.DataValueField = "Cat_id";
                DropDownList1.DataBind();
            }
            if (IsPostBack)
            {

                DropDownList2.DataSource = bind_dropdown();
                DropDownList2.DataTextField = "Cat_name";
                DropDownList2.DataValueField = "Cat_id";
                DropDownList2.DataBind();
            }


        }
        public DataSet bind_dropdown()
        {
            string sel = "Select Cat_id,Cat_name from tbl_category";
            DataSet ds = objcls.Fun_Adapter(sel);
            return ds;
        }

        public string ConvertQuotes(string str)
        {
            return str.Replace("'", "''");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //if(!IsPostBack)
            //{

            string path = "~/PRODUCTS IMAGE/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(path));
            string ins = "insert into tbl_product values('" + DropDownList1.SelectedItem.Value + "','" + path + "','" + txt_name.Text + "','" + ConvertQuotes( txt_description.Text) + "','" + txt_price.Text + "','AVAILABLE','" + txt_stock.Text + "')";
            int i = objcls.Fun_exe_NonQuery(ins);
            if (i == 1)
            {
                Label12.Text = "INSERTED SUCESSFULLY";
                txt_name.Text = " ";
                txt_description.Text = " ";
                txt_price.Text = " ";
                txt_stock.Text = " ";

            }

            //}

        }

        public void grid_bind()
        {
            string sel = "select * from tbl_product";
            DataSet ds = objcls.Fun_Adapter(sel);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            grid_bind();
            Panel1.Visible = false;
            Panel2.Visible = true;

        }

        protected void LinkButton2_Command(object sender, CommandEventArgs e)
        {
            //int i = Convert.ToInt32(e.CommandArgument);
            //string del = "delete from tbl_Product where pro_id='" + i + "' ";
            //int j= objcls.Fun_exe_NonQuery(del);
            //if(j==1)
            //{
            //    grid_bind();
            //    Label14.Text = "Deleted sucessfully";
            //}

            int id = Convert.ToInt32(e.CommandArgument);
            Session["Sel_product_id"] = id;
            Response.Redirect("PRODUCT_EDITING.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string category = DropDownList2.SelectedItem.Value;
            string sel1 = "select * from tbl_product where fk_cat_id='" + category + "' ";
            DataSet ds = objcls.Fun_Adapter(sel1);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int Id = Convert.ToInt32( GridView1.DataKeys[i].Value);
            string del = "delete from tbl_product where Pro_id='" + Id + "'";
            int j = objcls.Fun_exe_NonQuery(del);
            if(j==1)
            {
                grid_bind();
                Label14.Text = "Deleted Successfully";
            }

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            grid_bind();
        }
    }
}