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
    public partial class Kayıt : System.Web.UI.Page
    {
        //static string conString = "Data Source=DESKTOP-GQM48OE;Initial Catalog=Bitirme_Projesi;Integrated Security=True";
        
        
        static string conString = ConfigurationManager.ConnectionStrings["Bitirme_ProjesiConnectionString"].ConnectionString;
        SqlConnection connect = new SqlConnection(conString);

       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (connect.State == ConnectionState.Closed)
                    connect.Open();
                string kayit = "insert into kisiler (kullaniciadi,sifre) values (@kullaniciadi,@sifre)";
                SqlCommand komut = new SqlCommand(kayit, connect);

                komut.Parameters.AddWithValue("@kullaniciadi", TextBox1.Text);
                komut.Parameters.AddWithValue("@sifre", TextBox2.Text);
                komut.ExecuteNonQuery();
                connect.Close();
                Label1.Text = ("Kayıt Oluşturuldu");
                TextBox1.Text = "";
                TextBox2.Text = "";

            }
            catch(Exception hata)
            {
                Label1.Text = ("Hata Meydana Geldi" + hata);
                connect.Close();
            }
        }
    }
}