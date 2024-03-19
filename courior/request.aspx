<%@ Page Title="" Language="C#" MasterPageFile="~/user_login.master" AutoEventWireup="true" CodeFile="request.aspx.cs" Inherits="request" EnableSessionState="True" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
       

   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <center style="color:red;background-color:lightpink;"><h1 style="color:red;background-color:pink;"><u>Request  Courier</u></h1>
            <hr />
        
        <h3 style="color:red;background-color:pink;"><u>please fill up form for request</u></h3>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Add New" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox13" runat="server" Width="94px" OnTextChanged="TextBox13_TextChanged"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <div style="color:blue;font:bold;background-color:pink;font-size:large">
    <div>
         <asp:Label ID="Label1" runat="server" Text="Request*"></asp:Label>  </br>
           <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox1"  ErrorMessage="must be name alphabet" ForeColor="Red"  ValidationExpression="\w{1,}" Display="Dynamic"></asp:RegularExpressionValidator>
           <asp:TextBox ID="TextBox1" runat="server" Height="32px"></asp:TextBox>       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       <asp:TextBox ID="TextBox2" runat="server" Height="31px"></asp:TextBox>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox2"  ErrorMessage="must be alphabet" ForeColor="Red" ValidationExpression="\w{1,}" ValidationGroup="a"></asp:RegularExpressionValidator>
          </br>
           <asp:Label ID="Label2" runat="server" Text="First Name" ForeColor="#3333CC"></asp:Label>     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
    </div>
    <br>
    <div>
        <asp:Label ID="Label4" runat="server" Text="Contact Number*"></asp:Label>
        </br>
        <asp:TextBox ID="TextBox3" runat="server" Height="35px" Width="131px">91</asp:TextBox>            &nbsp;&nbsp;&nbsp;&nbsp;            -       &nbsp;          &nbsp;&nbsp;&nbsp;&nbsp;          <asp:TextBox ID="TextBox5" runat="server" Height="34px"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="enter must be 10 digit" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
    </br>
    <asp:Label ID="Label5" runat="server" Text="Country Code"></asp:Label>
     </div>
    </br></br>
    <div>
        <asp:Label ID="Label6" runat="server" Text="Desired Delivery Date:"></asp:Label>
        </br>
        <asp:TextBox ID="TextBox6" runat="server" Height="40px" Width="130px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
        </br>
        <asp:Label ID="Label7" runat="server" Text="Date"></asp:Label>
    </div>
    </br>
    </br>
    <div>
        <asp:Label ID="Label8" runat="server" Text="Tracking code*"></asp:Label>
        </br>
        <asp:TextBox ID="TextBox4" runat="server" Height="32px" Width="124px"></asp:TextBox>
    </div>
    </br>
    </br>
    <div>
        <asp:Label ID="Label9" runat="server" Text="Shipping Adress:*"></asp:Label>
        </br>
        <asp:TextBox ID="TextBox7" runat="server" Height="33px" TextMode="MultiLine" Width="122px"></asp:TextBox>
        </br>
        <asp:Label ID="Label10" runat="server" Text="Street Adress"></asp:Label>
    </div>
            <div>
        <asp:Label ID="Label11" runat="server" Text="City*">
        </asp:Label>
        <asp:TextBox ID="TextBox8" runat="server" Height="25px" Width="116px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label12" runat="server" Text="State*"></asp:Label>     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     <asp:TextBox ID="TextBox9" runat="server" Height="33px" Width="129px"></asp:TextBox>
        </br>
    </div>
    </br>
    </br>
    <div>
        <asp:Label ID="Label13" runat="server" Text="Package Description*"></asp:Label>
        </br>
        <asp:TextBox ID="TextBox10" runat="server" Height="33px" TextMode="MultiLine" Width="152px"></asp:TextBox>
        </br>
    </div>
    <br/><br />
    <div style="color: #0000FF">
        <asp:Label ID="Label14" runat="server" Text="Package weight*">
        </asp:Label>
        <asp:TextBox ID="TextBox11" runat="server" Height="32px" Width="120px" OnTextChanged="TextBox11_TextChanged" ForeColor="Red"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="p" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Gram" />
&nbsp;
        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="p" Text="KG" OnCheckedChanged="RadioButton2_CheckedChanged" />
        (must be in digit)</div>
    <br /><br />
      <div>
        <asp:Label ID="Label15" runat="server" Text="Number Of boxes*">
        </asp:Label>
        <asp:TextBox ID="TextBox12" runat="server" Height="32px" Width="113px" OnTextChanged="TextBox12_TextChanged" AutoPostBack="True"></asp:TextBox>
    </div>
    <br/><br />
            Payment Mode:
            <div style="height: 61px">
        <br/><asp:CheckBox ID="CheckBox1" runat="server" Text="Offline" OnCheckedChanged="CheckBox1_CheckedChanged" />  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:CheckBox ID="CheckBox2" runat="server" Text=" Online" />
        <br />
        <br />
        </div>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label17" runat="server" Text="charges"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox14" runat="server" Height="18px" OnTextChanged="TextBox14_TextChanged"></asp:TextBox>
            <br />
    <br/>
    <center><asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" Width="116px"></asp:Button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button2" runat="server" Text="Cancel" Width="96px" OnClick="Button2_Click"></asp:Button>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Order Cancel" />
        <br />
        <br />
    <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" HeaderText="please fill proper details" ShowMessageBox="True" />
        <br />
            </center></center>
   </div>
</asp:Content>

