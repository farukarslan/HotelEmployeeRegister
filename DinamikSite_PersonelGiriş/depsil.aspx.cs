using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DinamikSite_PersonelGiriş.model;


namespace DinamikSite_PersonelGiriş
{
    public partial class depsil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            veriCONTEXT bagkur = new veriCONTEXT();

            var gelenpersonelid = Convert.ToInt32(Request.QueryString["depidyolla"]);

            var personelsil = (from silpersonel in bagkur.personeller
                               where silpersonel.dep_id == gelenpersonelid
                               select silpersonel).ToList();

            foreach (var item in personelsil)
            {
                string SilResimName = item.resim_ismi;

                System.IO.File.Delete(Server.MapPath(SilResimName));
                bagkur.personeller.Remove(item);

            }
            bagkur.SaveChanges();

            var depsil = (from depidlerisil in bagkur.departmanlar
                           where depidlerisil.id == gelenpersonelid
                           select depidlerisil).FirstOrDefault();



            string sildepklasör = "img/" + depsil.departman_ismi;
            System.IO.Directory.Delete(Server.MapPath(sildepklasör));

            bagkur.departmanlar.Remove(depsil);
            bagkur.SaveChanges();

            Response.Redirect("departmanlistele.aspx");
        }
    }
}