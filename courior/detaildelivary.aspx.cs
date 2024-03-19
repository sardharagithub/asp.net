using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class detaildelivary : System.Web.UI.Page
{
   /* String s = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=G:\courior_db.mdb";
    OleDbConnection con;
    OleDbCommand cmd;*/
    protected void Page_Load(object sender, EventArgs e)
    {
       // display();
    }
    /* void display()
     {
         con = new OleDbConnection(s);
         con.Open();
         DataTable dt = new DataTable();
         OleDbDataAdapter adp = new OleDbDataAdapter("select * from customer", con);
         adp.Fill(dt);
         con.Close();
         if (dt.Rows.Count > 0)
         {
             GridView1.DataSource = dt;
             GridView1.DataBind();
        }
         }*/

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    protected void SqlDataSource1_Deleting(object sender, SqlDataSourceCommandEventArgs e)
    {

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void SqlDataSource1_Deleted(object sender, SqlDataSourceStatusEventArgs e)
    {

    }
    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {

    }
}