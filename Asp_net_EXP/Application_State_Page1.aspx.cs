using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_net_EXP
{
    public partial class Application_State_Page1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Application["ClicksCount"] != null)
            {
                int c = Convert.ToInt32(Application["ClicksCount"]);
                lbl_count.Text = "The button is clicked " + c + " time(s).";
            }

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            int c = 0;
            if (Application["ClicksCount"] != null)
                c = Convert.ToInt32(Application["ClicksCount"]);
            c++;
            Application["ClicksCount"] = c;



        }
    }
}