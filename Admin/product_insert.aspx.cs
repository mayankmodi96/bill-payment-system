using System;
using System.Configuration;
using System.Collections;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Admin_product_insert : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Shoppingmall.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlCommand cmd = new SqlCommand("insert into product_master values(" + TextBox1.Text + ",'" + TextBox9.Text + "'," + TextBox2.Text + ",'" + TextBox3.Text + "','" + TextBox4.Text + "'," + TextBox5.Text + "," + TextBox6.Text + "," + TextBox7.Text + "," + TextBox7.Text + "," + 0 + "," + 0 + "," + 0 + "," + 0 + ")", cn);
        //Label1.Text = "insert into product_master values(" + TextBox1.Text + ",'" + TextBox9.Text + "'," + TextBox2.Text + ",'" + TextBox3.Text + "','" + TextBox4.Text + "'," + TextBox5.Text + "," + TextBox6.Text + "," + TextBox7.Text + "," + TextBox8.Text + "," + null + "," + null + ")";
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("product_master.aspx");
    }
}
