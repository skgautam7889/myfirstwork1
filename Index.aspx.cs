using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Index : System.Web.UI.Page
{
    static string con = ConfigurationManager.ConnectionStrings["my_work"].ConnectionString;
   static SqlConnection cn = new SqlConnection(con);
    public void ShowData()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from add_books", cn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        ShowData();
        Label8.Visible = false;
       
    }
    protected void btnaddbook_Click(object sender, EventArgs e)
    {
        cn.Open();
        SqlCommand cmd = new SqlCommand("insert into Add_books values ('" + txttitle.Text + "','" + txtauthor.Text + "','" + txtisbn.Text + "','" + txtpublisher.Text + "','" + txtyear.Text + "')", cn);
        int i=cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Label8.Visible = true;
            Label8.Text = "Books Add Successfully !!!! ";

        }
        else
        {
            Label8.Visible = true;
            Label8.Text = "Books Not Add !!!! ";
        }
        ShowData();
        cn.Close();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        cn.Open();
        string id = GridView1.Rows[e.RowIndex].Cells[0].Text;
        string Title = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
        string Author = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
        string ISBN = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
        string Publisher = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
        string Year = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
        SqlCommand cmd = new SqlCommand("update Add_books set title='" + Title + "',author='" + Author + "',isbn='" + ISBN + "',Publisher='" + Publisher + "',year='"+Year+"' where id="+id, cn);
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Label8.Visible = true;
            Label8.Text = "Books Update Successfully !!!! ";

        }
        else
        {
            Label8.Visible = true;
            Label8.Text = "Books Not Update !!!! ";
        }
        GridView1.EditIndex = -1;
        ShowData();
        cn.Close();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        cn.Open();
        string id = GridView1.Rows[e.RowIndex].Cells[0].Text;
        SqlCommand cmd = new SqlCommand("delete from Add_books where id= "+id, cn);
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Label8.Visible = true;
            Label8.Text = "Books Deleted Successfully !!!! ";

        }
        else
        {
            Label8.Visible = true;
            Label8.Text = "Books Not Deleted !!!! ";
        }
        ShowData();
        cn.Close();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        ShowData();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        ShowData();
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from Add_books where id like '%" + txtSearch.Text + "%' or title like '%" + txtSearch.Text + "%' or ISBN like '%" + txtSearch.Text + "%'", cn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
   
   
    protected void LogOut_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}