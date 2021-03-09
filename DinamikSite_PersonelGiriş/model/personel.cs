using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DinamikSite_PersonelGiriş.model
{
    public class personel
    {
        public int id { get; set; }
        public string Adı { get; set; }
        public string Soyadı { get; set; }
        public string resim_ismi { get; set; }
        public string TCNo { get; set; }
        public int DogumTarihi { get; set; }
        public string DogumYeri { get; set; }
        public string Cinsiyet { get; set; }
        public string KanGrubu { get; set; }
        public string Adres { get; set; }
        public string TelNo { get; set; }
        public int dep_id { get; set; }
        public string per_giris { get; set; }
        public string per_cikis { get; set; }
    }
}