<%@ Page Title="" Language="C#" Debug="true" Theme="Controls_1" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="onlinetest.aspx.cs" Inherits="onlinetest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div id='cssmenudown'>
<ul>
   <li class='active'><a href='LoggedIn.aspx'><span>Profile</span></a></li>
   <li><a href='onlinetest.aspx'><span>Online Test</span></a></li>
   <li><a href='results.aspx'><span>Results</span></a></li>
</ul>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form2">
  <div id="page" align="center">
  <div align="center">
 <table align="center">
            <tr>
                <td align="center">
                    <asp:Label ID="Label2" runat="server" Text="Test" Font-Bold="True" Font-Size="Large"></asp:Label></td>
                    </tr>



                  <tr>  
                <td align="left" colspan ="4">
                    <asp:Label ID="Label1" runat="server" Text="which of the following is a data type ?" ></asp:Label></td>
                    </tr>
                       <tr>  
                       
                <td align="left" colspan ="4">
                    <asp:RadioButtonList ID="CheckBoxList1" runat="server"  
                       >
                        <asp:ListItem>&amp;&amp;</asp:ListItem>
                        <asp:ListItem>||</asp:ListItem>
                        <asp:ListItem>int</asp:ListItem>
                        <asp:ListItem>function</asp:ListItem>
                       
                         </asp:RadioButtonList>
                               </td>
                    </tr>
                    <tr>  
                <td align="left" colspan ="4">
                    <asp:Label ID="Label3" runat="server" Text="The keyword used to transfer control from a function back to the calling function is" ></asp:Label></td>
                    </tr>
                       <tr>  
                       
                <td align="left" colspan ="4">
                    <asp:RadioButtonList ID="CheckBoxList2" runat="server" 
                        >
                        <asp:ListItem>switch</asp:ListItem>
                        <asp:ListItem>goto</asp:ListItem>
                        <asp:ListItem>go back</asp:ListItem>
                        <asp:ListItem>return</asp:ListItem>
                       
                         </asp:RadioButtonList>
                               </td>
                    </tr>
                    
                      <tr>  
                <td align="left" colspan ="4">
                    <asp:Label ID="Label4" runat="server" Text="A function cannot be defined inside another function" ></asp:Label></td>
                    </tr>
                       <tr>  
                       
                <td align="left" colspan ="4">
                    <asp:RadioButtonList ID="CheckBoxList3" runat="server" >
                        <asp:ListItem>true </asp:ListItem>
                        <asp:ListItem>false</asp:ListItem>
                       
                       
                         </asp:RadioButtonList>
                               </td>
                    </tr>
                    <tr>
                     <td align="left" colspan ="4">
                    <asp:Label ID="Label5" runat="server" Text="In C all functions except main() can be called recursively." ></asp:Label></td>
                    </tr>
                       <tr>  
                       
                <td align="left" colspan ="4">
                    <asp:RadioButtonList ID="CheckBoxList4" runat="server" >
                        <asp:ListItem>true </asp:ListItem>
                        <asp:ListItem>false</asp:ListItem>
                       
                       
                         </asp:RadioButtonList>
                               </td>
                    </tr>
                        <tr>  
                <td align="left" colspan ="4">
                    <asp:Label ID="Label6" runat="server" Text="which of these is a relational operator" ></asp:Label></td>
                    </tr>
                       <tr>  
                       
                <td align="left" colspan ="4">
                    <asp:RadioButtonList ID="CheckBoxList5" runat="server">
                        <asp:ListItem>+ </asp:ListItem>
                        <asp:ListItem>==</asp:ListItem>
                        <asp:ListItem>,</asp:ListItem>
                        <asp:ListItem>*</asp:ListItem>
                       
                       
                            </asp:RadioButtonList>
                               </td>
                    </tr>
                   <tr>
                      
                       
                <td align="left" colspan ="4">
                 
                       
                        
                         
                    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
                               <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                               </td>
                    </tr>
                    </div>
 


    </div>
    </form>
    </div>
    </div>
    </div>
    </div>
    </div>
</asp:Content>

