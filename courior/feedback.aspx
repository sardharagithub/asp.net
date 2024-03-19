<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" MaintainScrollPositionOnPostback="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <br />
        <br />
       
        <asp:Label ID="Label4" runat="server" Text="Give Feedback" Font-Size="X-Large"></asp:Label>
        <br />
        <br style="background-color: #FFCCCC" />
        <br />
        <br />
    <asp:Label ID="Label1" runat="server" Text="NAME"></asp:Label>    :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
    <br/>
   
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
     <asp:Label ID="Label2" runat="server" Text="FROM EMAIL"></asp:Label>   :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <asp:TextBox ID="TextBox2" runat="server" Width="215px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="please enter email" ForeColor="Red" validationExpression="/^w+[+.w-]*@([w-]+.)*w+[w-]*.([a-z]{2,4}|d+)$/i"></asp:RequiredFieldValidator>
        <br />
        <br />
        <br />
&nbsp;<asp:Label ID="Label3" runat="server" Text="FEEDBACK"></asp:Label>      &nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" style="margin-left: 27px" TextMode="MultiLine"></asp:TextBox>&nbsp;<br/>
    <br/>
    <center><asp:Button ID="Button1" runat="server" Text="Send" Font-Bold="True" Font-Size="15pt" OnClick="Button1_Click"></asp:Button>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="541px">
            <AlternatingRowStyle BackColor="White" />
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <br />
        <br />
        <br />
        </center>
        </center>
   
</asp:Content>


