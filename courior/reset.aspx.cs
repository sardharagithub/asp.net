using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class reset : System.Web.UI.Page
{
    String s = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=G:\courior_db.mdb";
    OleDbConnection con;
    OleDbCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox3.Text == TextBox4.Text)
        {
            con =new OleDbConnection(s);
            con.Open();
            cmd = new OleDbCommand("update lgn_usr set usr_psw='"+TextBox4.Text+"' where usr_nm='"+TextBox1.Text+"'",con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Reset Sucess";
            TextBox1.Text = "";
            TextBox3.Text = "";
            TextBox2.Text="";
            TextBox4.Text = "";
            
        }
        else
        {
            Label1.Text = "please,enter same password  for confirm password";
        }
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
}