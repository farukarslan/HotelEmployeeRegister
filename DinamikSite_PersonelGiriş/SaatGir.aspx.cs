using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DinamikSite_PersonelGiriş.model;


namespace DinamikSite_PersonelGiriş
{
    public partial class SaatGir : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnUygula_Click(object sender, EventArgs e)
        {

            int personelid = int.Parse(Request.QueryString["personelid"]);
            using (var context = new veriCONTEXT())
            {
                var personel = (from p in context.personeller
                                where p.id == personelid
                                select p).SingleOrDefault();
                if (personel != null)
                {
                    personel.per_giris = txtGiris.Text;
                    personel.per_cikis = txtCikis.Text;
                }
                context.SaveChanges();
            }


        }
    }
}