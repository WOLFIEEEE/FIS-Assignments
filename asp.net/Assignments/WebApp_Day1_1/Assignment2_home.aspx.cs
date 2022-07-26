using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_Day1_1
{
    public partial class Assignment2_home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && PreviousPage != null)
            {
                //lblname.Text = "Welcome " + Request.Cookies["d1"].Value.ToString() + " to our Program";

                TextBox tname = (TextBox)PreviousPage.FindControl("Txtuname");
                lblname.Text = "Welcome " + tname.Text + "To our Program";
            }
            else
            {
                Response.Redirect("Assignment2_login.aspx");

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Assignment2_login.aspx");
        }
    }
}