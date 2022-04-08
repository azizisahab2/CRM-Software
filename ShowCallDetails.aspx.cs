using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ClientQuery
{
    public partial class ShowCallDetails : System.Web.UI.Page
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
                    ddl_Callstatus.Items.Add(ds.Tables[0].Rows[i]["CallStatus"].ToString());
                }
            }
        }

        protected void ddl_Callstatus_SelectedIndexChanged(object sender, EventArgs e)
        {
            string sel1 = "SELECT * from tbl_CustomerStatus where call_status='"+ddl_Callstatus.Text+"'";
            DataSet ds = mod.FillDs(sel1);
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
                lit_msg.Text = "";
            }
            else
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
                lit_msg.Text = "Record is not found";
            }
        }
    }
}