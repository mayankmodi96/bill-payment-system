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

public partial class client1_purchase : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Shoppingmall.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select max(invoice_no)+1 from purchase_master", cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows[0].IsNull(0) == true)
        {
            TextBox5.Text = "1";
        }
        else
            TextBox5.Text = ds.Tables[0].Rows[0].ItemArray[0].ToString();
        TextBox5.Enabled = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int Disc, nprice;
        Disc = ((int.Parse(TextBox9.Text) * int.Parse(TextBox10.Text)) * int.Parse(TextBox11.Text)) / 100;
        nprice = (int.Parse(TextBox9.Text) * int.Parse(TextBox10.Text)) - Disc;
        SqlDataAdapter da = new SqlDataAdapter("insert into temppurchase values(" + DropDownList1.SelectedItem.Value.ToString() + ",'" + DropDownList1.SelectedItem.Text + "'," + TextBox9.Text + "," + TextBox10.Text + "," + Disc + "," + nprice + ")", cn);
        //SqlDataAdapter da1 = new SqlDataAdapter("update product_master set op_stock=" + TextBox10.Text + " where pro_name='" + DropDownList1.SelectedItem.Value.ToString() + "'", cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        //da1.Fill(ds);
        updategrid();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from product_master where pro_id=" + DropDownList1.SelectedItem.Value.ToString() + "", cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        TextBox9.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();
        TextBox11.Text = ds.Tables[0].Rows[0].ItemArray[6].ToString();
        TextBox10.Focus();
    }
    private void updategrid()
    {
        SqlDataAdapter da = new SqlDataAdapter("select productname,price,quantity,discount,netprice from temppurchase", cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {

            SqlDataAdapter da1 = new SqlDataAdapter("select sum(discount) from temppurchase", cn);
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            string discount = ds1.Tables[0].Rows[0].ItemArray[0].ToString();

            SqlDataAdapter da2 = new SqlDataAdapter("select sum(netprice) from temppurchase", cn);
            DataSet ds2 = new DataSet();
            da2.Fill(ds2);
            string gtotal = ds2.Tables[0].Rows[0].ItemArray[0].ToString();
            
            //DateTime mydate = Convert.ToDateTime(TextBox6.Text);
            SqlDataAdapter da3 = new SqlDataAdapter("insert into purchase_master values(" + TextBox5.Text + "," + TextBox6.Text  + "," + discount + "," + gtotal + ")", cn);
            DataSet ds3 = new DataSet();
            da3.Fill(ds3);
            //Label1.Text= "insert into sales_master values(" + TextBox5.Text + ",convert('" + TextBox6.Text + "',datetime)," + discount + "," + gtotal + ")";

            SqlDataAdapter da4 = new SqlDataAdapter("select * from temppurchase", cn);
            DataSet ds4 = new DataSet();
            da4.Fill(ds4);
            foreach (DataTable dt in ds4.Tables)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    SqlDataAdapter da6 = new SqlDataAdapter("update product_master set cl_stock=cl_stock+" + dr[3].ToString() + " where pro_id=" + dr[0].ToString(), cn);
                    DataSet ds6 = new DataSet();
                    da6.Fill(ds6);

                    SqlDataAdapter da5 = new SqlDataAdapter("insert into purchase_detail values("+TextBox5.Text+",convert(smalldatetime,'"+TextBox6.Text+"'),"+dr[0].ToString()+","+dr[3].ToString()+")", cn);
                    DataSet ds5 = new DataSet();
                    da5.Fill(ds5);
            
                }
            }


            SqlDataAdapter da = new SqlDataAdapter("delete from temppurchase", cn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            updategrid();
            Response.Redirect("purchase_report.aspx?invoice_no=" + TextBox5.Text);
        }
        catch (SqlException myexp)
        {
            Label1.Text = myexp.Message.ToString();
        }
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox6.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
    }
}
