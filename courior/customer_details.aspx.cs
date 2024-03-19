using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class customer_details : System.Web.UI.Page
{
    /*String s = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=G:\courior_db.mdb";
    OleDbConnection con;
    OleDbCommand cmd;*/
    
    protected void Page_Load(object sender, EventArgs e)
    {/*
        if (!IsPostBack)
        {
            BindGridviewData();
        }*/
    }
    protected void BindGridviewData()
    {/*
        DataTable dt = new DataTable();
        dt.Columns.Add("cust_id", typeof(string));
        dt.Columns.Add("cust_nm", typeof(string));
        dt.Columns.Add("add1", typeof(string));
        dt.Columns.Add("dest", typeof(string));
        dt.Columns.Add("mno", typeof(string));
        dt.Columns.Add("email", typeof(string));

        con = new OleDbConnection(s);
        con.Open();
        
        OleDbDataAdapter adp = new OleDbDataAdapter("select * from customer", con);
        adp.Fill(dt);
        con.Close();
        if (dt.Rows.Count > 0)
        {
            gvDetails.DataSource = dt;
            gvDetails.DataBind();
        }
      */
    }
    protected void btnProcess_Click(object sender, EventArgs e)
    {/*
        string str = string.Empty;
        string strname = string.Empty;
        foreach (GridViewRow gvrow in gvDetails.Rows)
        {
            CheckBox chk = (CheckBox)gvrow.FindControl("chkSelect");
            if (chk != null & chk.Checked)
            {
                str += gvDetails.DataKeys[gvrow.RowIndex].Value.ToString() + ',';
                strname += gvrow.Cells[2].Text + ',';
            }
        }
        str = str.Trim(",".ToCharArray());
        strname = strname.Trim(",".ToCharArray());
        lblmsg.Text = "Selected Customer ID: <b>" + str + "</b><br/>" + "Selected Customer names: <b>" + strname + "</b>";*/
    }

    protected void gvDetails_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {

    }
    protected void SqlDataSource1_Deleting(object sender, SqlDataSourceCommandEventArgs e)
    {

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}