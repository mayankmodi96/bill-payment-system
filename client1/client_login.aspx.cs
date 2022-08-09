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

public partial class client1_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Shoppingmall.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (cn.State == ConnectionState.Closed)
            cn.Open();
        SqlCommand cmd = new SqlCommand("select count(*) from client_login where username='" + TextBox1.Text + "'and password='" + TextBox2.Text + "'", cn);
        int i = Convert.ToInt16(cmd.ExecuteScalar().ToString());
        if (i > 0)
        {
            Session["client_login"] = TextBox1.Text;
            Response.Redirect("Home.aspx");
        }
        else
        {
            Label1.Text = "Username & Password is invalid";
        }
        cn.Close();
    }
}
