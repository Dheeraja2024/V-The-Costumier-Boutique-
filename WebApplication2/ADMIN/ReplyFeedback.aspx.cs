using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;

namespace WebApplication2.ADMIN
{
    public partial class ReplyFeedback : System.Web.UI.Page
    {
        SP_ConnectionClass objcls = new SP_ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "sp_ViewFeedbackById";
                cmd.Parameters.AddWithValue("@id", Session["f_id"].ToString());
                SqlDataReader dr = objcls.Fn_Reader(cmd);
                while (dr.Read())
                {
                    lbl_customerName.Text = dr["Name"].ToString();
                    lbl_email.Text = dr["Email"].ToString();
                    lbl_feedbackMessage.Text = dr["Feedback"].ToString();
                    lbl_productCode.Text = dr["ProductCode"].ToString();
                    lbl_phoneNo.Text = dr["MobileNumber"].ToString();
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
            string companyMail = "dheerajasuvcreations@gmail.com ";
            string gmailPasswors = "December7@2022";
            string customerName= " "

           // SendEmail2(string yourName, string yourGmailUserName, string yourGmailPassword, string toName, string toEmail, string subject, string body)
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