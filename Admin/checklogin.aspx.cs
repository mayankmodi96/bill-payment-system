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

public partial class Admin_checklogin : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Shoppingmall.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        String uname = Request.Form.Get("username").ToString();
        String pass = Request.Form.Get("password").ToString();
        if(cn.State ==ConnectionState.Closed)
        cn.Open();
        SqlCommand cmd = new SqlCommand("select count(*) from login where username='" + uname + "' and password='" + pass + "'", cn);
        int i = Convert.ToInt16(cmd.ExecuteScalar().ToString());
        if (i > 0)
        {
            Session["login"] = uname;
            Response.Redirect("AdminHome.aspx");
        }
        else
        {
            Label1.Text ="username & password incorrect";
        }
        cn.Close();
    }
}
