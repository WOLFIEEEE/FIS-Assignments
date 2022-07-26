using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_Day1_1
{
    public partial class Assignment1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string[] str = new string[] { "Select", "Dell", "HP", "MacBook", "Lenova", "Aspire" };
                for (int i = 0; i < str.Length; i++)
                {
                    DropDownList1.Items.Add(str[i]);
                }
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = DropDownList1.SelectedIndex.ToString();
            if (DropDownList1.Text == "Dell")
            {
                Label1.Text = "Rs 54000";
            }
            else if (DropDownList1.Text == "HP")
            {
                Label1.Text = "Rs 56000";
            }
            else
                Label1.Text = "";
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string str = DropDownList1.Text;
            Image1.ImageUrl = "~/Images/" + str + ".jpg";
        }
    }
}