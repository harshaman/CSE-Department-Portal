using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class results : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
            Panel1.Visible = true;
        else
            Panel1.Visible = false;
        con = new SqlConnection("Data Source=(localdb)\\v11.0;Initial Catalog=Aman;Integrated Security=True;Pooling=False");
        con.Open();
        cmd = new SqlCommand("select * from result", con);
        ds = new DataSet();
        da = new SqlDataAdapter("select * from result", con);
        da.Fill(ds);

        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
     
}