using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
            Panel1.Visible = true;
        else
            Panel1.Visible = false;
        con = new SqlConnection("Data Source=(localdb)\\v11.0;Initial Catalog=Aman;Integrated Security=True;Pooling=False");
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string qry = " select * from regis_info where email = '" + TextBox1.Text + "' and password = '" + TextBox2.Text + "'";
        cmd = new SqlCommand(qry, con);
        dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            Session["semester"] = dr[2];
            Session["name"] = dr[1];
            con.Close();
            Session["UserAuthentication"] = TextBox1.Text;
            Session["password"] = TextBox2.Text;

            Response.Redirect("LoggedIn.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}