using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DinamikSite_PersonelGiriş.model;

namespace DinamikSite_PersonelGiriş
{
    public partial class departmanlistele : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            veriCONTEXT bagkur = new veriCONTEXT();
            var tumdepartmanlar = bagkur.departmanlar.ToList();
            Repeater_deplistele.DataSource = tumdepartmanlar;
            Repeater_deplistele.DataBind();
        }
    }
}