using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_Day3
{
    public partial class Assignment3_part1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RV1.MaximumValue = DateTime.Today.ToShortDateString();
            RV1.MinimumValue = DateTime.Today.ToShortDateString();
        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Response.Redirect("Valid.html");
            }
            else
            {
                Response.Write("Validations Failed");
            }
        }
    }
}