using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Asp_net_EXP.ServiceReference1;

namespace Asp_net_EXP
{
    public partial class Web_service_call : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            ServiceReference1.WebService1SoapClient obj = new ServiceReference1.WebService1SoapClient();
            int result = obj.Add(Convert.ToInt32(txt_num1.Text.Trim()), Convert.ToInt32(txt_num2.Text.Trim()));
            lbl_result.Text = Convert.ToString(result);
        }
    }
}