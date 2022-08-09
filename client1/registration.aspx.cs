using System;
using System.Collections;
using System.Configuration;
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

public partial class client1_registration : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Shoppingmall.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into registration values ('" + TextBox1.Text + "','" + TextBox2.Text + "'," + TextBox3.Text + ",'" + TextBox4.Text + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox6.Text + "') ", cn);
        SqlCommand cmd1 = new SqlCommand("insert into client_login values ('" + TextBox1.Text + "','" + TextBox2.Text + "')", cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cmd1.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("client_login.aspx");
    }
}
