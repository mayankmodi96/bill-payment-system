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

public partial class client1_forgetpassword : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Shoppingmall.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        cn.Open();
        SqlCommand cmd = new SqlCommand("select password from registration where email_id='" + txtEmailidFor.Text + "' and security_que='" + DropDownList1.SelectedValue.ToString() + "' and security_ans='" + TextBox2.Text + "'", cn);
        string pass=string.Empty;
        pass = (string)cmd.ExecuteScalar();
        if (!string.IsNullOrEmpty(pass))
        {
            Label1.Text = "Your Password is "+pass;
        }
        else
        {
            Label1.Text = "Something Wrong!!!";
        }
    }
}
