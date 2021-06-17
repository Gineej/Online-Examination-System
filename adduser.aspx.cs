using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace OnlineExamSystem
{
    public partial class adduser : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        string qry;
        string cqry;
        HttpCookie ad;

        protected void Page_Load(object sender, EventArgs e)
        {
            ad = Request.Cookies["acook"];
            if(ad==null)
            {
                Response.Redirect("login.aspx");
            }
            con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\HP\source\repos\OnlineExamSystem\OnlineExamSystem\App_Data\myDB.mdf;Integrated Security=True");
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cqry="select * from login where username = '"+name.Text+"'";
            cmd = new SqlCommand(cqry, con);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                msg.Text=("UserName already exists");
            }
            else
            {
                con.Close();
                con.Open();
                qry = "insert into login values('" + name.Text + "','" + Pass.Text + "','Guest')";
                cmd = new SqlCommand(qry, con);
                cmd.ExecuteNonQuery();
                msg.Text = "UserName Successfully added";
                name.Text = "";
                Pass.Text = "";
            }
        }

    }
}