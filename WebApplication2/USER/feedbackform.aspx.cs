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
    public partial class feedbackform : System.Web.UI.Page
    {
        SP_ConnectionClass objcls = new SP_ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_insertFeedback";
            string UserId = Session["uid"].ToString();
            cmd.Parameters.AddWithValue("@name", UserId);
           
            cmd.Parameters.AddWithValue("@feedback", txt_feedback.Text);
          
            if (string.IsNullOrWhiteSpace(FileUpload1.FileName))
            {
                cmd.Parameters.AddWithValue("@ImageUrl", DBNull.Value);
            }
            else
            {
               string path="~/feedback images/"+FileUpload1.FileName;
                cmd.Parameters.AddWithValue("@ImageUrl", path);
            }

            if (string.IsNullOrWhiteSpace(txt_productCode.Text))
            {
                cmd.Parameters.AddWithValue("@ProCode", DBNull.Value);
            }
            else
            {
                cmd.Parameters.AddWithValue("@ProCode", txt_productCode.Text);
            }

           
            int i= objcls.Fn_nonquery(cmd);
            if(i==1)
            {
                Label4.Text = "FEEDBACK SEND SUCESSFULLY";
              
                txt_feedback.Text = " ";
              
                txt_productCode.Text = " ";
               
            }

            
        }

       
    }
}