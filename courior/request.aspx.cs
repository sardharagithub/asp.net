using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
public partial class request : System.Web.UI.Page
{
    String s = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=G:\courior_db.mdb";
    OleDbConnection con;
    OleDbCommand cmd;
    OleDbCommand cmd1;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

      

        if (TextBox1.Text == "" || TextBox2.Text == "" ||  TextBox3.Text == "" || TextBox5.Text == "" || TextBox6.Text == "" || TextBox4.Text == "" || TextBox7.Text == "" || TextBox8.Text == "" || TextBox9.Text == "" || TextBox10.Text == "" || TextBox11.Text == "" || TextBox12.Text == "" || TextBox14.Text == "" || (CheckBox1.Checked==true && CheckBox2.Checked==true))
        {
            Label16.Text = "please enter required field";
        }
        else
        {


            String p = "";
            if (CheckBox1.Checked)
            {
                p += CheckBox1.Text;
            }
            if (CheckBox2.Checked)
            {
                p += CheckBox2.Text;
            }
            con = new OleDbConnection(s);
            con.Open();
            cmd = new OleDbCommand("insert into request_courier(r_id,f_nm,l_nm,con_no,del_dt,tc_code,ship_add1,city,state,pack_des,weight,no_box,cour_type) values(" + TextBox13.Text + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox4.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + p.ToString() + "')", con);
            cmd.ExecuteNonQuery();
            Label16.Text = "Data Submit Sucess;";
            con.Close();

            Response.Redirect("customer.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox13.Text = "";
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text="";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";
        TextBox11.Text = "";
        TextBox12.Text = "";
        CheckBox1.Checked = false;
        CheckBox2.Checked = false;


    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        
        con = new OleDbConnection(s);
        con.Open();
        
        cmd = new OleDbCommand("delete from request_courier where r_id="+TextBox13.Text+"",con);
        cmd.ExecuteNonQuery();
            con.Close();
            Label16.Text = "order Cancel.......";
    }
    protected void TextBox14_TextChanged(object sender, EventArgs e)
    {
        
    }
    
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
       
       
    }

    double d;
    double c;
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        
        
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
       
    }
    protected void TextBox12_TextChanged(object sender, EventArgs e)
    {
        if (RadioButton1.Checked)
        {
            d = Convert.ToDouble(TextBox11.Text);
            d = d / 1000;
        }
        else
        {
            d = Convert.ToDouble(TextBox11.Text);
        }
        c = d * 40;
        TextBox14.Text = c.ToString();
        
    }

    protected void TextBox11_TextChanged(object sender, EventArgs e)
    {
       
    }
    protected void TextBox11_leave(object sender, EventArgs e)
    {
        
    }
    protected void TextBox14_onClick(object sender, EventArgs e)
    {
        
    }
    protected void TextBox13_TextChanged(object sender, EventArgs e)
    {
        int i;
        con.Open();


        cmd = new OleDbCommand("select MAX(r_id) from request_courier", con);
        String o = Convert.ToString(cmd.ExecuteScalar());
        if (o == "")
        {
            i = 1;
        }
        else
        {
            i = Convert.ToInt32(o) + 1;
        }
        TextBox13.Text = i.ToString();
        con.Close();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        int i;
        con = new OleDbConnection(s);
        con.Open();


        cmd = new OleDbCommand("select MAX(r_id) from request_courier", con);
        String o = Convert.ToString(cmd.ExecuteScalar());
        if (o == "")
        {
            i = 1;
        }
        else
        {
            i = Convert.ToInt32(o) + 1;
        }
        TextBox13.Text = i.ToString();
        con.Close();
    }
    protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
    {

    }
}
