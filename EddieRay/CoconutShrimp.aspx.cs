using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EddieRay
{
    public partial class CoconutShrimp : System.Web.UI.Page
    {
        decimal scaleValue;

        List<string> ingredients = new List<string>();
        string path = @"C:\Users\gonzales\MyDev\EddieRay\";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCoconutShrimpConfirm_Click(object sender, EventArgs e)
        {
            string newFullShrimp, newFullLime, newFullEggs, newFullFlour, newFullSalt, newFullGarlicPowder, newFullCoconut, newFullBreadCrumbs;
              

            scaleValue = Convert.ToDecimal(coconutShrimpScaleValue.Value);

            string fullShrimp = "1 lbs shrimp", fullLime = "1 slice of lime", fullEggs = "2 eggs", fullFlour = "0.25 cup(s) of flour", fullSalt = "0.5 tsp salt",
                fullGarlicPowder = "0.5 tsp garlic powder", fullCoconut = "0.5 cup(s) coconut, grated", fullBreadCrumbs = "0.33 cup(s) panko bread crumbs"; 


            newFullShrimp = Datalink.ScaleIngredient(fullShrimp, scaleValue);
            newFullLime = Datalink.ScaleIngredient(fullLime, scaleValue);
            newFullEggs = Datalink.ScaleIngredient(fullEggs, scaleValue);
            newFullFlour = Datalink.ScaleIngredient(fullFlour, scaleValue);
            newFullSalt = Datalink.ScaleIngredient(fullSalt, scaleValue);
            newFullGarlicPowder = Datalink.ScaleIngredient(fullGarlicPowder, scaleValue);
            newFullCoconut = Datalink.ScaleIngredient(fullCoconut, scaleValue);
            newFullBreadCrumbs = Datalink.ScaleIngredient(fullBreadCrumbs, scaleValue);
           


            shrimp.Value = newFullShrimp;
            lime.Value = newFullLime;
            egg.Value = newFullEggs;
            flour.Value = newFullFlour;
            salt.Value = newFullSalt;
            garlicPowder.Value = newFullGarlicPowder;
            coconut.Value = newFullCoconut;
            breadCrumbs.Value = newFullBreadCrumbs;
            
        }

        protected void signOut_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("SignIn.aspx");
        }
    }
}