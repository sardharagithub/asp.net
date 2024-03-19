using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
public partial class admin_detail : System.Web.UI.Page
{
    String cs = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=G:\courior_db.mdb";
    OleDbConnection con;
    OleDbCommand cmd;
    OleDbDataAdapter adapt;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ShowData();
        }
    }
    protected void ShowData()
    {
        dt = new DataTable();
        con = new OleDbConnection(cs);
        con.Open();
        adapt = new OleDbDataAdapter("Select * from admin", con);
        adapt.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        con.Close();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}