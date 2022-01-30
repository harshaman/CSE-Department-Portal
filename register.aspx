<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" Theme="Controls_1" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

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
    <!-- menu -->
<!--<div id="header">
	<div id="menu">
		<ul>
			<li><a href="Home.aspx">Home</a></li>
            <li class="current_page_item"><a href="register.aspx">Register</a></li>
			<li><a href="results.aspx">Results</a></li>
			<li><a href="notice.aspx">News Feed</a></li>
            <li><a href="#">Downloads</a></li>
			<li class="last"><a href="contact.aspx">Contact</a></li>
		</ul>
	</div>
</div>-->

    <!--content-->
    
<div id="page">
    <div class="post">
			<h2 class="title">Registration</h2>

			
		</div>
        <fieldset align="center">
        <legend>Registration</legend>

        <table align="center">
            <tr>
                <td align="left">
                    <asp:Label ID="Label1" runat="server" Text="Registration Number"></asp:Label></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" MaxLength="9" 
                        ontextchanged="TextBox1_TextChanged"></asp:TextBox></td>
                <td class="auto-style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr><td colspan="2">
                <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="CustomValidator" OnServerValidate="CustomValidator2_ServerValidate" ControlToValidate="TextBox1">*Must be 9-digit</asp:CustomValidator></td></tr>
            <tr>
                <td align="left">
                    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" ontextchanged="TextBox2_TextChanged"></asp:TextBox></td>
                <td class="auto-style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox2">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr><td colspan="2">&nbsp;&nbsp;</td></tr>
            <tr>
                <td align="left">
                    <asp:Label ID="Label3" runat="server" Text="Semester"></asp:Label></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>First</asp:ListItem>
                        <asp:ListItem>Second</asp:ListItem>
                        <asp:ListItem>Third</asp:ListItem>
                        <asp:ListItem>Fourth</asp:ListItem>
                        <asp:ListItem>Fifth</asp:ListItem>
                        <asp:ListItem>Sixth</asp:ListItem>
                        <asp:ListItem>Seventh</asp:ListItem>
                        <asp:ListItem>Eighth</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="DropDownList1">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr><td colspan="2">&nbsp;</td></tr>
            <tr>
                <td align="left">
                    <asp:Label ID="Label4" runat="server" Text="Email-Id"></asp:Label></td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                <td class="auto-style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox4">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr><td colspan="2" class="auto-style2">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="RegularExpressionValidator" ControlToValidate="TextBox4" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*Not a valid Email-Id</asp:RegularExpressionValidator></td></tr>
            <tr>
                <td align="left">
                    <asp:Label ID="Label8" runat="server" Text="Phone Number"></asp:Label></td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" MaxLength="10"></asp:TextBox></td>
                <td class="auto-style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox8">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr><td colspan="2">
                <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="CustomValidator" ControlToValidate="TextBox8" OnServerValidate="CustomValidator1_ServerValidate">*Must be 10-digit</asp:CustomValidator></td></tr>
            <tr>
                <td align="left">
                    <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label></td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox></td>
                <td class="auto-style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox6">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr><td colspan="2" class="auto-style2">
                <asp:CustomValidator ID="CustomValidator3" runat="server" ErrorMessage="CustomValidator" ControlToValidate="TextBox6" OnServerValidate="CustomValidator3_ServerValidate">*Must have 8 character minimum</asp:CustomValidator></td></tr>
            <tr>
                <td align="left">
                    <asp:Label ID="Label7" runat="server" Text="Confirm Password"></asp:Label></td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Height="22px" TextMode="Password"></asp:TextBox></td>
                <td class="auto-style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox7">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr><td colspan="2">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator" ControlToCompare="TextBox6" ControlToValidate="TextBox7">*Password did not match</asp:CompareValidator></td></tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Register" 
                        onclick="Button1_Click" /></td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Clear" OnClick="Button2_Click" /></td>
            </tr>
            <tr>
            <td colspan="2">   
                <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
            </td>
            </tr>

        </table>
    </fieldset>
</div>
    <div>
        <br /><br /><br /><br /><br /><br /><br />
    </div>
</asp:Content>

