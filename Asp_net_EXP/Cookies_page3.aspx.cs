using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_net_EXP
{
    public partial class Cookies_page3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_msg1.Text = Request.Cookies["msg1"].Value;
            lbl_msg2.Text = Request.Cookies["msg2"].Value;
        }
    }
}