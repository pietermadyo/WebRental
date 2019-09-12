using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebRental
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            if(Session["login"]!=null)
            {
                if (Session["login"].ToString() == "failed")
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "Peringatan", "alert('" + "Maaf Username dan password anda salah dan kosong" + "');", true);
                    Label1.Visible = false;
                    Session["login"] = null;
                }
            }
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            LoginControl LC = new LoginControl();
            if (LC.cekLogin(Login1.UserName, Login1.Password) == true)
            {
                int role = LC.getRoleUser(Login1.UserName, Login1.Password);
                if (role == 1)
                {
                    User U = new User(Login1.UserName, Login1.Password, role);
                    Session["userdata"] = null;
                    Session.Add("userdata", U);
                    Response.Redirect("WebHome.aspx");
                }
                else if (role == 2)
                {
                    User U = new User(Login1.UserName, Login1.Password, role);
                    Session["userdata"] = null;
                    Session.Add("userdata", U);
                    Response.Redirect("Petugas.aspx");
                }
                else
                {
                    Session["login"] = null;
                    Session.Add("login", "failed");
                    Response.Redirect("WebForm1.aspx");
                }
            }
            else
            {
                Session["login"] = null;
                Session.Add("login", "failed");
                Response.Redirect("WebForm1.aspx");
            }
        }
    }
}