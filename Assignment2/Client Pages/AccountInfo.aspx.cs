using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment2.Client_Pages
{
    public partial class AccountInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (BulmaLINQDataContext dbContext = new BulmaLINQDataContext())
            {
                Account account = dbContext.Accounts.SingleOrDefault(x => x.fullName == Session["username"].ToString());
                fullNameInput.Text = account.fullName;
                emailInput.Text = account.email;
            }
        }
        public void update(object sender, EventArgs e)
        {
            using (BulmaLINQDataContext dbContext = new BulmaLINQDataContext())
            {
                Account account = dbContext.Accounts.SingleOrDefault(x => x.fullName == Session["username"].ToString());
                account.fullName = fullNameInput.Text;
                account.email = emailInput.Text;
                if(passwordInput.Text != null)
                account.password = passwordInput.Text;
                dbContext.SubmitChanges();
                Session["username"] = "";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "you need to sign in again after account changes" + "');", true);
                Response.Redirect("HomePage.aspx");
            }
        }
        public void delete(object sender, EventArgs e)
        {
            using (BulmaLINQDataContext dbContext = new BulmaLINQDataContext())
            {
                Account account = dbContext.Accounts.SingleOrDefault(x => x.fullName == Session["username"].ToString());
                dbContext.Accounts.DeleteOnSubmit(account);
                dbContext.SubmitChanges();
                Session["username"] = "";
                Response.Redirect("HomePage.aspx");
            }
        }

        public void signOut(object sender, EventArgs e)
        {
            using (BulmaLINQDataContext dbContext = new BulmaLINQDataContext())
            {
                Session["username"] = "";
                Response.Redirect("HomePage.aspx");
            }
        }
    }
}