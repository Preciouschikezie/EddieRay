<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShepherdsPie.aspx.cs" Inherits="EddieRay.ShepherdsPie" %>

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

    <title>Eddie Ray Recipes: Shepherds' Pie</title>
</head>
<body>
    <form id="shepherdsPie" runat="server">
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
                    <span class="subheading padding-up-xl margin-bottom-sm">Shepherds' Pie</span>
                </div>
                
               <div class="container grid recipegrid--2--cols">
               
                        <div class="recipe">
                            <div >

                                <img src="img/shepherdsPie.jpeg" class="recipe-img" alt="Shepherds' Pie in skillet"/>
                                <br />
                                <p class="recipe-title padding-up-md">Ingredients</p>
                        
                                <div class="ingredient-content margin-left-sm">
                                    <label for="shephPieScaleValue">Please select portion size:</label>
                                    <div class="gap-md" >
                                        <input type="number" class="scale" runat="server" id="shephPieScaleValue" min="1" max="100" style="width:fit-content" />
                                        <asp:Button runat="server" class="btn btn--form scale margin-left-sm btn--recipe" ID="btnShephPieConfirm" Text="Confirm" OnClick="btnShephPieConfirm_Click" />
                                    </div>
                                    <br />
                                    <ul  class="direction-ingredients">
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="groundBeef" value="1 lb ground beef (lamb beef)" /> </li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="onion" value="1 whole onion, chopped" /></li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="frozenCorn" value="1.3 cup(s) frozen corn, thawed" /></li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="frozenPeas" value="1.3 cup(s) frozen peas, thawed" /> </li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="ketchup" value="1.3 Tbs ketchup" /> </li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="WorcesSauce" value="1 Tbs Worcestershire sauce" /> </li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="garlic" value="1 tsp garlic, minced" /> </li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="cornStarch" value="1 Tbs cornstarch" /> </li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="beefBullion" value="1 tsp beef bullion" /></li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="coldWater" value="0.33 cup(s) cold water" /></li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="sourCream" value="0.33 cup(s) sour cream" /></li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="mashedPotatoes" value="2.4 cup(s) mashed potatoes" /> </li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="cheddarCheese" value="0.5 cup(s) shredded cheddar cheese" /></li>
                                    </ul>
                                </div>
                            </div>
                        </div>



                        <div class="recipe-list">
                            <h3 class="heading-tertiary">Directions</h3>
                            <ul class="list">
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Brown beef & onion (med heat) in skillet</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Stir in corn, peas, ketchup, Worcestershire, garlic.</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Reduce to low heat and simmer for 5 min</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Mix cornstarch, bullion and water in small bowl</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Stir mixture into skillet and bring to boil over med heat.</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Cook & stir until thickened (2 min)</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Stir in sour cream and heat (do not boil)</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Add salt and black pepper to taste</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Spread mashed potatoes over top & sprinkle with cheese</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Cover & cook until hot & cheese is melted</li>
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
