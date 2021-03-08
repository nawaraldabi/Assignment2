using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment2.Client_Pages
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void signIn(object sender, EventArgs e)
        {
            using (BulmaLINQDataContext dbContext = new BulmaLINQDataContext())
            {
                Account account = dbContext.Accounts.SingleOrDefault(x => x.email == Request["emailInput"]);
                if(Request["passwordInput"] == account.password)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Login successful" + "');", true);
                    Session["username"] = account.fullName;
                    Response.Redirect("HomePage.aspx");
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Login NOT successful" + "');", true);
                }
            }       
        }
    }
}