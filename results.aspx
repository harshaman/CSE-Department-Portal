<%@ Page Title="" Debug="true" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="results.aspx.cs" Inherits="results" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
       <asp:panel id="Panel1" runat="server">
   <div id='cssmenudown'>
<ul>
   <li class='active'><a href='LoggedIn.aspx'><span>Profile</span></a></li>
   <li><a href='onlinetest.aspx'><span>Online Test</span></a></li>
   <li><a href='results.aspx'><span>Results</span></a></li>
</ul>
</div></asp:panel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form2">
  <div id="page" >
      <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
          <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
          <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
          <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
      </asp:GridView>
</div>
    </form>
</asp:Content>

