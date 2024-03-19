using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
         Label3.Text = DateTime.Now.ToString();
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Image4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://www.linkedin.com/authwall?trk=gf&trkInfo=AQF7WXaQN19fhwAAAYToQjlIseuDm9Smk_JPr7WCJDy1xWUjxcimJZDfW9yZlaYoKwaPVDK8hqZDTlZ3KdnO5-n5R1pI4CoDRIm0ovrxPiLRSiSgOKaOoLemN8XQVoJU5F7wQ5k=&original_referer=http://shreeanjanicourier.com/&sessionRedirect=https%3A%2F%2Fwww.linkedin.com%2Fcompany%2Fshree-anjani-courier-services-pvt.-ltd.");
    }
    protected void Image5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://www.facebook.com/ShreeAnjaniCourierService");
    }
    protected void Image7_Click(object sender, ImageClickEventArgs e)
    {
       
    }
}
