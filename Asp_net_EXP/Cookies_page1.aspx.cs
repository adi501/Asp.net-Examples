using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_net_EXP
{
    public partial class Cookies_page1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            HttpCookie ck = new HttpCookie("msg1", txx_msg1.Text.Trim());
            HttpCookie ck1 = new HttpCookie("msg2", txx_msg2.Text.Trim());
            Response.Cookies.Add(ck);
            Response.Cookies.Add(ck1);

        }
    }
}