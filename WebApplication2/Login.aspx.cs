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
    public partial class Login : System.Web.UI.Page
    {
        ConnectionClass objcls = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sel = "select count(Reg_id) from tbl_Login where Username= '" + txt_username.Text + "' and Password='" + txt_password.Text + "' ";
            string u_count1 = objcls.Fun_exs_Scalar(sel);
            int u_count = Convert.ToInt32(u_count1);
            if (u_count == 1)
            {
                string sel1 = "select reg_id,Log_type from tbl_Login where Username= '" + txt_username.Text + "' and Password='" + txt_password.Text + "' ";
                SqlDataReader dr = objcls.Fun_exe_Reader(sel1);
                while (dr.Read())
                {
                    Session["uid"] = Convert.ToInt32(dr["reg_id"].ToString());
                    //string reg=dr["reg_id"].ToString();
                    //Session["uid"] = reg;
                    string log_type1 = dr["Log_type"].ToString();

                    if (log_type1 == "ADMIN")
                    {
                        Response.Redirect("~/ADMIN/ADMIN_HOME.aspx");
                    }
                    else if (log_type1 == "USER")
                    {
                        Response.Redirect("~/USER/CustomerHome.aspx");
                    }

                }

            }
        }
    }
}