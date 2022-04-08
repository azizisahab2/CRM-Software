using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientQuery
{
    public partial class ShowPendingCall : System.Web.UI.Page
    {
        Class1 mod = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sel = "SELECT * from tbl_CustomerStatus where call_status='Call not pickup'";
                GridView1 = mod.fillgrid(GridView1, sel);
            }
        }
    }
}