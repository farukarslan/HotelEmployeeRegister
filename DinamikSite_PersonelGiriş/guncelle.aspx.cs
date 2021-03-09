using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DinamikSite_PersonelGiriş.model;

namespace DinamikSite_PersonelGiriş
{
    public partial class guncelle : System.Web.UI.Page
    {
        veriCONTEXT bagkur = new veriCONTEXT();
        public string test;
   
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                int gelenpersonelid = Convert.ToInt32(Request.QueryString["personelidyolla"]);

                var guncellenecekveri = (from veri in bagkur.personeller
                                         where veri.id == gelenpersonelid
                                         select veri).FirstOrDefault();

                TextBox_ad.Text = guncellenecekveri.Adı;
                TextBox_soyad.Text = guncellenecekveri.Soyadı;
                TextBox_kimlikno.Text = guncellenecekveri.TCNo;
                TextBox_dogumtarih.Text = Convert.ToString(guncellenecekveri.DogumTarihi);
                TextBox_dogumyeri.Text = guncellenecekveri.DogumYeri;
                TextBox_cinsiyet.Text = guncellenecekveri.Cinsiyet;
                TextBox_kangrup.Text = guncellenecekveri.KanGrubu;
                TextBox_adres.Text = guncellenecekveri.Adres;
                TextBox_telno.Text = guncellenecekveri.TelNo;

                test = guncellenecekveri.resim_ismi;
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int gelenpersonelid = Convert.ToInt32(Request.QueryString["personelidyolla"]);

            var yeniverileriyukle = (from veri in bagkur.personeller
                                     where veri.id == gelenpersonelid
                                     select veri).FirstOrDefault();

            yeniverileriyukle.Adı = TextBox_ad.Text;
            yeniverileriyukle.Soyadı = TextBox_soyad.Text;
            yeniverileriyukle.TCNo = TextBox_kimlikno.Text;
            yeniverileriyukle.DogumTarihi = Convert.ToInt32(TextBox_dogumtarih.Text);
            yeniverileriyukle.DogumYeri = TextBox_dogumtarih.Text;
            yeniverileriyukle.Cinsiyet = TextBox_cinsiyet.Text;
            yeniverileriyukle.KanGrubu = TextBox_kangrup.Text;
            yeniverileriyukle.Adres = TextBox_adres.Text;
            yeniverileriyukle.TelNo = TextBox_telno.Text;

            string departmanresimyolu, gelenresim_ismi;
            gelenresim_ismi = FileUpload1.FileName;

            departmanresimyolu = (from depismiicin in bagkur.departmanlar
                                  where depismiicin.id == gelenpersonelid
                                  select depismiicin.departman_ismi).FirstOrDefault();

            string resimyoluyla = "img/" + departmanresimyolu + "/" + gelenresim_ismi;

            if (FileUpload1.HasFile == true)
            {
                System.IO.File.Delete(Server.MapPath(yeniverileriyukle.resim_ismi));
                yeniverileriyukle.resim_ismi = resimyoluyla;
                FileUpload1.SaveAs(Server.MapPath(resimyoluyla));
            }

            bagkur.SaveChanges();
        }
    }
}