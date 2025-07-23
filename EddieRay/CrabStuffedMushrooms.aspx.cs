using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EddieRay
{
    public partial class CrabStuffedMushrooms : System.Web.UI.Page
    {
        decimal scaleValue;

        List<string> ingredients = new List<string>();
        string path = @"C:\Users\gonzales\MyDev\EddieRay\";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnMushroomsConfirm_Click(object sender, EventArgs e)
        {
            string newFullLargeMushrooms, newFullCrabMeat, newFullMushroomStems, newFullOnion, newFullParsley, newFullGarlicCloves, newFullBreadCrumbs, newFullCreamCheese,
               newFullParmesanCheese;

            scaleValue = Convert.ToDecimal(mushroomsScaleValue.Value);

            string fullLargeMushrooms = "12 Large mushrooms", fullCrabMeat = "8 oz crab meat", fullMushroomStems = "1 cup(s) of mushroom stems", fullOnion = "1 cup(s) of onions, minced", fullParsley = "0.5 cup(s) of parsley, chopped",
                fullGarlicCloves = "1 garlic cloves, minced", fullBreadCrumbs = "0.5 cup(s) panko bread crumbs", fullCreamCheese = "0.5 cup(s) cream cheese", fullParmesanCheese = "0.5 cup(s) parmesan cheese"; 


            newFullLargeMushrooms = Datalink.ScaleIngredient(fullLargeMushrooms, scaleValue);
            newFullCrabMeat = Datalink.ScaleIngredient(fullCrabMeat, scaleValue);
            newFullMushroomStems = Datalink.ScaleIngredient(fullMushroomStems, scaleValue);
            newFullOnion = Datalink.ScaleIngredient(fullOnion, scaleValue);
            newFullParsley = Datalink.ScaleIngredient(fullParsley, scaleValue);
            newFullGarlicCloves = Datalink.ScaleIngredient(fullGarlicCloves, scaleValue);
            newFullBreadCrumbs = Datalink.ScaleIngredient(fullBreadCrumbs, scaleValue);
            newFullCreamCheese = Datalink.ScaleIngredient(fullCreamCheese, scaleValue);
            newFullParmesanCheese = Datalink.ScaleIngredient(fullParmesanCheese, scaleValue);
            


            largeMushrooms.Value = newFullLargeMushrooms;
            crabMeat.Value = newFullCrabMeat;
            mushroomStems.Value = newFullMushroomStems;
            onions.Value = newFullOnion;
            parsley.Value = newFullParsley;
            garlicCloves.Value = newFullGarlicCloves;
            breadCrumbs.Value = newFullBreadCrumbs;
            creamCheese.Value = newFullCreamCheese;
            parmesanCheese.Value = newFullParmesanCheese;
            
        }

        protected void signOut_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("SignIn.aspx");
        }
    }
}