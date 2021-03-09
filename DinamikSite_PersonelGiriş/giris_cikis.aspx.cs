using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DinamikSite_PersonelGiriş.model;

namespace DinamikSite_PersonelGiriş
{
    public partial class giris_cikis : System.Web.UI.Page
    {
        veriCONTEXT bagkur = new veriCONTEXT();


        protected void Page_Load(object sender, EventArgs e)
        {
            tarih.Text = DateTime.Now.ToString("d");
            veriCONTEXT bagkur = new veriCONTEXT();
            var departmanları_oku = (from dep_verileri in bagkur.departmanlar
                                     select dep_verileri).ToList();

            Repeater_departman.DataSource = departmanları_oku;
            Repeater_departman.DataBind();



            //kullanıcının seçtigi kategori
            var gelendepid = Convert.ToInt32(Request.QueryString["depidyolla"]);
            if (gelendepid == 0)
            {
                //var olan katogori seçelim
                int ilk_deparmansec = (from depverileri in bagkur.departmanlar
                                       select depverileri.id).FirstOrDefault();

                //tepede kategori ismi yazsın
                string ilk_isim_sec = (from depverileri in bagkur.departmanlar
                                       select depverileri.departman_ismi).FirstOrDefault();
                Label_depismiyaz.Text = ilk_isim_sec;




                var ilkpersoneller = (from veri_personellerim in bagkur.personeller
                                      where veri_personellerim.dep_id == ilk_deparmansec
                                      select veri_personellerim).ToList();
                Repeater_personelliste.DataSource = ilkpersoneller;
                Repeater_personelliste.DataBind();
            }
            else
            {
                //tepede kategori ismi yazsın
                string depismial = (from depverileri in bagkur.departmanlar
                                    where depverileri.id == gelendepid
                                    select depverileri.departman_ismi).FirstOrDefault();
                Label_depismiyaz.Text = depismial;


                var personeldetay = (from personelincele in bagkur.personeller
                                     where personelincele.dep_id == gelendepid
                                     select personelincele).ToList();
                Repeater_personelliste.DataSource = personeldetay;
                Repeater_personelliste.DataBind();
            }
        }
        

        protected void Button1_Click1(object sender, EventArgs e)
        {
            
        }
    }
}