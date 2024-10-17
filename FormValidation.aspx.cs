using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentRegistrationWebApplication
{
    public partial class FormValidation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void cvpw_validate(object source, ServerValidateEventArgs args)
        {
            string password = args.Value;
            args.IsValid = password.Length >= 6;  
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string name = txtName.Text;
                string email = txtEmail.Text;
                string password = txtPassword.Text;
                string age = txtAge.Text;
                result.Text = $"Name: {name}<br/>Email: {email}<br/>Password: {password}<br/>Age: {age}";

            }
        }
    }
}