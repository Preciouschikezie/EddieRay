using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace EddieRay
{
    public partial class SignIn : System.Web.UI.Page
    {
        private static string path = @"C:\Users\gonzales\MyDev\EddieRay\";
        string email = "", password = "";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        DataTable dtEddieRayUsers = Datalink.ImportExcelSheet(path + "EddieRayUsers.xlsx");
        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            email = emailAddress.Value.ToString();
            password = userPassword.Value.ToString();
            
            foreach(DataRow drUsers in dtEddieRayUsers.Rows)
            {
                if((email == Convert.ToString(drUsers["email Address"])) && (password == Convert.ToString(drUsers["Password"])))
                {
                    //display recipes
                    Server.Transfer("Recipes.aspx");
                    //return
                }
            }
            alertValidUser.Visible = true;
            return;
        }
    }
}