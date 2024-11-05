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
    public partial class VIEWFEEDBACKS : System.Web.UI.Page

    {
        SP_ConnectionClass objcls = new SP_ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_ViewFeedback";

            DataSet ds = objcls.Fn_Adapter(cmd);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
           GridViewRow gridRow=GridView1.Rows[ e.NewSelectedIndex];
            string f_id = gridRow.Cells[0].Text;
            Session["f_id"] = f_id;
            //Label1.Text = f_id;
            Response.Redirect("ReplyFeedback.aspx");
        }
    }
}