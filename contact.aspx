<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:panel id="Panel1" runat="server">
   <div id='cssmenudown'>
<ul>
   <li class='active'><a href='LoggedIn.aspx'><span>Profile</span></a></li>
   <li><a href='onlinetest.aspx'><span>Online Test</span></a></li>
   <li><a href='results.aspx'><span>Results</span></a></li>
</ul>
</div></asp:panel>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    


    <!--content-->
    <form id="form3">
        <div id="page">
        <div class="post">
        <h2 class="title">Tanay Mathur</h2>
    <br />
    <p>phone no. :- 9535094181</p>
    <p>tanay.mathur94@gmail.com</p>
    <a href="http://www.facebook.com/tanay.mathur" target="_blank">find me on facebook..!!</a>
    <br />
    <br />
    <br />
    <br />
    <h2 class="title">Aman Harsh</h2>
    <br />
    <p>phone no. :- 9740481620</p>
    <p>aman7085@gmail.com</p>
    <a href="http://www.facebook.com/harshaman3" target="_blank">find me on facebook..!!</a>
        </div>
</div>
        </form>
</asp:Content>

