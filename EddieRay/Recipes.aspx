<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Recipes.aspx.cs" Inherits="EddieRay.Recipes" %>

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

    <title>Eddie Ray Recipes: Recipes</title>

</head>
<body>
    <form id="formRecipe" runat="server">
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
                        <li class="nav-item"><a class="main-nav-link" href="#contactUs">Contact</a> </li>
                        <li class="nav-item"><asp:Button ID="signOut" class="btn btn--signout" Text="Sign Out" runat="server" OnClick="signOut_Click" /></li>
                    </ul>
                </div>
            </nav>

        <main>
            <section class="section-recipes margin-left-sm margin-bottom-lg">
                <div class="container">
                    <span class="subheading padding-up-xl margin-bottom-sm">Recipes</span>
                    <h3 class="heading-secondary">
                        We have over 100 recipes!
                    </h3>
                    <div class="container grid grid--3--cols">
                        <div class="recipe ">
                            <img src="img/ChipotleBurritoBowl.jpg" class="recipe-img" alt="Chipotle Burrito Bowl"/>
                            <p class="recipe-title"><a class="main-nav-link" href="ChipotleBurritoBowl.aspx" ><strong>Chipotle Burrito Bowl</strong> </a></p>
                        </div>
                         <div class="recipe ">
                             <img src="img/CrabStuffedMushrooms.jpg" class="recipe-img" alt="Crab Stuffed Mushrooms"/>
                            <p class="recipe-title"><a class="main-nav-link" href="CrabStuffedMushrooms.aspx"><strong>Crab Stuffed Mushrooms</strong></a></p>
                        </div>
                       <div class="recipe ">
                            <img src="img/ChineseGeneralTsoChicken.jpg" class="recipe-img" alt="Chinese: General Tso Chicken"/>
                            <p class="recipe-title"><a class="main-nav-link" href="ChineseGeneralTsoChicken.aspx"><strong>Chinese: General Tso Chicken</strong></a></p>
                        </div>
                        <div class="recipe ">
                             <img src="img/ChineseChickenFriedRice.jpg" class="recipe-img" alt="Chinese: Chicken Fried Rice"/>
                            <p class="recipe-title"><a class="main-nav-link" href="ChineseChickenFriedRice.aspx"><strong>Chinese: Chicken Fried Rice</strong> </a></p>
                        </div>
                        <div class="recipe ">
                              <img src="img/ChineseSweetnSourChicken.jpg" class="recipe-img" alt="Chinese: Sweet'n'Sour Chicken"/>
                            <p class="recipe-title"><a class="main-nav-link" href="ChineseSweetnSourChicken.aspx"><strong>Chinese: Sweet'n'Sour Chicken</strong> </a></p>
                        </div>
                        <div class="recipe ">
                             <img src="img/MisoGlazedSalmon.jpg" class="recipe-img" alt="Miso Glazed Salmon"/>
                            <p class="recipe-title"><a class="main-nav-link" href="MisoGlazedSalmon.aspx"><strong>Miso Glazed Salmon</strong> </a></p>
                        </div>
                        <div class="recipe ">
                             <img src="img/CajunPasta.jpg" class="recipe-img" alt="Cajun Pasta"/>
                            <p class="recipe-title"><a class="main-nav-link" href="CajunPasta.aspx"><strong>Cajun Pasta</strong> </a></p>
                        </div>
                        <div class="recipe ">
                             <img src="img/shepherdsPie.jpeg" class="recipe-img" alt="Shepherds' Pie in skillet"/>
                            <p class="recipe-title"><a class="main-nav-link" href="ShepherdsPie.aspx"><strong>Shepherds' Pie</strong> </a></p>
                        </div>
                        <div class="recipe ">
                             <img src="img/CoconutShrimp.jpeg" class="recipe-img" alt="Plated Coconut Shrimp"/>
                            <p class="recipe-title"><a class="main-nav-link" href="CoconutShrimp.aspx"><strong>Coconut Shrimp</strong> </a></p>
                        </div>
                    </div>

                </div>
                
            </section>
        </main>

            <footer class="footer footer--borderline-sm">
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
                        <a class="footer-link" href="tel:860-337-9339">860-337-9339</a><br/>
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
                    <li><a class="footer-link" href="signin.html">Sign in</a> </li>
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
