<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChineseSweetnSourChicken.aspx.cs" Inherits="EddieRay.ChineseSweetnSourChicken" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="" />
    <link href="https://fonts.googleapis.com/css2?family=Andika:wght@400;700&display=swap" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous" />

    <link rel="stylesheet" href="General.css" />
    <link rel="stylesheet" href="Style.css" />
    <link rel="stylesheet" href="Queries.css" />

    <title>Eddie Ray Recipes: Chinese: Sweet 'n' Sour Chicken</title>
</head>
<body>
    <form id="sweetNsourChicken" runat="server">
         <nav class="navbar navbar-expand-md fixed-top recipe-header">
                    <a href="#">
                          <img class="logo" src="img/Eddie Ray final - Header.png" alt="Eddy Ray Logo" />
                    </a>
                <button class="navbar-toggler margin-right-sm" data-bs-toggle="collapse" aria-controls="navLinks" data-bs-target="#navLinks" type="button" >
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" style="flex-grow: 0;" id="navLinks">
                    <ul class="navbar-nav main-nav-list">
                        <li class="nav-item"><a class="main-nav-link nav-cta" href="Home.html">Home</a></li>
                        <li class="nav-item"><a class="main-nav-link" href="Recipes.aspx">Recipes</a></li>
                        <li class="nav-item"><a class="main-nav-link" href="#contactUs">Contact</a> </li>
                        <li class="nav-item"><asp:Button ID="signOut" class="btn btn--signout" Text="Sign Out" runat="server" OnClick="signOut_Click" /></li>
                    </ul>
                </div>
            </nav>
        <main>
            <section class="section-signin">

                <div class="container">
                    <span class="subheading padding-up-xl margin-bottom-sm">Chinese: Sweet 'n' Sour Chicken</span>
                </div>
                <div class="container grid recipegrid--2--cols">
               
                        <div class="recipe">
                            <div  action="#">

                                <img src="img/ChineseSweetnSourChicken.jpg" class="recipe-img" alt="Chinese: Chicken Fried Rice"/>
                                <br />
                                <p class="recipe-title padding-up-md">Ingredients</p>
                        
                                <div class="ingredient-content margin-left-sm">
                                    <label for="sweetNsourScaleValue">Please select portion size:</label>
                                    <div class="scale" >
                                        <input type="number" class="scale" runat="server" id="sweetNsourScaleValue" min="1" max="100" style="width:fit-content" />
                                        <asp:Button class="btn btn--form scale margin-left-sm btn--recipe" ID="btnSweetNsourConfirm" runat="server" Text="Confirm" OnClick="btnSweetNsourConfirm_Click" />
                                    </div>

                                    <br />
                                    <ul class="direction-ingredients">
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="chickenBreast" value="1 large chicken breast" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="onions" value="0.25 onion ball" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="redBellpepper" value="0.5 red bell pepper" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="yellowBellepper" value="0.5 yellow bell pepper" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="greenBellpepper" value="0.25 green bell pepper" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="tomatoPaste" value="4 Tbs tomato paste" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="strawberryJam" value="4 Tbs strawberry jam" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="water1" value="4 Tbs water" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="brownSugar" value="8 Tbs brown sugar" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="vinegar" value="4 Tbs vinegar" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="pineapple" value="0.25 cup pineapple, chopped" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="salt" value="1 tsp salt" /></li>
                                    </ul>
                                    <br/>
                                    
                                    <span class="tag">Batter bowl:</span>
                                    <ul class="direction-ingredients">
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="flour" value="1 cup(s) of flour" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="cornStarch" value="0.25 cup(s) of corn starch" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="bakingPowder" value="0.125 cup(s) baking powder" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="water2" value="1 cup(s) of water" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="oil" value="2 Tbs vegetable oil" /></li>
                                    </ul>
                                    
                                    </div>
                                </div>
                            </div>

                        <div class="recipe-list">
                            <h3 class="heading-tertiary">Directions</h3>
                            <ul class="list">
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Slice chicken into chucks and cover in salt as desired</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Chop red, yellow, green peppers and onions (thick chop)</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> In a small bowl mix flour, corn starch, baking powder and water, add cooking oil</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> And water and cooking oil to the mixture</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Dredge chicken and fry at 320 for a few minutes (3 mins)</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Let the chicken sit and dry and fry again</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> And fry again till it turns golden brown</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> In a small skillet, add tomato paste, strawbery jam, water, brown sugar and vinegar.</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Add veggies as stir fry at low heat</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Add cornstarch to thicken</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Add chicken to the skillet and coat it with the mixture</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> And serve</li>

                            </ul>
                       </div>

                </div>

            </section>
        </main>

        <footer class="footer footer--borderline-sm" id="contactUs">
        <div class="container grid grid--footer">
            <div class="logo-col">
                <a href="#" class="footer-logo">
                    <img class="logo footer-logo-margin-xs" src="img/Eddie Ray final.png" alt="Eddy Ray Logo" />
                </a>

                <ul class="social-links-sm">
                    <li>
                        <a class="footer-link" href="#">
                            <ion-icon class="social-icon-sm" name="logo-instagram"></ion-icon>
                        </a>
                    </li>
                    <li>
                        <a class="footer-link" href="#">
                            <ion-icon class="social-icon-sm" name="logo-facebook"></ion-icon>
                        </a>
                    </li>
                    <li>
                        <a class="footer-link" href="#">
                            <ion-icon class="social-icon-sm" name="logo-twitter"></ion-icon>
                        </a>
                    </li>
                    <li>
                        <a class="footer-link" href="#">
                            <ion-icon class="social-icon-sm" name="logo-youtube"></ion-icon>
                        </a>
                    </li>
                </ul>

                <p class="copyright copyright--sm">
                    Copyright &copy; <span class="year">2023</span> by Eddie Ray, Inc.
                    All rights reserved.
                </p>
            </div>
            <div class="address-col">
                <p class="footer-heading footer-heading-sm">Contact Us</p>
                <address class="contacts">
                    <p class="address">
                        112 Wall Street, Torrington, CT, 06790
                    </p>
                    <p>
                        <a class="footer-link" href="tel:860-337-9339">860-337-9339</a><br>
                        <a class="footer-link" href="mailto:eddieray@eddieray.com">eddieray@eddieray.com</a>
                    </p>
                    <p>

                    </p>
                </address>
            </div>
            <nav class="nav-col">
                <p class="footer-heading footer-heading-sm">Account</p>
                <ul class="footer-nav footer-nav-sm">
                    <li><a class="footer-link" href="getStarted.html">Create account</a> </li>
                    <li><a class="footer-link" href="signup.html">Sign Up</a> </li>
                    <li><a class="footer-link" href="#">iOS App</a> </li>
                    <li><a class="footer-link" href="#">Android App</a> </li>
                </ul>
            </nav>
            <nav class="nav-col">
                <p class="footer-heading footer-heading-sm">Company</p>
                <ul class="footer-nav footer-nav-sm">
                    <li><a class="footer-link" href="#">About Eddie Ray</a> </li>
                    <li><a class="footer-link" href="#">For Business</a> </li>
                    <li><a class="footer-link" href="#">Partners</a> </li>
                    <li><a class="footer-link" href="#">Careers</a> </li>
                </ul>
            </nav>
            <nav class="nav-col">
                <p class="footer-heading footer-heading-sm">Resources</p>
                <ul class="footer-nav footer-nav-sm">
                    <li><a class="footer-link" href="#">Help and Support</a> </li>
                    <li><a class="footer-link" href="#">Privacy and Terms</a> </li>
                    <li><a class="footer-link" href="#">Cookie Settings</a> </li>
                </ul>
            </nav>
        </div>
    </footer>

    </form>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule="nomodule" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
  
   <script defer="defer" src="Script.js"></script>
</body>
</html>
