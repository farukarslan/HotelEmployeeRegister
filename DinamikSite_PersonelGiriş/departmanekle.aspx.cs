using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DinamikSite_PersonelGiriş.model;

namespace DinamikSite_PersonelGiriş
{
    public partial class departmanekle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            veriCONTEXT bag = new veriCONTEXT();
            departman yenidep = new departman();

            string eklenecek_depismi = TextBox1.Text;
            eklenecek_depismi.ToUpper();

            string varmi = (from datalar in bag.departmanlar
                            where datalar.departman_ismi == eklenecek_depismi
                            select datalar.departman_ismi).FirstOrDefault();

            if (string.IsNullOrEmpty(varmi) == true)
            {
                yenidep.departman_ismi = eklenecek_depismi;
                bag.departmanlar.Add(yenidep);
                bag.SaveChanges();
            }
            else
            {
                Label_uyari.Text = "dikkat bu departman zaten kayıtlı";
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            veriCONTEXT bag = new veriCONTEXT();
            departman yenidep = new departman();

            string eklenecek_depismi = TextBox1.Text;
            eklenecek_depismi.ToUpper();

            string varmi = (from datalar in bag.departmanlar
                            where datalar.departman_ismi == eklenecek_depismi
                            select datalar.departman_ismi).FirstOrDefault();

            if (string.IsNullOrEmpty(varmi) == true)
            {
                yenidep.departman_ismi = eklenecek_depismi;
                bag.departmanlar.Add(yenidep);
                bag.SaveChanges();
            }
            else
            {
                Label_uyari.Text = "dikkat bu departman zaten kayıtlı";
            }
        }
    }
}