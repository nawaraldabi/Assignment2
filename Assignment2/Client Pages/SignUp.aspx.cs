using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment2.Client_Pages
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void signUp(object sender, EventArgs e)
        {
            using (BulmaLINQDataContext dbContext = new BulmaLINQDataContext())
            {
                Account newAccount = new Account
                {
                    fullName = Request["fullNameInput"],
                    email = Request["emailInput"],
                    password = Request["passwordInput"] 
                };
                String info = "your name: " + Request["fullNameInput"] + " your email: " + Request["emailInput"];
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "You have succesfully created an account! we will send you the account information via email" + "');", true);
                MailMessage message = new MailMessage("technotransact@gmail.com", Request["emailInput"], "bulma account info", info);
                message.IsBodyHtml = true;
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                client.Credentials = new System.Net.NetworkCredential("technotransact@gmail.com", "techno14789@");
                dbContext.Accounts.InsertOnSubmit(newAccount);
                dbContext.SubmitChanges();
                client.Send(message);
                Response.Redirect("Signin.aspx");
            }
        }
    }
}