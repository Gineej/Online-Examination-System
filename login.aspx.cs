using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineExamSystem
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        string qry;
        HttpCookie ck;
        HttpCookie ad;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\HP\source\repos\OnlineExamSystem\OnlineExamSystem\App_Data\myDB.mdf;Integrated Security=True");
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            qry= "select * from Login where username='"+name.Text+"'and password='"+Pass.Text+"'";
            cmd = new SqlCommand(qry, con);
            dr = cmd.ExecuteReader();

            if(dr.HasRows)
            {
                if(name.Text=="Gineej")
                {
                    ad = new HttpCookie("acook");
                    ad.Values.Add("un", name.Text);
                    Response.Cookies.Add(ad);
                    Response.Redirect("admin.aspx");
                }
                else
                {
                    ck = new HttpCookie("cook");
                    ck.Values.Add("un", name.Text);
                    Response.Cookies.Add(ck);
                    Response.Redirect("testselection.aspx");
                }
            }
            else
            {
                msg.Text = "Invalid UserName/Password";
            }
        }
    }
}