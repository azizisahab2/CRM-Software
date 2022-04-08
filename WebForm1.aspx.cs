using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientQuery
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Class1 mod = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            file_upload();
            string str = "INSERT into tbl_query(Email,Language,timeline_delivery,no_of_page,description,attachment) values('" + txt_email.Text + "','" + ddl_language.Text + "','" + txt_delivery.Text + "','" + txt_noOfpage.Text + "','" + txt_desc.Text + "','"+ Session["uplf1"].ToString() + "')";
            mod.InsDelUp(str);
            reset();
        }

        public void file_upload()
        {
            string dipath = Server.MapPath(".") + "/upload/";
            string filename = FileUpload1.FileName;
            int size = FileUpload1.PostedFile.ContentLength;
            string ext = System.IO.Path.GetExtension(filename);
            if (ext.ToLower() == ".doc" || ext.ToLower() == ".docx" || ext.ToLower() == ".xls" || ext.ToLower() == ".xlsx" || ext.ToLower() == ".pdf" || ext.ToLower() == ".pptx" || ext.ToLower() == ".png" || ext.ToLower() == ".jpg")
            {
                if (size >= 0 * 1024 * 1024 && size <= 10 * 1024 * 1024)
                {
                    Random rem = new Random();
                    int r = rem.Next(10000, 99999);
                    string uplf = System.IO.Path.GetFileNameWithoutExtension(filename) + r + ext;
                    Session["uplf1"] = uplf;
                    FileUpload1.SaveAs(dipath + uplf);
                    lit_msg.Text = "File Uploaded";
                }
                else
                {
                    lit_msg.Text = "Please Upload Image Less than 10 MB";
                }
            }
            else
            {
                lit_msg.Text = "Please Upload Excel, word, pdf, jpg, png, documents, ppt";
            }
        }

        public void reset()
        {
            txt_email.Text = "";            
            txt_delivery.Text = "";
            txt_desc.Text = "";
            txt_noOfpage.Text = "";
        }
    }
}