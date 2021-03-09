using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace DinamikSite_PersonelGiriş.model
{
    public class departman
    {
        public int id { get; set; }
        [Required]
        public string departman_ismi { get; set; }

        [ForeignKey("dep_id")]
        public List<personel> urunler { get; set; }
    }
}