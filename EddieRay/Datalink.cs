using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;
using System.IO;
using System.Net.Mail;
using System.Drawing;
using System.Xml.Serialization;
using OfficeOpenXml;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.ComponentModel.DataAnnotations;



namespace EddieRay
{
    public static class Datalink
    {
        private static string programName = "EddieRayRecipes";
        public static string password = "Wise-Subscript1-Twine*Civil-Retorted-Plutonium5";
        public static string path = @"C:\Users\gonzales\MyDev\EddieRay\";
        private static string adminEmail = "preciousgonzales@ogind.com";

        public static DataTable ImportExcelSheet( string fullpathfilename)
        {
            FileInfo f = new FileInfo(fullpathfilename);
            DataTable dt = new DataTable();
            using (ExcelPackage p = new ExcelPackage(f))
            {
                ExcelWorksheet ws = p.Workbook.Worksheets[1];
                int colCount = ws.Dimension.End.Column;
                int rowCount = ws.Dimension.End.Row;
                for (int i = 1; i <= colCount; i++)
                    dt.Columns.Add(ws.Cells[1, i].Value.ToString().Trim());
                for (int i = 2; i <= rowCount; i++)
                {
                    DataRow dr = dt.NewRow();
                    for (int j = 1; j <= colCount; j++)
                    {
                        if (ws.Cells[i, j].Value is null)
                            dr[j - 1] = "  ";
                        else
                            dr[j - 1] = ws.Cells[i, j].Value.ToString().Trim();
                    }
                    dt.Rows.Add(dr);
                }
            }
            return dt;
        }
        public static void EddieRayUsersExportToexcel(DataTable dt, string filename)
        {
            string recordsPath = path + filename;
            if (System.IO.File.Exists(recordsPath))
            {
                System.IO.File.Delete(recordsPath);
            }
            FileInfo newNote = new FileInfo(recordsPath);
            using (ExcelPackage p = new ExcelPackage(newNote))
            {
                ExcelWorksheet ws = p.Workbook.Worksheets.Add("Sheet");
                ws.Cells["A1"].LoadFromDataTable(dt, true);
                ExcelRange header = ws.Cells["A1:" + MaxColumn(dt.Columns.Count) + "1"];
                header.AutoFilter = true;
                header.Style.Font.Bold = true;
                header.Style.Fill.PatternType = OfficeOpenXml.Style.ExcelFillStyle.Solid;
                header.Style.Fill.BackgroundColor.SetColor(Color.LightGray);
                ws.View.FreezePanes(2, 1);
                for (int i = 1; i <= dt.Columns.Count; i++)
                    ws.Column(i).AutoFit();
                ws.View.ZoomScale = 85;
                p.Save();
            }

        }
        public static void SendEmail(string email, string user)
        {
            MailMessage msg = new MailMessage();
            msg.To.Add(new MailAddress(email));
            msg.Subject = "Eddie Ray Recipes: Welcome!";
            msg.Body = "Hi " + user + ","; 
            msg.Body += "<p>Your account has been successfully created! You now have access to ALL our recipes";
            msg.Body += "<p><font size=-2>This alert sent by " + programName + ".exe</font>";
            msg.IsBodyHtml = true;
            msg.From = new MailAddress("automated@ogind.com");
            SmtpClient client = new SmtpClient("10.1.8.25");
            client.Port = 587;
            client.Credentials = new System.Net.NetworkCredential("automated", password);
            try { client.Send(msg); }
            catch (Exception e) { string t = e.ToString(); }
        }
        private static string MaxColumn(int count)
        {
            string result = string.Empty;
            while (--count >= 0)
            {
                result = (char)('A' + count % 26) + result;
                count /= 26;
            }
            return result;
        }
        public static bool IsValidEmailAddress(string emailaddress)
        {
            EmailAddressAttribute e = new EmailAddressAttribute();
            if (e.IsValid(emailaddress))
                return true;
            else
                return false;

        }

        public static List<string> IngredientSplit(string ingredient)
        {
            List<string> listIngredient = new List<string>();
            string measurement = "", otherDesc = "";
            string[] ingredientDesc = ingredient.Split(' ');
            measurement = ingredientDesc[0];
            int count = Convert.ToInt32(ingredientDesc.Length);
            for(int c = 1; c < count; c++)
            {
                otherDesc += " " + ingredientDesc[c];
            }

            listIngredient.Add(measurement);
            listIngredient.Add(otherDesc);
            return listIngredient;
        }
        public static string ScaleIngredient(string fullIngre, decimal scaleValue)
        {
            string scaledIngr = "";
            decimal measurement, newMeasurement;
            List<string> ingredients = new List<string>();

            ingredients = IngredientSplit(fullIngre);
            measurement = Convert.ToDecimal(ingredients[0]);   //ingredients[0]
            newMeasurement = measurement * scaleValue;

            scaledIngr = Convert.ToString(newMeasurement) + ingredients[1];

            return scaledIngr;
        }
    }
}