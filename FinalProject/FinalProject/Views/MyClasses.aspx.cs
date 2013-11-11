using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject.Views
{
    public partial class MyClasses : System.Web.UI.Page
    {
        private AdvWebDataContext db;


        protected void Page_Load(object sender, EventArgs e)
        {
            db = new AdvWebDataContext();
            var value = Session["studentid"];

            db.pSelClassesByStudents();

        }
    }
}