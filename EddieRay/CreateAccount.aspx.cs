using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Web.UI.HtmlControls;
using System.ComponentModel.DataAnnotations;

namespace EddieRay
{
    public partial class GetStarted : System.Web.UI.Page
    {
        private static string path = @"C:\Users\gonzales\MyDev\EddieRay\";
        string userName = "", email = "", password = "", password2 = "", whereInfo = "";
        bool validEmail = false;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        DataTable dtEddieRayUsers = Datalink.ImportExcelSheet(path + "EddieRayUsers.xlsx" );
        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            userName = fullName.Value.ToString();
            email = emailAddress.Value.ToString();
            password = userPassword.Value.ToString();
            password2 = userPassword2.Value.ToString();
            whereInfo = selectWhere.Value.ToString();

            if (userName == null || userName == "" || email == null || email == "" || password == null || password == "" || password2 == null || password2 == "" || whereInfo == null || whereInfo == "")
            {
                alertRequiredFields.Visible = true;
                alertEmail.Visible = false;
                alertPassword.Visible = false;
                alertPasswordNum.Visible = false;
                return;
            }
            else if (!(password == password2))
            {
                alertPassword.Visible = true;
                alertRequiredFields.Visible = false;
                alertEmail.Visible = false;
                alertPasswordNum.Visible = false;
                return;
            }
            else if ((password.Count() < 8))
            {
                alertPasswordNum.Visible = true;
                alertPassword.Visible = false;
                alertRequiredFields.Visible = false;
                alertEmail.Visible = false;
                return;
            }
            else if ((validEmail = Datalink.IsValidEmailAddress(email)) == false)
            {
                alertEmail.Visible = true;
                alertRequiredFields.Visible = false;
                alertPassword.Visible = false;
                alertPasswordNum.Visible = false;
                return;
            }

            alertRequiredFields.Visible = false;
            alertEmail.Visible = false;
            alertPassword.Visible = false;
            alertPasswordNum.Visible = false;

            DataRow drEddieRayUsers = dtEddieRayUsers.NewRow();

            drEddieRayUsers["User Full Name"] = userName;
            drEddieRayUsers["Email Address"] = email;
            drEddieRayUsers["Password"] = password;
            drEddieRayUsers["Ad Location"] = whereInfo;

            dtEddieRayUsers.Rows.Add(drEddieRayUsers);

            Datalink.EddieRayUsersExportToexcel(dtEddieRayUsers, "EddieRayUsers.xlsx");

            confirmSignUp.Visible = true;
            Datalink.SendEmail(email, userName);
        }

    }
}