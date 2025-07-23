using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Text;
using System.Xml.Serialization;
using HtmlAgilityPack;


namespace EddieRay
{
    public partial class ChineseChickenFriedRice : System.Web.UI.Page
    {

        decimal scaleValue;
       
        List<string> ingredients = new List<string>();
        string path = @"C:\Users\gonzales\MyDev\EddieRay\";
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnFriedRiceConfirm_Click(object sender, EventArgs e)
        {
            string newFullrice, newFullEggs, newFullButter, newFullChicken, newFullSalt1, newFullMSG, newFullSesame, newFullAvocado;
            string newFullCarrot, newFullPeas, newFullGreenOnions, newFullSalt2;
            string newFullGinger, newFullBrownSugar, newFullVinegar, newFullSoySauce, newFullOysterSauce, newFullGarlic;

            scaleValue = Convert.ToDecimal(friedRiceScaleValue.Value);

            string fullRice = "1 cup(s) raw jasmin rice", fullEggs = "3 eggs, whisked", fullButter = "3.5 Tbs butter", fullChicken = "1 chicken breasts, diced", fullSalt1 = "1 tsp salt", 
                fullMSG = "1 tsp MSG", fullSesame = "1 Tbs sesame oil", fullAvocado = "1 Tbs avocado oil";
            string fullCarrot = "1 medium carrot, peeled and diced", fullPeas = "0.25 cup(s) frozen peas", fullGreenOnions = "3 green onions, thinly sliced", fullSalt2 = "1 tsp salt";
            string fullGinger = "1 Tbs ginger, freshly ground", fullBrownSugar = "0.25 cup(s) brown sugar", fullVinegar = "1 tsp vinegar", fullSoySauce = "1 Tbs light soy sauce", 
                fullOysterSauce = "1 Tbs oyster sauce", fullGarlic = "3 garlic cloves, minced";

            newFullrice = Datalink.ScaleIngredient(fullRice, scaleValue);
            newFullEggs = Datalink.ScaleIngredient(fullEggs, scaleValue);
            newFullButter = Datalink.ScaleIngredient(fullButter, scaleValue);
            newFullChicken = Datalink.ScaleIngredient(fullChicken, scaleValue);
            newFullSalt1 = Datalink.ScaleIngredient(fullSalt1, scaleValue);
            newFullMSG = Datalink.ScaleIngredient(fullMSG, scaleValue);
            newFullSesame = Datalink.ScaleIngredient(fullSesame, scaleValue);
            newFullAvocado = Datalink.ScaleIngredient(fullAvocado, scaleValue);
            newFullCarrot = Datalink.ScaleIngredient(fullCarrot, scaleValue);
            newFullPeas = Datalink.ScaleIngredient(fullPeas, scaleValue);
            newFullGreenOnions = Datalink.ScaleIngredient(fullGreenOnions, scaleValue);
            newFullSalt2 = Datalink.ScaleIngredient(fullSalt2, scaleValue);
            newFullGinger = Datalink.ScaleIngredient(fullGinger, scaleValue);
            newFullBrownSugar = Datalink.ScaleIngredient(fullBrownSugar, scaleValue);
            newFullVinegar = Datalink.ScaleIngredient(fullVinegar, scaleValue);
            newFullSoySauce = Datalink.ScaleIngredient(fullSoySauce, scaleValue);
            newFullOysterSauce = Datalink.ScaleIngredient(fullOysterSauce, scaleValue);
            newFullGarlic = Datalink.ScaleIngredient(fullGarlic, scaleValue);


            rice.Value = newFullrice;
            eggs.Value = newFullEggs;
            butter.Value = newFullButter;
            chicken.Value = newFullChicken;
            salt1.Value = newFullSalt1;
            msg.Value = newFullMSG;
            sesame.Value = newFullSesame;
            avocado.Value = newFullAvocado;
            carrot.Value = newFullCarrot;
            peas.Value = newFullPeas;
            greenOnions.Value = newFullGreenOnions;
            salt2.Value = newFullSalt2;
            ginger.Value = newFullGinger;
            brownSugar.Value = newFullBrownSugar;
            vinegar.Value = newFullVinegar;
            soySauce.Value = newFullSoySauce;
            oysterSauce.Value = newFullOysterSauce;
            garlic.Value = newFullGarlic;

        }

        protected void signOut_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("SignIn.aspx");
        }
    }

}