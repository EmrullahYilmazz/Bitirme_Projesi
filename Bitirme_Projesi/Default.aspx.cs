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
using System.Security.Cryptography;
using System.Text;


namespace Bitirme_Projesi
{
    public partial class Default2 : System.Web.UI.Page
    {
        static string conString = ConfigurationManager.ConnectionStrings["Bitirme_ProjesiConnectionString"].ConnectionString;
        static SqlConnection connect = new SqlConnection(conString);
        static string kadi;
        private string hash = "";
        private string veri = "";
        
        
        
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            veri = TextBox1.Text.ToString();
            hash = TextBox2.Text.ToString();
            TextBox1.Text.ToLower();
            try
            {
                byte[] data = Convert.FromBase64String(veri);
                using (MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider())
                {
                    byte[] keys = md5.ComputeHash(UTF8Encoding.UTF8.GetBytes(hash));
                    using (TripleDESCryptoServiceProvider tripDes = new TripleDESCryptoServiceProvider() { Key = keys, Mode = CipherMode.ECB, Padding = PaddingMode.PKCS7 })
                    {
                        ICryptoTransform transform = tripDes.CreateDecryptor();
                        byte[] results = transform.TransformFinalBlock(data, 0, data.Length);
                        Label5.Text = UTF8Encoding.UTF8.GetString(results);
                    }
                }
            }
            catch (Exception hata)
            {
                //Label4.Text = ("Hata Meydana Geldi");
                Label4.Text = ("Hata Meydana Geldi" + hata);

                connect.Close();
            }
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
}