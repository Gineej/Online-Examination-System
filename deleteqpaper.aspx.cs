using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace OnlineExamSystem
{
    public partial class deleteqpaper : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string qry;
        HttpCookie ad;
        protected void Page_Load(object sender, EventArgs e)
        {
            ad = Request.Cookies["acook"];
            if (ad == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void dtest_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\HP\source\repos\OnlineExamSystem\OnlineExamSystem\App_Data\myDB.mdf;Integrated Security=True");
            con.Open();
            qry = "delete from question where settype ='" + DropDownList1.Text + "'";
            cmd = new SqlCommand(qry, con);
            cmd.ExecuteNonQuery();

            Response.Write("<script language='javascript'>window.alert('Queston Paper Deleted Sucessfully');window.location='deleteqpaper.aspx';</script>");


        }
    }
}