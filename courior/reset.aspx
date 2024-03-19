<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reset.aspx.cs" Inherits="reset" MaintainScrollPositionOnPostback="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:pink;font-style:oblique">
    <form id="form1" runat="server"> <center>
   
       <h1 style="color:blue">RESET PASSWORD</h1></center>
            <fieldset style="width: 489px; margin-left: 281px">
                <br />
                <br />
        <legend style="color:blueviolet"><b>Reset Your Password</b></legend>
           
  
       
        <center>
      <b> User Name </b>  : <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
        <br />
       <b> Old password </b>  :  <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br /><br />
       <b> New password  </b>   :  <asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox>
        <br /><br />
        <b>Confirm password  :</b>  <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br /><br />

        <center style="height: 79px; width: 489px"><b><asp:Button ID="Button1" runat="server" Text="RESET" OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" PostBackUrl="~/login.aspx" Text="LOGIN" Width="63px" />
            <br />
            <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </center></b>
       </center>
    
                
            
            </fieldset><br />
        <br />

        </form>
</body>
</html>
