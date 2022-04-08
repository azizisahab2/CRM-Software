using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.IO;
using System.Data;

namespace ClientQuery
{
    public partial class QueryForm : System.Web.UI.Page
    {
        Class1 mod = new Class1();
        OleDbConnection Econ;
        SqlConnection con;
        string constr, Query;
        public static string mode = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_save_Click(object sender, EventArgs e)
        {            
            string str = "INSERT into tbl_customer(date,name,mobile,email,mode) values('"+System.DateTime.Now.ToString()+"','" + txt_name.Text + "','" + txt_mobile.Text + "','" + txt_email.Text + "','Manual')";
            mod.InsDelUp(str);
            reset();
        }

        public void reset()
        {
            txt_name.Text = "";
            txt_mobile.Text = "";
            txt_email.Text = "";
        }

        private void ExcelConn(string FilePath)
        {
            string path = string.Concat(Server.MapPath("~/upload/" + FileUpload1.FileName));
            FileUpload1.SaveAs(path);
            constr = string.Format(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source={0};Extended Properties=""Excel 12.0 Xml;HDR=YES;""", path);
            Econ = new OleDbConnection(constr);
        }

        private void connection()
        {
            con = mod.con; //new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename='E:\AbdurRahmanProjects\WebSites\aimnet\App_Data\aimnet.mdf';Integrated Security=True");
        }

        protected void btn_import_Click(object sender, EventArgs e)
        {
            string CurrentFilePath = Path.GetFullPath(FileUpload1.PostedFile.FileName);
            InsertExcelRecords1(CurrentFilePath);
        }

        private void InsertExcelRecords1(string FilePath)
        {
            ExcelConn(FilePath);

            Query = string.Format("Select [date],[name],[mobile],[email],[stage],[owner],[source],[labels],[mode] FROM [{0}]", "Sheet1$"); OleDbCommand Ecom = new OleDbCommand(Query, Econ);
            Econ.Open();

            DataSet ds = new DataSet();
            OleDbDataAdapter oda = new OleDbDataAdapter(Query, Econ);
            Econ.Close();
            oda.Fill(ds);
            DataTable Exceldt = ds.Tables[0];
            connection();
            //creating object of SqlBulkCopy  
            SqlBulkCopy objbulk = new SqlBulkCopy(con);
            //assigning Destination table name  
            objbulk.DestinationTableName = "tbl_customer";
            //Mapping Table column  

            objbulk.ColumnMappings.Add("date", "date");
            objbulk.ColumnMappings.Add("name", "name");
            objbulk.ColumnMappings.Add("mobile", "mobile");
            objbulk.ColumnMappings.Add("email", "email");

            objbulk.ColumnMappings.Add("stage", "stage");
            objbulk.ColumnMappings.Add("owner", "owner");
            objbulk.ColumnMappings.Add("source", "source");
            objbulk.ColumnMappings.Add("labels", "labels");
            objbulk.ColumnMappings.Add("mode", "mode");
            //inserting Datatable Records to DataBase  
            con.Open();
            objbulk.WriteToServer(Exceldt);
            con.Close();
            //lit_msg3.Text = "Record Imported Successfully";
            //fill_grid();

            string upd = "UPDATE tbl_customer SET mode='Import' WHERE mode='0' ";
            mod.InsDelUp(upd);
            Response.Write("<script>alert('Record Imported Successfully');</script>");
        }
    }
}