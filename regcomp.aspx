<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" Theme="Controls_1" AutoEventWireup="true" CodeFile="regcomp.aspx.cs" Inherits="regcomp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- menu -->

    <!--content-->
    <div id="page">
        <div class="post">
            <h1 class="title">registration complete..!!</h1>
            <br />
            
            <h2 class="title">Login</h2>
			
			<div class="entry">
				
				
				<form method="get" action="">
					<fieldset>
                        <asp:Label ID="Label1" runat="server" Text="Email-Id: "></asp:Label>
                        &nbsp;<asp:TextBox ID="TextBox1" runat="server" align="right"></asp:TextBox>
                        <br /><br />
                        <asp:Label ID="Label2" runat="server" Text="Password: "></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" align="right" TextMode="Password"></asp:TextBox>
                        <br /><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" />&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Clear" onclick="Button2_Click" />
                        <br />
					</fieldset>
				</form>
			
			</div>
       
    </div>
        </div>
</asp:Content>

