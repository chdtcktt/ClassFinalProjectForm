using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject.Views
{
    public partial class NewLogin : System.Web.UI.Page
    {
        private AdvWebDataContext db;

        public NewLogin()
        {
            db = new AdvWebDataContext();
        }

        private Boolean blnDateSelected = false;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack != true)
            {
                Calendar1.SelectedDate = DateTime.Today;
            }
            else if (Calendar1.SelectedDate <= DateTime.Today)
            {
                LabelInfo.Text = "You must chose a future date";
                LabelInfo.BackColor = System.Drawing.Color.LightSalmon;
            }
            else
            {
                LabelInfo.Text = "";
                blnDateSelected = true;
            }
        }

        protected void ButtonSubmitRequest_Click(object sender, EventArgs e)
        {
            if (Page.IsValid && blnDateSelected)
            {
              

                try
                {
                    //Write it to the file WILL NOW WRITE TO THE DATABASE instead!

                    string reason = RadioButton1.Checked ? "New" : "Reactivate";

                    db.pCreateLoginRequest(TextBoxName.Text, TextBoxEmailAddress.Text, TextBoxLoginName.Text,
                                           Calendar1.SelectedDate, reason, TextBoxReason.Text);

                    //Reset the UI
                    TextBoxName.Text = "";
                    TextBoxEmailAddress.Text = "";
                    TextBoxLoginName.Text = "";
                    TextBoxReason.Text = "";
                    TextBoxName.Focus();
                    LabelInfo.Text += "Request Received. Thank You!<br/>";
                    LabelInfo.Text +=
                        "A Password will be sent to you once our staff have manually gone over your request";
                    LabelInfo.BackColor = System.Drawing.Color.LightGreen;



                }
                catch
                {
                    LabelInfo.Text = "Server Error. Please try again in a moment";
                    LabelInfo.BackColor = System.Drawing.Color.LightSalmon;
                }
            }
        }
    }
}