using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EddieRay
{
    public partial class ShepherdsPie : System.Web.UI.Page
    {

        decimal scaleValue;

        List<string> ingredients = new List<string>();
        string path = @"C:\Users\gonzales\MyDev\EddieRay\";

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnShephPieConfirm_Click(object sender, EventArgs e)
        {
            string newFullGroundbeef, newFullOnions, newFullFrozenCorn, newFullFrozenPeas, newFullKetchup, newFullWorcesSauce, newFullGarlic, newFullCornstarch;
            string newFullBeefBullion, newFullColdWater, newFullSourCream, newFullMashedPotatoes, newFullCheddarCheese;

            scaleValue = Convert.ToDecimal(shephPieScaleValue.Value);

            string fullGroundBeef = "1 lb ground beef (lamb beef)", fullOnions = "1 whole onion, chopped", fullFrozenCorn = "1.3 cup(s) frozen corn, thawed", fullFrozenPeas = "1.3 cup(s) frozen peas, thawed", 
                fullKetchup = "1.3 Tbs ketchup", fullWorcesSauce = "1 Tbs Worcestershire sauce", fullGarlic = "1 tsp garlic, minced", fullCornStarch = "1 Tbs cornstarch", fullBeefBullion = "1 tsp beef bullion",
                fullColdWater = "0.33 cup(s) cold water", fulSourCream = "0.33 cup(s) sour cream", fullMashedPotatoes = "2.4 cup(s) mashed potatoes", fullCheddarCheese = "0.5 cup(s) shredded cheddar cheese";

            newFullGroundbeef = Datalink.ScaleIngredient(fullGroundBeef, scaleValue);
            newFullOnions = Datalink.ScaleIngredient(fullOnions, scaleValue);
            newFullFrozenCorn = Datalink.ScaleIngredient(fullFrozenCorn, scaleValue);
            newFullFrozenPeas = Datalink.ScaleIngredient(fullFrozenPeas, scaleValue);
            newFullKetchup = Datalink.ScaleIngredient(fullKetchup, scaleValue);
            newFullWorcesSauce = Datalink.ScaleIngredient(fullWorcesSauce, scaleValue);
            newFullGarlic = Datalink.ScaleIngredient(fullGarlic, scaleValue);
            newFullCornstarch = Datalink.ScaleIngredient(fullCornStarch, scaleValue);
            newFullBeefBullion = Datalink.ScaleIngredient(fullBeefBullion, scaleValue);
            newFullColdWater = Datalink.ScaleIngredient(fullColdWater, scaleValue);
            newFullSourCream = Datalink.ScaleIngredient(fulSourCream, scaleValue);
            newFullMashedPotatoes = Datalink.ScaleIngredient(fullMashedPotatoes, scaleValue);
            newFullCheddarCheese = Datalink.ScaleIngredient(fullCheddarCheese, scaleValue);

            groundBeef.Value = newFullGroundbeef;
            onion.Value = newFullOnions;
            frozenCorn.Value = newFullFrozenCorn;
            frozenPeas.Value = newFullFrozenPeas;
            ketchup.Value = newFullKetchup;
            WorcesSauce.Value = newFullWorcesSauce;
            garlic.Value = newFullGarlic;
            cornStarch.Value = newFullCornstarch;
            beefBullion.Value = newFullBeefBullion;
            coldWater.Value = newFullColdWater;
            sourCream.Value = newFullSourCream;
            mashedPotatoes.Value = newFullMashedPotatoes;
            cheddarCheese.Value = newFullCheddarCheese;
        }

        protected void signOut_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("SignIn.aspx");
        }
    }
}