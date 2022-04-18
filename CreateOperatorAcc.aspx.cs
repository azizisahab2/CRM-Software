using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientQuery
{
    public partial class CreateOperatorAcc : System.Web.UI.Page
    {
        Class1 mod = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                show();
            }
        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            string str = "insert into tbl_OperatorAcc (name,mobile,email,username,password,address) values('"+txt_name .Text +"','"+txt_mobile .Text +"','"+txt_email .Text +"','"+txt_username .Text +"','"+txt_password .Text +"','"+txt_address .Text +"')";
            mod.InsDelUp(str);
            show();
        }

        void show()
        {
            string sel = "SELECT * from tbl_OperatorAcc ORDER BY Id DESC";
            GridView1 = mod.fillgrid(GridView1, sel);            
        }
    }
}