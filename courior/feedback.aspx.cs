using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
public partial class feedback : System.Web.UI.Page
{
    String s = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=G:\courior_db.mdb";
    OleDbConnection con;
    OleDbCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        display();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new OleDbConnection(s);
        con.Open();
       cmd = new OleDbCommand("insert into feedback values ('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"')",con);
       cmd.ExecuteNonQuery();
        con.Close();
        Label5.Text = "Send Success";
        display();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        
    }
    void display()
    {
        con = new OleDbConnection(s);
        con.Open();
        DataTable dt = new DataTable();
        OleDbDataAdapter adp = new OleDbDataAdapter("select * from feedback",con);
        adp.Fill(dt);
        con.Close();
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}