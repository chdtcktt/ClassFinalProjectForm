﻿using System;
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

        public MyClasses()
        {
            db = new AdvWebDataContext();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
           if (Session["studentid"] == null)
           {
               Response.Redirect("Login.aspx");
           }

        }

        protected void Grid_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            int classId = Convert.ToInt32(e.CommandArgument) + 1;
            int studentId = Convert.ToInt32(Session["studentid"]);

            db.pDelClassStudents(classId, studentId);

            LabelAlert.Text = "This class will be removed from your registration";

        }
    }
}