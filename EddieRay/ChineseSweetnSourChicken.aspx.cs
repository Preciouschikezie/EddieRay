using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EddieRay
{
    public partial class ChineseSweetnSourChicken : System.Web.UI.Page
    {
        decimal scaleValue;

        List<string> ingredients = new List<string>();
        string path = @"C:\Users\gonzales\MyDev\EddieRay\";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSweetNsourConfirm_Click(object sender, EventArgs e)
        {
            string newFullChickenBreast, newFullOnionBall, newFullRedBellPepper, newFullYelllowBellPepper, newFullGreenBellPepper, newFullTomatoPaste, newFullStrawberryJam, newFullWater1,
               newFullBrownSugar, newFullVinegar, newFullPineapple, newFullSalt, newFullFlour, newFullCornStarch, newFullBakingPowder, newFullWater2, newFullVegOil;

            scaleValue = Convert.ToDecimal(sweetNsourScaleValue.Value);

            string fullChickenBreast = "1 large chicken breast", fullOnionBall = "0.25 onion ball", fullRedBellPepper = "0.5 red bell pepper", fullYellowBellPepper = "0.5 yellow bell pepper", fullGreenBellPepper = "0.25 green bell pepper",
                fullTomatoPaste = "4 Tbs tomato paste", fullStrawberryJam = "4 Tbs strawberry jam", fullWater1 = "4 Tbs water", fullBrownSugar = "8 Tbs brown sugar", fullVinegar = "4 Tbs vinegar", fullPineapple = "0.25 cup pineapple, chopped", 
                fullSalt = "1 tsp salt", fullFlour = "1 cup(s) of flour", fullCornStarch = "0.25 cup(s) of corn starch", fullBakingPowder = "0.125 cup(s) baking powder", fullWater2 = "1 cup(s) of water", fullVegOil = "2 Tbs vegetable oil";


            newFullChickenBreast = Datalink.ScaleIngredient(fullChickenBreast, scaleValue);
            newFullOnionBall = Datalink.ScaleIngredient(fullOnionBall, scaleValue);
            newFullRedBellPepper = Datalink.ScaleIngredient(fullRedBellPepper, scaleValue);
            newFullYelllowBellPepper = Datalink.ScaleIngredient(fullYellowBellPepper, scaleValue);
            newFullGreenBellPepper = Datalink.ScaleIngredient(fullGreenBellPepper, scaleValue);
            newFullTomatoPaste = Datalink.ScaleIngredient(fullTomatoPaste, scaleValue);
            newFullStrawberryJam = Datalink.ScaleIngredient(fullStrawberryJam, scaleValue);
            newFullWater1 = Datalink.ScaleIngredient(fullWater1, scaleValue);
            newFullBrownSugar = Datalink.ScaleIngredient(fullBrownSugar, scaleValue);
            newFullVinegar = Datalink.ScaleIngredient(fullVinegar, scaleValue);
            newFullPineapple = Datalink.ScaleIngredient(fullPineapple, scaleValue);
            newFullSalt = Datalink.ScaleIngredient(fullSalt, scaleValue);
            newFullFlour = Datalink.ScaleIngredient(fullFlour, scaleValue);
            newFullCornStarch = Datalink.ScaleIngredient(fullCornStarch, scaleValue);
            newFullBakingPowder = Datalink.ScaleIngredient(fullBakingPowder, scaleValue);
            newFullWater2 = Datalink.ScaleIngredient(fullWater2, scaleValue);
            newFullVegOil = Datalink.ScaleIngredient(fullVegOil, scaleValue);



            chickenBreast.Value = newFullChickenBreast;
            onions.Value = newFullOnionBall;
            redBellpepper.Value = newFullRedBellPepper;
            yellowBellepper.Value = newFullYelllowBellPepper;
            greenBellpepper.Value = newFullGreenBellPepper;
            tomatoPaste.Value = newFullTomatoPaste;
            strawberryJam.Value = newFullStrawberryJam;
            water1.Value = newFullWater1;
            brownSugar.Value = newFullBrownSugar;
            vinegar.Value = newFullVinegar;
            pineapple.Value = newFullPineapple;
            salt.Value = newFullSalt;
            flour.Value = newFullFlour;
            cornStarch.Value = newFullCornStarch;
            bakingPowder.Value = newFullBakingPowder;
            water2.Value = newFullWater2;
            oil.Value = newFullVegOil;
        }

        protected void signOut_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("SignIn.aspx");
        }
    }
}