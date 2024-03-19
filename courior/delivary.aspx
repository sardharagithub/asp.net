<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="delivary.aspx.cs" Inherits="delivary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <h1>Login For Delivery</h1>
    <br/>
        <br/>
        <asp:Label ID="Label1" runat="server" Text=" user Name:"></asp:Label> &nbsp; <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br/>
        <br/>
        <asp:Label ID="Label2" runat="server" Text="password"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
        <br />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    </center>
</asp:Content>

