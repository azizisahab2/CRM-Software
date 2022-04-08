using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ClientQuery
{
    public partial class Call_status : System.Web.UI.Page
    {
        Class1 mod = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                show();
            }
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            string str = "INSERT into tbl_CallStatus(CallStatus) values('" + txt_status.Text + "')";
            mod.InsDelUp(str);
            txt_status.Text = "";
            show();
        }

        public void show()
        {
            string sel = "Select * from tbl_CallStatus";
            GridView1 = mod.fillgrid(GridView1, sel);
        }
    }
}