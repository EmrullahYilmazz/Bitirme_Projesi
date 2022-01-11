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
using System.Security.Cryptography;
using System.Text;


namespace Bitirme_Projesi
{
    public partial class Create : System.Web.UI.Page
    {
        static string conString = ConfigurationManager.ConnectionStrings["Bitirme_ProjesiConnectionString"].ConnectionString;
        SqlConnection connect = new SqlConnection(conString);
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["kullanici"].ToString();
        }
        private string sifmetod = "123";
        private string hash;
        private string kadi;




        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            byte[] data = UTF8Encoding.UTF8.GetBytes(TextBox1.Text);
            using (MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider())
            {
                byte[] keys = md5.ComputeHash(UTF8Encoding.UTF8.GetBytes(sifmetod));
                using (TripleDESCryptoServiceProvider tripDes = new TripleDESCryptoServiceProvider() { Key = keys, Mode = CipherMode.ECB, Padding = PaddingMode.PKCS7 })
                {
                    ICryptoTransform transform = tripDes.CreateEncryptor();
                    byte[] results = transform.TransformFinalBlock(data, 0, data.Length);
                    hash = Convert.ToBase64String(results, 0, results.Length);
                    TextBox1.Text = "";
                }
                try
                {
                    if (connect.State == ConnectionState.Closed)
                        connect.Open();
                    string kayit = "insert into post (hash,kullaniciadi) values (@hash,@kullaniciadi)";
                    SqlCommand komut = new SqlCommand(kayit, connect);
                    kadi = Convert.ToString(Label1.Text);
                    komut.Parameters.AddWithValue("@hash", hash);
                    komut.Parameters.AddWithValue("@kullaniciadi", kadi);

                    komut.ExecuteNonQuery();
                    connect.Close();
                    Label2.Text = ("Kayıt Oluşturulup Şifrelendi");
                    TextBox1.Text = "";
                    

                }
                catch (Exception hata)
                {
                    Label2.Text = ("Hata Meydana Geldi" + hata);
                    connect.Close();
                }
            }
        }
    }
}
