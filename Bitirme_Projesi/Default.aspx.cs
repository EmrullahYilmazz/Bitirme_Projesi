using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Bitirme_Projesi
{
    public partial class Default2 : System.Web.UI.Page
    {
        static string conString = ConfigurationManager.ConnectionStrings["Bitirme_ProjesiConnectionString"].ConnectionString;
        static SqlConnection connect = new SqlConnection(conString);
        static string kadi;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            connect.Open();
            Label1.Text = Session["kullanici"].ToString();
            kadi = Convert.ToString(Label1.Text);
            
            SqlCommand comn = new SqlCommand("SELECT * FROM post WHERE kullaniciadi='"+kadi+"'", connect);
            GridView2.DataSource = comn.ExecuteReader();
            GridView2.DataBind();
            

           
            
            connect.Close();

        }
        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            
            

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView2_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            
        }

        protected void GridView2_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            
        }
    }
}