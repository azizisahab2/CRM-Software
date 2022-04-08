using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ClientQuery
{
    public partial class TodaysCall : System.Web.UI.Page
    {
        Class1 mod = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Literal1.Text = DateTime.UtcNow.ToString("yyyy-MM-dd");
                string sel = "SELECT * from tbl_CustomerStatus where followupdate='" + DateTime.UtcNow.ToString("yyyy-MM-dd") + "'";
                //GridView1 = mod.fillgrid(GridView1, sel);
                DataSet ds = mod.FillDs(sel);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                }
                else
                {
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                    lit_msg.Text = "Sorry! There is no data for call today. ";
                }
            }
        }
    }
}