using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
public partial class customer : System.Web.UI.Page
{
    String s = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=G:\courior_db.mdb";
    OleDbConnection con;
    OleDbCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        






    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (TextBox6.Text == "" || TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "")
        {
            Label6.Text = "please required all field.............";
        }
        else
        {
        con = new OleDbConnection(s);
        con.Open();
        String ins = "insert into customer(cust_id,cust_nm,add1,dest,mno,email) values("+TextBox6.Text+",'"+TextBox1.Text +"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"','"+TextBox5.Text+"')";
        cmd = new OleDbCommand(ins,con);
        cmd.ExecuteNonQuery();
        Label6.Text = "submit success";
        con.Close();
        Response.Redirect("Thanks.aspx");
        }

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        int i;
        con = new OleDbConnection(s);
        con.Open();


        cmd = new OleDbCommand("select MAX(cust_id) from customer", con);
        String o = Convert.ToString(cmd.ExecuteScalar());
        if (o == "")
        {
            i = 1;
        }
        else
        {
            i = Convert.ToInt32(o) + 1;
        }
        TextBox6.Text = i.ToString();
        con.Close();
    }
}