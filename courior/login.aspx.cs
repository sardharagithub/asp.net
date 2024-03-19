using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class Default2 : System.Web.UI.Page
{
    String s = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=G:\courior_db.mdb";
    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

      //  Response.Redirect("new_account.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (RadioButton1.Checked)
        {
            con = new OleDbConnection(s);
            cmd = new OleDbCommand();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "select * from lgn_usr where usr_nm='" + TextBox1.Text + "' and usr_psw='" + TextBox2.Text + "'";
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label3.Text = "success login";
               
                Response.Redirect("request.aspx");

             }
            else
            {
                Label3.Text = "incorrect User name & Password";
                TextBox1.Text = "";
                TextBox2.Text = "";
            }
        }
        else
        {
            con = new OleDbConnection(s);
            cmd = new OleDbCommand();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "select * from admin where admin_nm='" + TextBox1.Text + "' and admin_psw='" + TextBox2.Text + "'";
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label3.Text = "success login";
                Label1.Focus();
                Response.Redirect("admin_detail.aspx");

            }
            else
            {
                Label3.Text = "incorrect User name & Password";
                Label1.Focus();

            }
        }
    }
   
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
       
            lgn.Enabled = true;
          //  new_ac.Visible = true;
       
        
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        lgn.Enabled = true;
    }
   
}