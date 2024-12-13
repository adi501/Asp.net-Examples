using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_net_EXP
{
    public partial class Session_page1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            try
            {
                Session["msg1"] = txx_msg1.Text.Trim();
                Session["msg2"] = txx_msg2.Text.Trim();
            }
            catch (Exception ex)
            {
            }
        }
    }
}