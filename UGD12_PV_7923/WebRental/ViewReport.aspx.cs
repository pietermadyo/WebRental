using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebRental
{
    public partial class ViewReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.ClientTarget = "uplevel";
            if (Session["userdata"] == null)
            {
                Label1.Text = string.Empty;
                Response.Redirect("WebHome.aspx");
            }
            else
            {
                User user = Session["userdata"] as User;
                Label1.Text = user.UserName;
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebHome.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session.Remove(Label1.Text);
            Session["userdata"] = null;
            Response.Redirect("WebForm1.aspx");
        }
    }
}