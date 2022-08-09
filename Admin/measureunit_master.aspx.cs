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

public partial class Admin_measureunit_master : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Shoppingmall.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillUpGrid();
        }
    }
    protected void FillUpGrid()
    {
        SqlCommand cmd = new SqlCommand("select * from measureunit_master", cn);
        cn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        GridView1.DataSource = dr;
        GridView1.DataBind();
        cn.Close();
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        FillUpGrid();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox txtunitformate_name = (TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0];
        TextBox txtunit_symbol = (TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0];
        TextBox txtdecimalpoint = (TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0];
        string str = "update measureunit_master set unitformate_name='" + txtunitformate_name.Text + "',unit_symbol='" + txtunit_symbol.Text + "',decimalpoint='" + txtdecimalpoint.Text + "' where measur_id=" + GridView1.DataKeys[e.RowIndex].Value.ToString();
        Label1.Text = str;
        SqlCommand cmd = new SqlCommand(str, cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.EditIndex = -1;
        FillUpGrid();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string str = "delete from measureunit_master where measur_id=" + GridView1.DataKeys[e.RowIndex].Value.ToString();
        cn.Open();
        SqlCommand cmd = new SqlCommand(str, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.EditIndex = -1;
        FillUpGrid();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        FillUpGrid();
    }
}
