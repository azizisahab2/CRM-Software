using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ClientQuery
{
    public partial class Operatorlogin : System.Web.UI.Page
    {
        Class1 mod = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            string sel="select * from tbl_OperatorAcc where username='"+txt_username .Text +"' and password= '"+ txt_pass .Text+"'";
            DataSet ds = mod.FillDs(sel);
            int len = ds.Tables[0].Rows.Count;
            if (len > 0)
            {
                Session["admin"] = ds.Tables[0].Rows[0]["Id"].ToString();
                Response.Redirect("CustomerDetails.aspx");
            }
            else
            {
                lit_msg.Text = " Username or password Mismatch";
            }
        }
    }
}