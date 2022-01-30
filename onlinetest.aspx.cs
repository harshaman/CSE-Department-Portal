using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class onlinetest : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=(localdb)\\v11.0;Initial Catalog=Aman;Integrated Security=True;Pooling=False");
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        long m = 0;
        if (CheckBoxList1.SelectedValue == "int")
            m = m + 10;
        if (CheckBoxList2.SelectedValue == "return")
            m = m + 10;
        if (CheckBoxList3.SelectedValue == "false")
            m = m + 10;
        if (CheckBoxList4.SelectedValue == "false")
            m = m + 10;
        if (CheckBoxList5.SelectedValue == "==")
            m = m + 10;
        Label l = new Label(); l.Text = "<br>YOUR SCORE: " + m;
        PlaceHolder1.Controls.Add(l);
        string qry = "insert into result values('" + Session["name"] + "','" + Session["UserAuthentication"] + "','" + m + "')";
        SqlCommand com = new SqlCommand(qry, con);
        com.ExecuteNonQuery();
    }
}