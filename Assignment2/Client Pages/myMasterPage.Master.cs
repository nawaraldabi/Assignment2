using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment2
{
    public partial class myMasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (!Session["username"].ToString().Equals(""))
                {
                    masterSignInbutton.Text = Session["username"].ToString();
                    masterSignInbutton.NavigateUrl = "AccountInfo.aspx";
                }
                else
                {
                    masterSignInbutton.Text = "Sign In";
                }
            }
        }
    }
}