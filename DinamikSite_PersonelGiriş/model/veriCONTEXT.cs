using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace DinamikSite_PersonelGiriş.model
{
    public class veriCONTEXT:DbContext
    {
        public veriCONTEXT() : base("sqlim")
        {

        }
        public DbSet<departman> departmanlar { get; set; }
        public DbSet<personel> personeller { get; set; }

     
    }
}