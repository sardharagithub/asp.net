using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class delivary : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if ((TextBox1.Text == "darshi" && TextBox2.Text == "123") || (TextBox1.Text == "sweta" && TextBox2.Text == "345"))
        {

            Label3.Text = "Login Sucess";
            Response.Redirect("detaildelivary.aspx");
        }
        else 
        {
            Label3.Text = "Login Denied";
            TextBox1.Focus();
        }
    }
}