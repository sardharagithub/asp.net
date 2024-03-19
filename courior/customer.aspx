<%@ Page Language="C#" AutoEventWireup="true" CodeFile="customer.aspx.cs" Inherits="customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:cornflowerblue">
    <center><h1>fill your details</h1></center>
    <form id="form1" runat="server">
    <div style="height:100px;width:200px;">
    <center><b>

        <fieldset style="width: 641px; margin-left: 236px; background-color:pink;">
            <legend>Customer Detail</legend>
            <br />
            <br />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Add New" Font-Bold="True" Font-Size="Medium" />
            <br />
            <br />
&nbsp;<asp:Label ID="Label7" runat="server" Text="Customer ID:" Font-Bold="True" Font-Overline="False" Font-Size="Medium" ForeColor="#0000CC"></asp:Label>   &nbsp;   <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Name:" Font-Bold="True" Font-Overline="False" Font-Size="Medium" ForeColor="#0000CC"></asp:Label>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="name must be alphabet" ForeColor="Red" ValidationExpression="\w{1,}"></asp:RegularExpressionValidator>
            <br/>
            <br/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Address" Font-Bold="True" Font-Overline="False" Font-Size="Medium" ForeColor="#0000CC"></asp:Label>          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;          <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
            <br/>
            <br/>
             <asp:Label ID="Label3" runat="server" Text="destination address" Font-Bold="True" Font-Overline="False" Font-Size="Medium" ForeColor="#0000CC"></asp:Label>          &nbsp; &nbsp;          <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Text="Mobile Number" Font-Bold="True" Font-Overline="False" Font-Size="Medium" ForeColor="#0000CC"></asp:Label>     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="mobile must be 10 digit" ForeColor="Red" ValidationExpression="\d{10}">mobile must be 10 digit</asp:RegularExpressionValidator>
            <br/>
            <br/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Text="E-mail" Font-Bold="True" Font-Overline="False" Font-Size="Medium" ForeColor="#0000CC"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="email must contains letter,lowercase uppercase, digit and @ sysmbol." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">email must contains letter,lowercase uppercase, digit and @ sysmbol.</asp:RegularExpressionValidator>
            <br/>
            <br/>
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" Font-Bold="True" Font-Overline="False" Font-Size="Medium" ForeColor="#0000CC"></asp:Button>    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Button2_Click" Font-Bold="True" Font-Overline="False" Font-Size="Medium" ForeColor="#0000CC"></asp:Button>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" PostBackUrl="~/request.aspx" Text="back" Font-Bold="True" Font-Overline="False" Font-Size="Medium" ForeColor="#0000CC" />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Fill proper details of form " />
            <br />
        </fieldset>

        </b>

        </center>
    </div>
    </form>
</body>
</html>
