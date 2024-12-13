using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_net_EXP
{
    public partial class Query_String_Page1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
           // Server.Transfer("Query_String_Page2.aspx");

           Response.Redirect("Query_String_Page2.aspx?msg1="+txx_msg1.Text.Trim()+"&msg2="+txx_msg2.Text.Trim());


        }

        protected void link_page2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Query_String_Page2.aspx");
        }
    }
}