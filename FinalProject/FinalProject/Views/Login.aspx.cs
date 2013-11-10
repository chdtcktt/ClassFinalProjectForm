using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject.Views
{
    public partial class Login : System.Web.UI.Page
    {
        private AdvWebDataContext db;
        protected void Page_Load(object sender, EventArgs e)
        {
            db = new AdvWebDataContext();
        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
             int? value = null;
            db.pSelLoginIdByLoginAndPassword(TextBoxUserName.Text,TextBoxPassword.Text, ref value);

            Session["studentid"] = value;


            if (value == null)
            {
            }

        
        }
    }
}