using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EddieRay
{
    public partial class MisoGlazedSalmon : System.Web.UI.Page
    {
        decimal scaleValue;

        List<string> ingredients = new List<string>();
        string path = @"C:\Users\gonzales\MyDev\EddieRay\";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnMisoSalmonConfirm_Click(object sender, EventArgs e)
        {
            string newFullSalmonFilet, newFullMSG, newFullMisoPaste, newFullMirin, newFullRiceWine, newFullBrownSugar, newFullSoySauce, newFullSesameOil,
                newFullSpinach, newFullCabbage, newFullGarlicCloves, newFullGinger, newFullMushrooms; 

            scaleValue = Convert.ToDecimal(misoSalmonScaleValue.Value);

            string fullSalmonFilet = "1 Salmon Filet", fullMSG = "1 Tbs MSG", fullMisoPaste = "0.5 cup(s) of Miso paste", fullMirin = "0.33 cup(s) of Mirin", fullRiceWine = "0.25 cup(s) of Sake or rice wine",
                fullBrownSugar = "3 Tbs brown sugar", fullSoySauce = "2 Tbs soy sauce", fullSesameOil = "1 Tbs sesame oil", fullSpinach = "1 cup(s) of spinach", fullCabbage = "0.5 cup(s) of cabbage, sliced",
                fullGarlicCloves = "1 garlic clove, minced", fullGinger = "1 Tbs ginger, minced", fullMushrooms = "4 shiitake mushrooms, sliced";


            newFullSalmonFilet = Datalink.ScaleIngredient(fullSalmonFilet, scaleValue);
            newFullMSG = Datalink.ScaleIngredient(fullMSG, scaleValue);
            newFullMisoPaste = Datalink.ScaleIngredient(fullMisoPaste, scaleValue);
            newFullMirin = Datalink.ScaleIngredient(fullMirin, scaleValue);
            newFullRiceWine = Datalink.ScaleIngredient(fullRiceWine, scaleValue);
            newFullBrownSugar = Datalink.ScaleIngredient(fullBrownSugar, scaleValue);
            newFullSoySauce = Datalink.ScaleIngredient(fullSoySauce, scaleValue);
            newFullSesameOil = Datalink.ScaleIngredient(fullSesameOil, scaleValue);
            newFullSpinach = Datalink.ScaleIngredient(fullSpinach, scaleValue);
            newFullCabbage = Datalink.ScaleIngredient(fullCabbage, scaleValue);
            newFullGarlicCloves = Datalink.ScaleIngredient(fullGarlicCloves, scaleValue);
            newFullGinger = Datalink.ScaleIngredient(fullGinger, scaleValue);
            newFullMushrooms = Datalink.ScaleIngredient(fullMushrooms, scaleValue);
            

            salmonFilet.Value = newFullSalmonFilet;
            msg.Value = newFullMSG;
            misoPaste.Value = newFullMisoPaste;
            mirin.Value = newFullMirin;
            riceWine.Value = newFullRiceWine;
            brownSugar.Value = newFullBrownSugar;
            soySauce.Value = newFullSoySauce;
            sesameOil.Value = newFullSesameOil;
            spinach.Value = newFullSpinach;
            cabbage.Value = newFullCabbage;
            garlicCloves.Value = newFullGarlicCloves;
            ginger.Value = newFullGinger;
            mushrooms.Value = newFullMushrooms;
            

        }

        protected void signOut_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("SignIn.aspx");
        }
    }
}