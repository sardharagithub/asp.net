using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class payment : System.Web.UI.Page
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
        adapt = new OleDbDataAdapter("Select r_id,cour_type,f_nm,l_nm from request_courier", con);
        adapt.Fill(dt);
        if (dt.Rows.Count > 0)
        {
           GridView1.DataSource = dt;
            GridView1.DataBind();
         
        }
        con.Close();
    }

   
}