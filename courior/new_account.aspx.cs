using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class new_account : System.Web.UI.Page
{
    string s = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=G:\courior_db.mdb";
    OleDbConnection con;
    OleDbCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox6.Text == "" || TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "")
        {
            Label6.Text = "must be requied all field";
        }
        else
        {
           
                con = new OleDbConnection(s);

                con.Open();
                string s1 = "insert into  lgn_usr(usr_nm,usr_psw) values('" + TextBox1.Text + "','" + TextBox6.Text + "')";
                cmd = new OleDbCommand(s1, con);
                cmd.ExecuteNonQuery();

               Label6.Text="registration success";
               Response.Redirect("login.aspx");
           
        }
    }
}