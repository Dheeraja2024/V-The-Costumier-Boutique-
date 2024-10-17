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
    public partial class WebForm2 : System.Web.UI.Page
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
            string str = "select * from tbl_category order by Cat_id desc";
            DataSet ds = objcls.Fun_Adapter(str);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }


        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            Panel2.Visible = true;
            Panel1.Visible = false;
            int id = Convert.ToInt32(e.CommandArgument);
            Session["uid"] = id;
            string sel = "select * from tbl_category where Cat_id='" + id + "'";
            SqlDataReader dr = objcls.Fun_exe_Reader(sel);
            while (dr.Read())
            {
                txt_cat_name.Text = dr["Cat_name"].ToString();
                txt_cat_description.Text = dr["Cat_description"].ToString();
                txt_status.Text = dr["Cat_status"].ToString();
                Image1.ImageUrl = dr["Cat_image"].ToString();

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
            Panel2.Visible = false;
            string path1 = "~/CATEGORY IMAGE/" + FileUpload1_update.FileName;
            FileUpload1_update.SaveAs(MapPath(path1));
            string upd = "update tbl_category set Cat_name='" + txt_up_name.Text + "',Cat_image='" + path1 + "',Cat_description='" + txt_up_description.Text + "',Cat_status='" + txt_up_status.Text + "' where Cat_id='" + Session["uid"] + "' ";
            int j = objcls.Fun_exe_NonQuery(upd);
            if (j == 1)
            {
                Label17.Text = "UPDATED SUCESSFULLY";
                Panel1.Visible = true;
                Panel2.Visible = false;
                Panel3.Visible = false;
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
            Panel2.Visible = false;

            string sel1 = "select * from tbl_category where Cat_id='" + Session["uid"] + "'";
            SqlDataReader dr1 = objcls.Fun_exe_Reader(sel1);
            while (dr1.Read())
            {
                txt_up_name.Text = dr1["Cat_name"].ToString();
                txt_up_description.Text = dr1["Cat_description"].ToString();
                txt_up_status.Text = dr1["Cat_status"].ToString();
                //Image1.ImageUrl = dr1["Cat_image"].ToString();
                //txt_up_status.Text = dr1["Status"].ToString();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {

            Panel1.Visible = true;
            Panel3.Visible = false;
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int get_id = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string del = "delete from tbl_category where Cat_id='" + get_id + "'";
            int j = objcls.Fun_exe_NonQuery(del);
            if (j == 1)
            {
                grid_bind();
            }
        }
    }
}