using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace OnlineExamSystem
{
    public partial class paperview : System.Web.UI.Page
    {
        public SqlConnection con;
        public SqlCommand cmd;
        public SqlDataReader dr;
        public string qry;

        string settype;
        public int ans;
        HttpCookie ad;
        protected void Page_Load(object sender, EventArgs e)
        {
            ad = Request.Cookies["acook"];
            if (ad == null)
            {
                Response.Redirect("login.aspx");
            }

            con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\HP\source\repos\OnlineExamSystem\OnlineExamSystem\App_Data\myDB.mdf;Integrated Security=True");
            con.Open();

            settype = System.Convert.ToString(Request.QueryString["settype"]);
            HiddenField1.Value = testlist.SelectedValue;

            qry = "select * from question where settype='" + HiddenField1.Value + "'order by qid";
            cmd = new SqlCommand(qry, con);
            dr = cmd.ExecuteReader();
            

        }

        protected void addquestion_Click(object sender, EventArgs e)
        {
            Response.Redirect("SetQPaper.aspx");
        }

        protected void find_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            qry = "select * from question where settype='" + HiddenField1.Value + "'order by qid";
            cmd = new SqlCommand(qry, con);
            dr = cmd.ExecuteReader();
            //con.Close();
        }
    }
}