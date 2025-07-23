using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EddieRay
{
    public partial class ChineseGeneralTsoChicken : System.Web.UI.Page
    {
        decimal scaleValue;

        List<string> ingredients = new List<string>();
        string path = @"C:\Users\gonzales\MyDev\EddieRay\";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTsoChickenConfirm_Click(object sender, EventArgs e)
        {
            string newFullChickenThigh, newFullGarlicCloves, newFullWater, newFullHoney, newFullSugar, newFullAsianCookWine1, newFullDakSoySauce, newFullWhiteVinegar,
                newFullFishSauce, newFullWhitePepper, newFullRedChilli, newFullAsianCookWine2, newFullSaltPinch, newFullEgg, newFullCornStarch, newFullFlour, newFullMSG, newFullGreenOnions;
                
            scaleValue = Convert.ToDecimal(tsoChickenScaleValue.Value);

            string fullChickenThigh = "2 pieces boneless chicken thigh", fullGarlicCloves = "1 garlic clove(s), minced", fullWater = "0.25 cup(s) of water", fullHoney = "0.25 cup(s) of honey",
               fullSugar = "4 Tbs sugar", fullAsianCookWine1 = "1 Tbs asian cooking wine", fullDarkSoySauce = "1 Tbs dark soy sauce", fullWhiteVinegar = "1 Tbs white vinegar", fullFishSauce = "1 Tbs oyster/fish sauce",
               fullWhitePepper = "1 tsp white pepper", fullRedChilli = "1 dried red chilli peppers", fullAsianCookWine2 = "1 Tbs asian cooking wine", fullSaltPinch = "1 pinch of salt or salt to taste",
               fullEgg = "1 egg", fullCornStarch = "20 g corn starch", fullFlour = "15 g flour", fullMSG = "1 tsp MSG (optional)", fullGreenOnions = "2 chopped green onions";

            newFullChickenThigh = Datalink.ScaleIngredient(fullChickenThigh, scaleValue);
            newFullGarlicCloves = Datalink.ScaleIngredient(fullGarlicCloves, scaleValue);
            newFullWater = Datalink.ScaleIngredient(fullWater, scaleValue);
            newFullHoney = Datalink.ScaleIngredient(fullHoney, scaleValue);
            newFullSugar = Datalink.ScaleIngredient(fullSugar, scaleValue);
            newFullAsianCookWine1 = Datalink.ScaleIngredient(fullAsianCookWine1, scaleValue);
            newFullDakSoySauce = Datalink.ScaleIngredient(fullDarkSoySauce, scaleValue);
            newFullWhiteVinegar = Datalink.ScaleIngredient(fullWhiteVinegar, scaleValue);
            newFullFishSauce = Datalink.ScaleIngredient(fullFishSauce, scaleValue);
            newFullWhitePepper = Datalink.ScaleIngredient(fullWhitePepper, scaleValue);
            newFullRedChilli = Datalink.ScaleIngredient(fullRedChilli, scaleValue);
            newFullAsianCookWine2 = Datalink.ScaleIngredient(fullAsianCookWine2, scaleValue);
            newFullSaltPinch = Datalink.ScaleIngredient(fullSaltPinch, scaleValue);
            newFullEgg = Datalink.ScaleIngredient(fullEgg, scaleValue);
            newFullCornStarch = Datalink.ScaleIngredient(fullCornStarch, scaleValue);
            newFullFlour = Datalink.ScaleIngredient(fullFlour, scaleValue);
            newFullMSG = Datalink.ScaleIngredient(fullMSG, scaleValue);
            newFullGreenOnions = Datalink.ScaleIngredient(fullGreenOnions, scaleValue);
            


            chickenThigh.Value = newFullChickenThigh;
            garlicCloves.Value = newFullGarlicCloves;
            water.Value = newFullWater;
            honey.Value = newFullHoney;
            sugar.Value = newFullSugar;
            asianCookingWine1.Value = newFullAsianCookWine1;
            darkSoySauce.Value = newFullDakSoySauce;
            whiteVinegar.Value = newFullWhiteVinegar;
            oysterFishSauce.Value = newFullFishSauce;
            whitePepper.Value = newFullWhitePepper;
            redChilliPepper.Value = newFullRedChilli;
            asianCookingWine2.Value = newFullAsianCookWine2;
            saltPinch.Value = newFullSaltPinch;
            egg.Value = newFullEgg;
            cornStarch.Value = newFullCornStarch;
            flour.Value = newFullFlour;
            msg.Value = newFullMSG;
            greenOnions.Value = newFullGreenOnions;
            


        }

        protected void signOut_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("SignIn.aspx");
        }
    }
}