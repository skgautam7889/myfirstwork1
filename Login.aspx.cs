using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    static string con = ConfigurationManager.ConnectionStrings["my_work"].ConnectionString;
    SqlConnection cn = new SqlConnection(con);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from user_login where user_id='" + txtname.Text + "' and user_password='" + txtpass.Text + "' ", cn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count == 1)
        {
            Response.Redirect("Index.aspx");
        }
        else
        {
            Response.Write("Not User !!!!!!!!!!!!!!!!!");
        }
      
    }
}