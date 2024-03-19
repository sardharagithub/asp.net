using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class track_form : System.Web.UI.Page
{
    String s = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=G:\courior_db.mdb";
  //  OleDbConnection con;
   // OleDbCommand cmd;
   // OleDbDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
      /*  con = new OleDbConnection(s);
        cmd = new OleDbCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "select tc_code from  request_courier where tc_code='"+TextBox1.Text+"' ";
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label2.Text = "tracking";

            cmd.CommandText="select "


        }
        else
        {
            Label2.Text = "incorrect User name & Password";
        }*/
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
      /*  con = new OleDbConnection(s);
        cmd = new OleDbCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "select * from request_courier where tc_code='" + TextBox2.Text + "' ";
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {

            Response.Write("ok");


        }*/
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}