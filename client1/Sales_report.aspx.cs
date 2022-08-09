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
public partial class client1_report : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Shoppingmall.mdf;Integrated Security=True;User Instance=True");
   
    protected void Page_Load(object sender, EventArgs e)
    {

        string billno=Request.QueryString.Get("billno").ToString();

        SqlDataAdapter da = new SqlDataAdapter("select * from sales_master where bill_no="+billno, cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
       
        Label1.Text = ds.Tables[0].Rows[0].ItemArray[0].ToString();


        Label2.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();

       

        SqlDataAdapter da2 = new SqlDataAdapter("select product_master.pro_name,product_master.price,sales_details.quantity,product_master.price*sales_details.quantity as totalprice from sales_details,product_master where sales_details.pro_id=product_master.pro_id and sales_details.bill_no=" + billno, cn);
        DataSet ds2 = new DataSet();
        da2.Fill(ds2);

        GridView1.DataSource = ds2;
        GridView1.DataBind();

        SqlDataAdapter da3 = new SqlDataAdapter("select * from sales_master where bill_no=" + billno, cn);
        DataSet ds3 = new DataSet();
        da3.Fill(ds3);

        Label3.Text = (int.Parse(ds3.Tables[0].Rows[0].ItemArray[3].ToString()) + int.Parse(ds3.Tables[0].Rows[0].ItemArray[2].ToString())).ToString();
        Label4.Text = ds3.Tables[0].Rows[0].ItemArray[2].ToString();
        Label5.Text = ds3.Tables[0].Rows[0].ItemArray[3].ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}
