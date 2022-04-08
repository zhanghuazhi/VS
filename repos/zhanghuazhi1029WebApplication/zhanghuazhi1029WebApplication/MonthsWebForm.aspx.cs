using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace zhanghuazhi1029WebApplication
{
    public partial class MonthsWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            lstMonths.Items.Add("January");
            lstMonths.Items.Add("February");
            lstMonths.Items.Add("March");
            lstMonths.Items.Add("April");
            lstMonths.Items.Add("May");
            lstMonths.Items.Add("June");

            lstMonths.Items.Add("July");
            lstMonths.Items.Add("August");
            lstMonths.Items.Add("September");
            lstMonths.Items.Add("October");
            lstMonths.Items.Add("November");
            lstMonths.Items.Add("December");

        }

        protected void lstMonths_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}