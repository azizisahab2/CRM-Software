using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ClientQuery
{
    public partial class CustomerStatus : System.Web.UI.Page
    {
        Class1 mod = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sel1 = "SELECT * from tbl_CallStatus";
                DataSet ds = mod.FillDs(sel1);
                int len = ds.Tables[0].Rows.Count;
                for (int i = 0; i < len; i++)
                {
                    ddl_status.Items.Add(ds.Tables[0].Rows[i]["CallStatus"].ToString());
                }
                show();
            }            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = "INSERT into tbl_CustomerStatus(name,email,mobile,call_status,call_time,call_date,followupdate,remark) values('" + txt_name.Text + "','" + txt_mbile.Text + "','" + txt_email.Text + "','" + ddl_status.Text + "','" + txt_time.Text + "','" + txt_date.Text + "','"+txt_followupdate.Text+"','"+txt_remark.Text+"')";
            mod.InsDelUp(str);
            reset();
            show();
        }

        public void reset()
        {
            txt_date.Text = "";
            txt_email.Text = "";
            txt_mbile.Text = "";
            txt_name.Text = "";
            txt_time.Text = "";
            txt_remark.Text = "";
        }

        public void show()
        {
            string sel = "SELECT * from tbl_CustomerStatus ORDER BY Id DESC";            
            GridView1 = mod.fillgrid(GridView1, sel);
        }
    }
}