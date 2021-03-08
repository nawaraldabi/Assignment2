using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment2.Client_Pages
{
    public partial class Reviews : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BulmaLINQDataContext dbContext = new BulmaLINQDataContext();
            GridView1.DataSource = from review in dbContext.Reviews
                                   select new
                                   {
                                       Name = review.fullName,
                                       Comment = review.comment,
                                   };
            GridView1.DataBind();
        }
        public void submitReview(object sender, EventArgs e)
        {
            using (BulmaLINQDataContext dbContext = new BulmaLINQDataContext())
            {
                Review newReview = new Review
                {
                    fullName = Request["fullNameInput"],
                    comment = Request["commentInput"]
                };
                dbContext.Reviews.InsertOnSubmit(newReview);
                dbContext.SubmitChanges();
                GridView1.DataSource = from review in dbContext.Reviews
                                       select new
                                       {
                                           Name = review.fullName,
                                           Comment = review.comment,
                                       };
                GridView1.DataBind();
            }
        }
        public void download(object sender, EventArgs e)
        {
            Response.Redirect("https://www-van-ovx.omnivox.ca/cvir/dtrv/ReadDocumentTravail.aspx/Assignment_II.pdf?idtravail=c5e7b3ce-7ead-492e-81de-775785044dce&iddocumenttravail=05fe67a5-8849-471b-b595-6cabe4410c9c&C=VAN&E=P&L=ANG&Ref=20210307162520&Info=c3orY3gwTERxQ0FQb1dneU9SeDVwRXF0eVpIYkxZUWVZYi9MemY4c1RuVklJY0JESnZFLy9GMjA3ZE5DejR6QU1TTWJlbkwxNW9ISzR4aS9pSTYrdk15anVjMGdDY3VOTm5ydkpOdUR6Y0xWRUpIVVlqR0pROVBGcnhmMUdpQWFSdlZkZit3NTBjeVNjdlVCTXhxV0V2YUQ4THpFcDdSTUxqekNNbm1yVUY0PQ__");

        }
    }
}