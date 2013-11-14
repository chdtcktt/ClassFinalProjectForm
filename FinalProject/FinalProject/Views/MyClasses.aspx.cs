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

        protected void Page_Load(object sender, EventArgs e)
        {
           if (Session["studentid"] == null)
           {
               Response.Redirect("Login.aspx");
           }

        }
    }
}