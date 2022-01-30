using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class LoggedIn : System.Web.UI.Page
{
    protected string reg;
    protected string name;
    protected string sem;
    protected string email;
    protected string phone;
    protected void Page_Load(object sender, EventArgs e)
    {
      
        MultiView1.ActiveViewIndex = 0;
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\v11.0;Initial Catalog=Aman;Integrated Security=True;Pooling=False");
        con.Open();
        string q2 = "select * from regis_info where email='" + Session["UserAuthentication"]+ "'";
        SqlCommand com2 = new SqlCommand(q2, con);
        SqlDataReader dr; dr = com2.ExecuteReader();
        while (dr.Read())
        {
            reg = dr[0].ToString();
            name = dr.GetString(1);
            sem = dr.GetString(2);
            email = dr.GetString(3);
            phone = dr[4].ToString();
        }
        this.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
}