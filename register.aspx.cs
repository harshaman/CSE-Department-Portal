using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
            Panel1.Visible = true;
        else
            Panel1.Visible = false;
    }
    protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
    {

        if (args.Value.Length == 9)
        {
            args.IsValid = true;
        }
        else
            args.IsValid = false;
    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (args.Value.Length == 10)
        {
            args.IsValid = true;
        }
        else
            args.IsValid = false;
    }
    protected void CustomValidator3_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (args.Value.Length >= 8)
        {
            args.IsValid = true;
        }
        else
            args.IsValid = false;
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
            if (Page.IsValid)
            {
                SqlConnection con = new SqlConnection("Data Source=(localdb)\\v11.0;Initial Catalog=Aman;Integrated Security=True;Pooling=False");
                con.Open();
                string q2 = "select * from regis_info where email='" + TextBox4.Text + "'";
                SqlCommand com2 = new SqlCommand(q2, con);
                SqlDataReader dr; dr = com2.ExecuteReader();
                Label l1 = new Label(); l1.Text = "already exists";
                if (dr.HasRows)
                {
                    PlaceHolder1.Controls.Add(l1);
                }

                else
                {
                    dr.Close();

                    string qry = "insert into regis_info values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.Text + "','" + TextBox4.Text + "','" + TextBox8.Text + "','" + TextBox6.Text + "')";
                    SqlCommand com = new SqlCommand(qry, con);

                    com.ExecuteNonQuery();
                    string marks = "0";
                    //qry = "insert into result values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + marks + "')";
                    //com = new SqlCommand(qry, con);
                    //com.ExecuteNonQuery();
                    l1.Text = "registration completed";
                    Response.Redirect("regcomp.aspx");
                  
                }
                dr.Close();
                con.Close();
            }

        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox4.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
    }
}