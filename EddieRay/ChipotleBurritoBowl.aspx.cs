using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EddieRay
{
    public partial class ChipotleBurritoBowl : System.Web.UI.Page
    {
        decimal scaleValue;

        List<string> ingredients = new List<string>();
        string path = @"C:\Users\gonzales\MyDev\EddieRay\";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBurritoConfirm_Click(object sender, EventArgs e)
        {
            string newFullBrisket, newFullBeefCheeks, newFullGarliCloves1, newFullBayLeaves, newFullCinnamonStick, newFullGuajilloChillies, newFullGroundCumin, newFullBeefStock,
                newFullLimes, newFullPintoBeans, newFullPepperBacon, newFullChorizo, newFullCherryTomatoes, newFullOnion, newFullGarlicCloves2, newFullSerranoChillies, newFullOregano, newFullSmokedPaprika,
                newFullChipotlePowder, newFullGroundCinnamon, newFullChickenStock, newFullGrainRice, newFullWater, newFullUnsaltedButter, newFullLimeZest, newFullChoppedCilantro,
                newFullGarlicCloves3, newFullTomatillos, newFullJalepenos, newFullCilantroBunch, newFullSweetOnion, newFullLimeJuice, newFullMozarellaCheese, newFullMJackCheese, newFullAvocado, newFullSourCream;

            scaleValue = Convert.ToDecimal(burritoScaleValue.Value);

            string fullBrisket = "2 lbs brisket (fatty)", fullBeefCheeks = "2 lbs beef cheeks", fullGarlicCloves1 = "8 garlic cloves, minced", fullBayLeaves = "3 bay leaves",
                fullCinnamonSticks = "1 cinnamon stick", fullGuajilloChillies = "4 guajillo chilies", fullGroundCumin = "2 tsp ground cumin", fullBeefStock = "2 cups of beef stock", fullLimes = "2 limes, juiced",
                fullPintoBeans = "1 lbs uncooked pinto beans", fullPepperBacon = "6 oz black pepper bacon", fullChorizo = "0.5 lbs chorizo", fullCherryTomatoes = "1 cup(s) cherry tomatoes",
                fullOnion = "1 onion, finely diced", fullGarlicCloves2 = "4 garlic cloves, minced", fullSerranoChillies = "2 serrano chillies, thinly sliced", fullOregano = "1 tsp oregano",
                fullSmokedPaprika = "2 tsp smoked paprika", fullChipotlePowder = "1 tsp chipotle powder", fullGroundCinnamon = "0.25 tsp ground cinnamon", fullChickenStock = "2 cup(s) of chicken stock", fullGrainRice = "2 cups of medium grain rice",
                fullWater = "2 cups of water", fullUnsaltedButter = "0.33 cup unsalted butter", fullLimeZest = "1 lime, zest and juice", fullCilantro = "0.5 cup(s) fresh chopped cilantro",
                fullGarlicCloves3 = "7 garlic cloves, minced", fullHuskedTomatillos = "1 lbs tomatillos, husked", fullSweetOnion = "0.5 sweet onion", fullJalepenos = "2 jalepenos", fullCilantroBunch = "0.5 bunch cilantro",
                 fullLimeJuice = "0.33 cup(s) lime juice", fullMozCheese = "1 cup(s) mozarella cheese, grated", fullMJackCheese = "1 cup(s) monterey jack cheese, grated", fullAvocados = "2 avocados, thinly sliced", fullSourCream = "0.75 cup(s) sour cream";

            newFullBrisket = Datalink.ScaleIngredient(fullBrisket, scaleValue);
            newFullBeefCheeks = Datalink.ScaleIngredient(fullBeefCheeks, scaleValue);
            newFullGarliCloves1 = Datalink.ScaleIngredient(fullGarlicCloves1, scaleValue);
            newFullBayLeaves = Datalink.ScaleIngredient(fullBayLeaves, scaleValue);
            newFullCinnamonStick = Datalink.ScaleIngredient(fullCinnamonSticks, scaleValue);
            newFullGuajilloChillies = Datalink.ScaleIngredient(fullGuajilloChillies, scaleValue);
            newFullGroundCumin = Datalink.ScaleIngredient(fullGroundCumin, scaleValue);
            newFullBeefStock = Datalink.ScaleIngredient(fullBeefStock, scaleValue);
            newFullLimes = Datalink.ScaleIngredient(fullLimes, scaleValue);
            newFullPintoBeans = Datalink.ScaleIngredient(fullPintoBeans, scaleValue);
            newFullPepperBacon = Datalink.ScaleIngredient(fullPepperBacon, scaleValue);
            newFullChorizo = Datalink.ScaleIngredient(fullChorizo, scaleValue);
            newFullCherryTomatoes = Datalink.ScaleIngredient(fullCherryTomatoes, scaleValue);
            newFullOnion = Datalink.ScaleIngredient(fullOnion, scaleValue);
            newFullGarlicCloves2 = Datalink.ScaleIngredient(fullGarlicCloves2, scaleValue);
            newFullSerranoChillies = Datalink.ScaleIngredient(fullSerranoChillies, scaleValue);
            newFullOregano = Datalink.ScaleIngredient(fullOregano, scaleValue);
            newFullSmokedPaprika = Datalink.ScaleIngredient(fullSmokedPaprika, scaleValue);
            newFullChipotlePowder = Datalink.ScaleIngredient(fullChipotlePowder, scaleValue);
            newFullGroundCinnamon = Datalink.ScaleIngredient(fullGroundCinnamon, scaleValue);
            newFullChickenStock = Datalink.ScaleIngredient(fullChickenStock, scaleValue);
            newFullGrainRice = Datalink.ScaleIngredient(fullGrainRice, scaleValue);
            newFullWater = Datalink.ScaleIngredient(fullWater, scaleValue);
            newFullUnsaltedButter = Datalink.ScaleIngredient(fullUnsaltedButter, scaleValue);
            newFullLimeZest = Datalink.ScaleIngredient(fullLimeZest, scaleValue);
            newFullChoppedCilantro = Datalink.ScaleIngredient(fullCilantro, scaleValue);
            newFullGarlicCloves3 = Datalink.ScaleIngredient(fullGarlicCloves3, scaleValue);
            newFullTomatillos = Datalink.ScaleIngredient(fullHuskedTomatillos, scaleValue);
            newFullSweetOnion = Datalink.ScaleIngredient(fullSweetOnion, scaleValue);
            newFullJalepenos = Datalink.ScaleIngredient(fullJalepenos, scaleValue);
            newFullCilantroBunch = Datalink.ScaleIngredient(fullCilantroBunch, scaleValue);
            newFullLimeJuice = Datalink.ScaleIngredient(fullLimeJuice, scaleValue);
            newFullMozarellaCheese = Datalink.ScaleIngredient(fullMozCheese, scaleValue);
            newFullMJackCheese = Datalink.ScaleIngredient(fullMJackCheese, scaleValue);
            newFullAvocado = Datalink.ScaleIngredient(fullAvocados, scaleValue);
            newFullSourCream = Datalink.ScaleIngredient(fullSourCream, scaleValue);



            brisket.Value = newFullBrisket;
            beefCheeks.Value = newFullBeefCheeks;
            garlicCloves1.Value = newFullGarliCloves1;
            bayLeaves.Value = newFullBayLeaves;
            cinnamonStick.Value = newFullCinnamonStick;
            guajilloChillies.Value = newFullGuajilloChillies;
            groundCumin.Value = newFullGroundCumin;
            beefStock.Value = newFullBeefStock;
            limes.Value = newFullLimes;
            pintoBeans.Value = newFullPintoBeans;
            pepperBacon.Value = newFullPepperBacon;
            chorizo.Value = newFullChorizo;
            cherryTomatoes.Value = newFullCherryTomatoes;
            onion.Value = newFullOnion;
            garlicCloves2.Value = newFullGarlicCloves2;
            serranoChillies.Value = newFullSerranoChillies;
            oregano.Value = newFullOregano;
            smokedPaprika.Value = newFullSmokedPaprika;
            chipotlePowder.Value = newFullChipotlePowder;
            groundCinnamon.Value = newFullGroundCinnamon;
            chickenStock.Value = newFullChickenStock;
            mediumGrainRice.Value = newFullGrainRice;
            water.Value = newFullWater;
            unsaltedButter.Value = newFullUnsaltedButter;
            lime.Value = newFullLimeZest;
            choppedCillantro.Value = newFullChoppedCilantro;
            garlicCloves3.Value = newFullGarlicCloves3;
            tomatillos.Value = newFullTomatillos;
            sweetOnion.Value = newFullSweetOnion;
            jalepenos.Value = newFullJalepenos;
            cilantroBunch.Value = newFullCilantroBunch;
            limeJuice.Value = newFullLimeJuice;
            mozzarellaCheese.Value = newFullMozarellaCheese;
            mjackCheese.Value = newFullMJackCheese;
            avocados.Value = fullAvocados;
            sourCream.Value = newFullSourCream;



        }

        protected void signOut_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("SignIn.aspx");
        }
    }
}