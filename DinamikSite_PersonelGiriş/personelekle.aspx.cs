using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DinamikSite_PersonelGiriş.model;

namespace DinamikSite_PersonelGiriş
{
    public partial class personelekle : System.Web.UI.Page
    {
        veriCONTEXT bagkur = new veriCONTEXT();
        protected void Page_Load(object sender, EventArgs e)
        {
            var dropdagoster = (from droplar in bagkur.departmanlar
                                select droplar.departman_ismi).ToList();

            if (!IsPostBack)
            {
                foreach (var item in dropdagoster)
                {
                    DropDownList1.Items.Add(item);
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (FileUpload1.HasFile == true)
            {
                string droptangelen = DropDownList1.SelectedValue;

                string gelenresim_ismi = FileUpload1.FileName;

                System.IO.Directory.CreateDirectory(Server.MapPath("img/" + droptangelen));

                FileUpload1.SaveAs(Server.MapPath("img/" + droptangelen + "/" + gelenresim_ismi));

                string resimyoluyla = "img/" + droptangelen + "/" + gelenresim_ismi;

                personel yenipersonel = new personel();
                

                int depidbul = (from depveriler in bagkur.departmanlar
                                where depveriler.departman_ismi == droptangelen
                                select depveriler.id).FirstOrDefault();

                yenipersonel.Adı = TextBox_ad.Text;
                yenipersonel.Soyadı = TextBox_soyad.Text;
                yenipersonel.TCNo = TextBox_kimlikno.Text;
                yenipersonel.DogumTarihi = Convert.ToInt32(TextBox_dogumtarih.Text);
                yenipersonel.DogumYeri = TextBox_dogumyeri.Text; ;
                yenipersonel.Cinsiyet = TextBox_cinsiyet.Text; ;
                yenipersonel.KanGrubu = TextBox_kangrup.Text; ;
                yenipersonel.Adres = TextBox_adres.Text; ;
                yenipersonel.TelNo = TextBox_telno.Text; ;
                yenipersonel.resim_ismi = resimyoluyla;
                yenipersonel.dep_id = depidbul;


                bagkur.personeller.Add(yenipersonel);
                bagkur.SaveChanges();
            }
            else
            {
                Label1.Text = "Lütfen kayıttan önce bir dosya seçiniz.";
            }
        }
    }
}