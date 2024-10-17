using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.USER
{
    public partial class UserRegistration : System.Web.UI.Page
    {
        ConnectionClass objcls = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "Select max(log_id) from tbl_Login ";
            string LastIndex = objcls.Fun_exs_Scalar(s).ToString();
            int NextIndex = 0;
            if (LastIndex == "")
            {
                NextIndex = 1;
            }
            else
            {
                int lastIndex = Convert.ToInt32(LastIndex);
                NextIndex = lastIndex + 1;
            }
            string ins = "Insert into tbl_user values ('"+NextIndex+"','" + txt_name.Text + "','" + txt_email.Text + "','" + txt_address.Text + "','" + txt_phone.Text + "','" + txt_pin.Text + "','ACTIVE')";
            int i = objcls.Fun_exe_NonQuery(ins);
            if (i == 1)
            {
                string Logins = "insert into tbl_Login values('" + NextIndex + "','" + txt_username.Text + "','" + txt_password.Text + "','USER')";
                int j = objcls.Fun_exe_NonQuery(Logins);
                if (i == 1)
                {
                    Response.Redirect("CustomerHome.aspx");
                    Label13.Text = "INSERTED SUCESSFULLY";
                }
                else
                {
                    Label13.Text = "INVALID USERNAME OR PASSWORD";
                }
            }
        }
    }
}