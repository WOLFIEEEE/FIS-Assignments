﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_Day1_1
{
    public partial class Assignment2_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Click(object sender, EventArgs e)
        {
            Session["d1"] = Txtuname.Text;
            Session["d2"] = Txtpswd.Text;
        }
    }
}