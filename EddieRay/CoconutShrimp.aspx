<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CoconutShrimp.aspx.cs" Inherits="EddieRay.CoconutShrimp" %>

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

    <title>Eddie Ray Recipes: Coconut Shrimp</title>
</head>
<body>
    <form id="coconutShrimp" runat="server">
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
            <section class="section-recipeDirections">
                <div class="container">
                    <span class="subheading padding-up-xl margin-bottom-sm">Coconut Shrimp</span>
                </div>
                 <div class="container grid recipegrid--2--cols">
               
                        <div class="recipe">
                            <div  action="#">

                                <img src="img/CoconutShrimp.jpeg" class="recipe-img" alt="Coconut Shrimp served with sauce and limes"/>
                                <br />
                                <p class="recipe-title padding-up-md">Ingredients</p>
                        
                                <div class="ingredient-content margin-left-sm">
                                    <label for="coconutShrimpScaleValue">Please select portion size:</label>
                                    <div class="scale" >
                                        <input type="number" class="scale" runat="server" id="coconutShrimpScaleValue" min="1" max="100" style="width:fit-content" />
                                        <asp:Button runat="server" class="btn btn--form scale margin-left-sm btn--recipe" ID="btnCoconutShrimpConfirm" Text="Confirm" OnClick="btnCoconutShrimpConfirm_Click" />
                                    </div>

                                    <br />
                                    <ul class="direction-ingredients">
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="shrimp" value="1 lbs shrimp" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="lime" value="1 slice of lime" /></li>
                                    </ul>
                                    <span class="tag">Egg Wash:</span>
                                    <ul class="direction-ingredients">
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="egg" value="2 eggs" /> </li>
                                        
                                    </ul>
                                    <br/>
                                    <span class="tag">Batter Bowl:</span>
                                    <ul class="direction-ingredients">
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="flour" value="0.25 cup(s) of flour" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="salt" value="0.5 tsp salt" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="garlicPowder" value="0.5 tsp garlic powder" /></li>
                                       
                                    </ul>
                                    <br/>
                                    
                                    <span class="tag">Breading Bowl:</span>
                                    <ul class="direction-ingredients">
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="coconut" value="0.5 cup(s) coconut, grated" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="breadCrumbs" value="0.33 cup(s) panko bread crumbs" />  </li>
                                    </ul>
                                    <br />
                                    <span class="tag">Sauce:</span>
                                    <ul class="direction-ingredients">
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="dippingSauce" value="Coconut Shrimp Dipping Sauce" /></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                <div class="recipe-list">
                    <h3 class="heading-tertiary">Directions</h3>
                    <ul class="list">
                        <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Break and beat eggs in a bowl </li>
                        <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Put the flour, sal and garlic powder in a bowl and mix properly </li>
                        <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> In another bowl (shallow bowl) put the grated coconut and bread crumbs and mix properly </li>
                        <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Bathe deshelled shrimp in flour mixture and then in coconut mixture</li>
                        <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Fry at 350 deg F for 2 - 3 minutes</li>
                        <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Serve with Coconut Shrimp Dipping Sauce</li>
                        
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
