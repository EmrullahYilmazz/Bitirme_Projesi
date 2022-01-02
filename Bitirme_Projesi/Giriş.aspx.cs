using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using System.Configuration;

namespace Bitirme_Projesi
{
    public partial class Default : System.Web.UI.Page
    {
        static string conString = ConfigurationManager.ConnectionStrings["Bitirme_ProjesiConnectionString"].ConnectionString;
        static SqlConnection connect = new SqlConnection(conString);
        SqlCommand sorgu = new SqlCommand("SELECT * FROM kisiler WHERE kullaniciadi=@kullaniciadi and sifre=@sifre", connect);
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            connect.Open();
            sorgu.Parameters.Add("@kullaniciadi", SqlDbType.NVarChar).Value = TextBox1.Text;
            sorgu.Parameters.Add("@sifre", SqlDbType.NVarChar).Value = TextBox2.Text;
            
            SqlDataReader oku = sorgu.ExecuteReader();
            if (oku.Read())
            {
                System.Threading.Thread.Sleep(3000);
                Label1.Text = "Giriş Başarılı Yönlendiriliyorsunuz";
                Session.Add("kullanici", TextBox1.Text);
                connect.Close();
                Response.Redirect("Default.aspx");
                
            }
            else
            {
                Label1.Text = "Hata! Kayıt Bulunamadı";
                connect.Close();
            }
            


        }
    }
}