using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_net_EXP
{
    public partial class Query_String_Page2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           string msg1= Request.QueryString["msg1"];
           lbl_msg1.Text = msg1;

           string msg2 = Request.QueryString["msg2"];
           lbl_msg2.Text = msg2;
        }
    }
}