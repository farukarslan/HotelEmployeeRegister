using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DinamikSite_PersonelGiriş.model;

namespace DinamikSite_PersonelGiriş
{
    public partial class sil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var gelenpersonelid = Convert.ToInt32(Request.QueryString["personelidyolla"]);

            veriCONTEXT bagkur = new veriCONTEXT();

            var silinecek_personel = (from sil in bagkur.personeller
                                      where sil.id == gelenpersonelid
                                      select sil).FirstOrDefault();
            string SilResimName = silinecek_personel.resim_ismi;
            System.IO.File.Delete(Server.MapPath(SilResimName));

            bagkur.personeller.Remove(silinecek_personel);
            bagkur.SaveChanges();
            Response.Redirect("listele.aspx");
        }
    }
}