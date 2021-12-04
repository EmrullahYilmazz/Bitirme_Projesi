using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Bitirme_Projesi
{
    public partial class Default : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-GQM48OE;Initial Catalog=Bitirme_Projesi;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            baglanti.Open();
            baglanti.Close();

        }
    }
}