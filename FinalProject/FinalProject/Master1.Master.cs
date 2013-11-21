using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject.Views.Shared
{
    public partial class Master1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["studentid"] != null)
            {
                MyClassesId.Attributes["class"] = "c-items-visible";
                RegisterId.Attributes["class"] = "c-items-visible";
            }

            string path = HttpContext.Current.Request.Url.AbsolutePath;

            switch (path)
            {
                case "/Index.aspx":
                    ClassesOfferedId.Attributes["class"] = "c-active";
                    break;
                case "/Login.aspx":
                    LoginId.Attributes["class"] = "c-active";
                    break; 
                case "/MyClasses.aspx":
                    MyClassesId.Attributes["class"] = "c-active";
                    break; 
                case "/NewLogin.aspx":
                    RequestLoginId.Attributes["class"] = "c-active";
                    break; 
                case "/Register.aspx":
                    RegisterId.Attributes["class"] = "c-active";
                    break;
            }


          

        }

     
    }
}