<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" Theme="Controls_1" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="themes/1/js-image-slider.css" rel="stylesheet" type="text/css" />
    <script src="themes/1/js-image-slider.js" type="text/javascript"></script>
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
    <!--menu-->
   <!-- <div id="header">
	<div id="menu">
		<ul>
			<li class="current_page_item"><a href="Home.aspx">Home</a></li>
            <li><a href="register.aspx">Register</a></li>
			<li><a href="results.aspx">Results</a></li>
			<li><a href="notice.aspx">News Feed</a></li>
            <li><a href="#">Downloads</a></li>
			<li class="last"><a href="contact.aspx">Contact</a></li>
		</ul>
	</div>
</div>-->
    <!--<div id="slider"> edited today
        <figure>
            <img src="images/img02.jpg" alt="">
            <img src="images/original.jpg" alt="">
            <img src="images/original (1).jpg" alt="">
            <img src="images/original (2).jpg" alt="">
            
        </figure>
    </div>-->
    
    <div id="sliderFrame">
        <div id="slider">
            <a href="http://www.manipal.edu" target="_blank">
                <img src="images/img02.jpg" alt="Welcome to Manipal" />
            </a>
            <img src="images/original (3).jpg" alt="" />
            <img src="images/original (4).jpg" alt="" />
            <img src="images/original (5).jpg" alt="" />
            
        </div>
        <div id="htmlcaption" style="display: none;">
            <em>HTML</em> caption. Link to <a href="http://www.websismit.manipal.edu">AMS portal</a>.
        </div>
    </div>

    <!--body content-->
    
  <div id="page">
	<!-- start content -->
	<div id="content">
		<div class="post">
			<h2 class="title">Welcome to our portal </h2>
			<div class="byline">created only for computer science students</div>
			<div class="entry">
				<p>On this portal you will get the latest update of computer science branch and will be able to avail many facilities regarding your academics. You can access :-</p>
                <asp:BulletedList ID="BulletedList1" runat="server">
                    <asp:ListItem>Online Test</asp:ListItem>
                    <asp:ListItem>Slides, PDFs, Notes</asp:ListItem>
                    <asp:ListItem>Link to useful softwares</asp:ListItem>
                </asp:BulletedList>
			</div>
		</div>
		<div class="post">
			<h2 class="title">Login</h2>
			
			<div class="entry">
				
				
				<form method="get" action="">
					<fieldset>
                        <asp:Label ID="Label1" runat="server" Text="Email-Id"></asp:Label>
                        &nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" align="right" EnableTheming="true"></asp:TextBox>
                        <br /><br />
                        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox2" runat="server" align="right" TextMode="Password" EnableTheming="true"></asp:TextBox>
                        <br /><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" />&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Clear" OnClick="Button2_Click" />
                        <br />
					</fieldset>
				</form>
			
			</div>
			<div class="meta">
                <br />
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="register.aspx">New User Register..!!</a>
			</div>
		</div>
	</div>
	<!-- end content -->
	<!-- start sidebar -->
	<div id="sidebar">
    <h2>notice</h2>
  <!--  <marquee behavior="scroll" direction="up" onmouseover="this.stop();" onmouseout="this.start();" scrollamount="5" height="400px" > 
    
    
    

				
				<ul>
					<li><a href="#">
                    MEETING OF ACADEMIC SUB COMMIT
                    <br />
                     </a>
                    An extended meeting of academic sub committee would be held on 07/07/2014 at
                     12:00 hrs, monday with members & invitees. dr. arup kumar das
                    , hon’ble president, governing body is going to preside over the meeting. </li>
                    <br />
					
                  
					<li><a href="#">
                    RECRUITMENT OF GUEST LECTURER</a><br />Applications are invited from UGC NET/SET candidates for the post of temporary guest lecturers for the subject Economics Apply to The Principal Calcutta Girls’ College 3, Goaltuli Lane, Kolkata – 13
                    </li>
                    <br />
					
				</ul>
			
		
           </marquee> -->


        <div class="news red">
	<span>Latest News</span>
	<ul>
		<li><a href="#">Text 1 - Lorem ipsum </li>
		<li><a href="#">Text 2 - Sed hendrerit</a></li>
		<li><a href="#">Text 3 - Phasellus nec</a></li>
		<li><a href="#">Text 4 - Sed id elit</a></li>
	</ul>
</div>

<div class="news blue">
	<span>Latest News</span>
	<ul>
		<li><a href="#">Text 1 - Lorem ipsum </li>
		<li><a href="#">Text 2 - Sed hendrerit</a></li>
		<li><a href="#">Text 3 - Phasellus nec</a></li>
		<li><a href="#">Text 4 - Sed id elit</a></li>
	</ul>
</div>

<div class="news green">
	<span>Latest News</span>
	<ul>
		<li><a href="#">Text 1 - Lorem ipsum </li>
		<li><a href="#">Text 2 - Sed hendrerit</a></li>
		<li><a href="#">Text 3 - Phasellus nec</a></li>
		<li><a href="#">Text 4 - Sed id elit</a></li>
	</ul>
</div>

<!--<div class="news magenta">
	<!--<span>Latest News</span>
	<ul>
		<li><a href="#">Text 1 - Lorem ipsum </li>
		<li><a href="#">Text 2 - Sed hendrerit</a></li>
		<li><a href="#">Text 3 - Phasellus nec</a></li>
		<li><a href="#">Text 4 - Sed id elit</a></li>
	</ul>
</div>-->
	</div>
	<!-- end sidebar -->
	<div style="clear: both;">&nbsp;</div>
</div>
    <div>
        <br /><br /><br /><br />
    </div>
</asp:Content>

