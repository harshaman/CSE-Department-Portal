<%@ Page Title="" Language="C#" Debug="true" Theme="Controls_1" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LoggedIn.aspx.cs" Inherits="LoggedIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
       

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div id='cssmenudown'>
<ul>
   <li class='active'><a href='LoggedIn.aspx'><span>Profile</span></a></li>
   <li><a href='onlinetest.aspx'><span>Online Test</span></a></li>
   <li><a href='#'><span>Results</span></a></li>
</ul>
</div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- start header -->
<!--   <div id="header">
	<div id="menu">
		<ul>
			<li><a href="Home.aspx">Home</a></li>
            <li class="current_page_item"><a href="LoggedIn.aspx">Profile</a></li>
            <li><a href="register.aspx">Academics</a></li>
			<li><a href="results.aspx">Results</a></li>
			<li><a href="notice.aspx">Notice</a></li>
            <li><a href="register.aspx">Online Test</a></li>
            <li><a href="#">Downloads</a></li>
			<li class="last"><a href="contact.aspx">Contact</a></li>
            <li><a href="#">Logout</a></li>

		</ul>
	</div>
</div>-->
      <!--content-->
    <form id="form3">
        <div id="page">
        <div class="post">
       
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    <h2 class="title">Personal Details
                    <br /> <%# name %>
    <br /></h2>
                    <h3 class="active">
    <p>Registration Number: <%# reg %></p>
    <p>Semester: <%# sem %></p>
                        </h3>
                     <br />
                     <asp:Button ID="Button1" runat="server" Text="Contact Details" CommandName="NextView" />
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <h2 class="title">Contact Details
                    <br /> <%# name %>
    <br /></h2>
                    <h3 class="active">
    <p>Email ID: <%# email %></p>
    <p>Phone Number: <%# phone %></p>
                        <h3></h3>
                        <br />
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Personal Details" />
                        </h3>
                </asp:View>
            </asp:MultiView>
        </div>
</div>
        </form>
</asp:Content>

