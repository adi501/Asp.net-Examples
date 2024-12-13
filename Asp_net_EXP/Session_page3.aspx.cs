using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_net_EXP
{
    public partial class Session_page3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_msg1.Text = Convert.ToString(Session["msg1"]);
            lbl_msg2.Text = Convert.ToString(Session["msg2"]);
        }
    }
}