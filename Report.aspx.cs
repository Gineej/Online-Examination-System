using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace OnlineExamSystem
{
    public partial class Report : System.Web.UI.Page
    {
        HttpCookie ad;
        public SqlConnection con;
        public SqlCommand cmd;
        public SqlDataReader dr;
        string qry;

        protected void Page_Load(object sender, EventArgs e)
        {
            ad = Request.Cookies["acook"];
            if (ad == null)
            {
                Response.Redirect("login.aspx");
            }

            con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\HP\source\repos\OnlineExamSystem\OnlineExamSystem\App_Data\myDB.mdf;Integrated Security=True");
            con.Open();

            qry = "select * from results";
            cmd = new SqlCommand(qry, con);
            dr = cmd.ExecuteReader();
        }
    }
}