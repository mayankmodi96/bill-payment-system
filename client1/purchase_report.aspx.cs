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

public partial class client1_purchase_report : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Shoppingmall.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        string invoiceno;
        invoiceno= Request.QueryString.Get("invoice_no").ToString();

        SqlDataAdapter da = new SqlDataAdapter("select * from purchase_master where invoice_no=" + invoiceno, cn);
        DataSet ds = new DataSet();
        da.Fill(ds);

        Label2.Text = ds.Tables[0].Rows[0].ItemArray[0].ToString();
        Label3.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
        
        SqlDataAdapter da2 = new SqlDataAdapter("select product_master.pro_name,product_master.price,purchase_detail.quantity,product_master.price*purchase_detail.quantity as totalprice from purchase_detail,product_master where purchase_detail.pro_id=product_master.pro_id and purchase_detail.invoice_no=" + invoiceno, cn);
        DataSet ds2 = new DataSet();
        da2.Fill(ds2);

        GridView1.DataSource = ds2;
        GridView1.DataBind();

        SqlDataAdapter da3 = new SqlDataAdapter("select * from purchase_master where invoice_no=" + invoiceno, cn);
        DataSet ds3 = new DataSet();
        da3.Fill(ds3);

        Label4.Text = (int.Parse(ds3.Tables[0].Rows[0].ItemArray[3].ToString()) + int.Parse(ds3.Tables[0].Rows[0].ItemArray[2].ToString())).ToString();
        Label5.Text = ds3.Tables[0].Rows[0].ItemArray[2].ToString();
        Label6.Text = ds3.Tables[0].Rows[0].ItemArray[3].ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }
}
