using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using System.Text;

namespace WebApplication2.ADMIN
{
    public partial class ReplyFeedback : System.Web.UI.Page
    {
        SP_ConnectionClass objcls = new SP_ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string Id = Session["f_id"].ToString();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "sp_ViewFeedbackById";
                cmd.Parameters.AddWithValue("@id",Id );
                SqlDataReader dr = objcls.Fn_Reader(cmd);
                while (dr.Read())
                {
                    lbl_customerName.Text = dr["Name"].ToString();
                    lbl_email.Text = dr["Email"].ToString();
                    lbl_feedbackMessage.Text = dr["Feedback"].ToString();
                    lbl_productCode.Text = dr["ProductCode"].ToString();
                    lbl_phoneNo.Text = dr["Phone"].ToString();
                    if (string.IsNullOrEmpty(dr["ImageUrl"].ToString()))
                    {
                        Image1.ImageUrl = "~/feedback images/noImageUploaded.png";
                    }
                    else
                    {
                        Image1.ImageUrl = dr["ImageUrl"].ToString();
                    }

                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("VIEWFEEDBACKS.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string mailSubject = "Thank You for Your Feedback! We Appreciate Your Input";
            string companyMail = "dheerajacri@gmail.com ";
            string gmailPasswors = "bmjv xwrg cwlg ugbg";
            string fid = Session["f_id"].ToString();
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandType = CommandType.StoredProcedure;
            cmd1.CommandText = "sp_ViewFeedbackById";
            cmd1.Parameters.AddWithValue("@id", fid);
            SqlDataReader dr = objcls.Fn_Reader(cmd1);
            while (dr.Read())
            {
                string customerName = dr["Name"].ToString();
                string customerMail = dr["Email"].ToString();
                string mailBody = txt_replyFeedback.Text;

                SendEmail2("Dhanuja K P", companyMail, gmailPasswors, customerName, customerMail, mailSubject, mailBody);
            }
        }

        public static void SendEmail2(string yourName, string yourGmailUserName, string yourGmailPassword, string toName, string toEmail, string subject, string body)

        {
            string to = toEmail; //To address    
            string from = yourGmailUserName; //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = body;
            message.Subject = subject;
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential(yourGmailUserName, yourGmailPassword);
            client.EnableSsl = true;
            client.UseDefaultCredentials = true;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
                
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}