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

public partial class Admin_product_master : System.Web.UI.Page
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
        SqlCommand cmd = new SqlCommand("select pro_id,pro_name,price,pro_packing_date,expire_date,tax,discount,op_stock,cl_stock from product_master", cn);
        cn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        GridView1.DataSource = dr;
        GridView1.DataBind();
        cn.Close();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string str = "delete from product_master where pro_id=" + GridView1.DataKeys[e.RowIndex].Value.ToString();
        cn.Open();
        SqlCommand cmd = new SqlCommand(str, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.EditIndex = -1;
        FillUpGrid();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox txtpro_name = (TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0];
        TextBox txtprice = (TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0];
        TextBox txtpro_packing_date = (TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0];
        TextBox txtexpire_date = (TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0];
        TextBox txttax = (TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0];
        TextBox txtdiscount = (TextBox)GridView1.Rows[e.RowIndex].Cells[8].Controls[0];
        TextBox txtop_stock = (TextBox)GridView1.Rows[e.RowIndex].Cells[9].Controls[0];
        TextBox txtcl_stock = (TextBox)GridView1.Rows[e.RowIndex].Cells[10].Controls[0];
        string str = "update product_master set pro_name='" + txtpro_name.Text + "',price='" + txtprice.Text + "',pro_packing_date='" + txtpro_packing_date.Text + "',expire_date='" + txtexpire_date.Text + "',tax='" + txttax.Text + "',discount='" + txtdiscount.Text + "',op_stock='" + txtop_stock.Text + "',cl_stock='" + txtcl_stock.Text + "' where pro_id=" + GridView1.DataKeys[e.RowIndex].Value.ToString();
        Label1.Text = str;
        SqlCommand cmd = new SqlCommand(str, cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.EditIndex = -1;
        FillUpGrid();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        FillUpGrid();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("product_insert.aspx");
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        FillUpGrid();
    }
}
