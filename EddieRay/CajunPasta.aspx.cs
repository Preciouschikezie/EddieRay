using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EddieRay
{
    public partial class CajunPasta : System.Web.UI.Page
    {

        decimal scaleValue;

        List<string> ingredients = new List<string>();
        string path = @"C:\Users\gonzales\MyDev\EddieRay\";

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnCajunPastaConfirm_Click(object sender, EventArgs e)
        {
            string newFullChickenBreast, newFullFettuccine, newFullCajunSeasoning, newFullButter, newFullGreenPepper, newFullRedPepper, newFullMushrooms, newFullGreenOnions;
            string newFullHeavyCream, newFullDriedBasil, newFullLemonPepper, newFullCayennePepper, newFullSalt, newFullGarlicPowder, newFullBlackPepper, newFullParmesanCheese;

            scaleValue = Convert.ToDecimal(cajunPastaScaleValue.Value);

            string fullChickenBreast = "4 boneless, skinless, chicken breast halves", 
                fullFettuccine = "12 oz fettuccine pasta", fullCajunSeasoning = "2 tsp Cajun Seasoning", fullButter = "2 Tbs butter", fullGreenPepper = "1 green bell pepper, chopped", 
                fullRedPepper = "1 red bell pepper, chopped", fullMushrooms = "6 fresh portobello mushrooms, sliced", fullGreenOnions = "4 green onions, thinly sliced", 
                fullHeavyCream = "1.5 cups heavy cream", fullDriedBasil = "1 tsp dried basil", fullLemonPepper = "0.5 tsp lemon peper", fullCayennePepper = "0.5 tsp cayenne pepper", fullSalt = "1 tsp salt",
                fullGarlicPowder = "1 tsp garlic powder", fullBlackPepper = "0.5 tsp ground black pepper", fullParmesanCheese = "2 Tbs shredded parmesan cheese";

            newFullChickenBreast = Datalink.ScaleIngredient(fullChickenBreast, scaleValue);
            newFullFettuccine = Datalink.ScaleIngredient(fullFettuccine, scaleValue);
            newFullCajunSeasoning = Datalink.ScaleIngredient(fullCajunSeasoning, scaleValue);
            newFullButter = Datalink.ScaleIngredient(fullButter, scaleValue);
            newFullGreenPepper = Datalink.ScaleIngredient(fullGreenPepper, scaleValue);
            newFullRedPepper = Datalink.ScaleIngredient(fullRedPepper, scaleValue);
            newFullMushrooms = Datalink.ScaleIngredient(fullMushrooms, scaleValue);
            newFullGreenOnions = Datalink.ScaleIngredient(fullGreenOnions, scaleValue);
            newFullHeavyCream = Datalink.ScaleIngredient(fullHeavyCream, scaleValue);
            newFullDriedBasil = Datalink.ScaleIngredient(fullDriedBasil, scaleValue);
            newFullLemonPepper = Datalink.ScaleIngredient(fullLemonPepper, scaleValue);
            newFullCayennePepper = Datalink.ScaleIngredient(fullCayennePepper, scaleValue);
            newFullSalt = Datalink.ScaleIngredient(fullSalt, scaleValue);
            newFullGarlicPowder = Datalink.ScaleIngredient(fullGarlicPowder, scaleValue);
            newFullBlackPepper = Datalink.ScaleIngredient(fullBlackPepper, scaleValue);
            newFullParmesanCheese = Datalink.ScaleIngredient(fullParmesanCheese, scaleValue);

            chickenBreast.Value = newFullChickenBreast;
            fettuccine.Value = newFullFettuccine;
            cajunSeasoning.Value = newFullCajunSeasoning;
            butter.Value = newFullButter;
            greenBellPepper.Value = newFullGreenPepper;
            redBellPepper.Value = newFullRedPepper;
            mushrooms.Value = newFullMushrooms;
            greenOnions.Value = newFullGreenOnions;
            heavyCream.Value = newFullHeavyCream;
            basil.Value = newFullDriedBasil;
            lemonPepper.Value = newFullLemonPepper;
            cayennePepper.Value = newFullCayennePepper;
            salt.Value = newFullSalt;
            garlicPowder.Value = newFullGarlicPowder;
            blackPepper.Value = newFullBlackPepper;
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