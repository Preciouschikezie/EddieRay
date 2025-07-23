<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrabStuffedMushrooms.aspx.cs" Inherits="EddieRay.CrabStuffedMushrooms" %>

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

    <title>Eddie Ray Recipes: Crab Stuffed Mushrooms</title>
</head>
<body>
    <form id="crabStuffedMushrooms" runat="server">
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
                    <span class="subheading padding-up-xl margin-bottom-sm">Crab Stuffed Mushrooms</span>
                </div>
                 <div class="container grid recipegrid--2--cols">
               
                <div class="recipe">
                    <div  action="#">

                        <img src="img/CrabStuffedMushrooms.jpg" class="recipe-img" alt="Crab Stuffed Mushrooms"/>
                        <br />
                        <p class="recipe-title padding-up-md">Ingredients</p>
                        
                        <div class="ingredient-content margin-left-sm">
                            <label for="mushroomsScaleValue">Please select portion size:</label>
                            <div class="scale" >
                                <input type="number" class="scale" runat="server" id="mushroomsScaleValue" min="1" max="100" style="width:fit-content" />
                                <asp:Button class="btn btn--form scale margin-left-sm btn--recipe" ID="btnMushroomsConfirm" runat="server" Text="Confirm" OnClick="btnMushroomsConfirm_Click" />
                            </div>
                           
                            <br />
                            <ul class="direction-ingredients">
                                <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="largeMushrooms" value="12 large mushrooms" /></li>
                                <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="crabMeat" value="8 oz crab meat" /></li>
                            </ul>
                            
                            <br/>
                            <span class="tag">Saute Items:</span>
                            <ul class="direction-ingredients">
                                <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="mushroomStems" value="1 cup(s) of mushroom stems" /></li>
                                <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="onions" value="1 cup(s) of onions, minced" /> </li>
                                <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="parsley" value="0.5 cup(s) of parsley, chopped" /></li>
                                <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="garlicCloves" value="1 garlic clove, minced" /></li>
                            </ul>
                            <br/>
                           
                            <span class="tag">Other:</span>
                            <ul class="direction-ingredients">
                                <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="breadCrumbs" value="0.5 cup(s) panko bread crumbs" /></li>
                            </ul>
                            <br/>
                            <span class="tag">Garnish:</span>
                            <ul class="direction-ingredients">
                                <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="creamCheese" value="0.5 cup(s) cream cheese" /></li>
                                <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="parmesanCheese" value="0.5 cup(s) parmesan cheese" /></li>
                            </ul>
                           
                        </div>
                    </div>
                </div>




                <div class="recipe-list">
                    <h3 class="heading-tertiary">Directions</h3>
                    <ul class="list">
                        <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Gut the mushrooms with a pairing knife</li>
                        <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Roast them for 15-20 min in the oven with oil (315 deg)</li>
                        <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Add saute ingredients to crab meat in a small bowl and mix well</li>
                        <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Add some Old Bay Season, salt & pepper to taste</li>
                        <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Bake at 350 for 15 min on top of rack</li>
                        <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Melt Parmesan cheese in low heat </li>
                        <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Mix it with cream cheese </li>
                        <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Garnish the mixture with parsley</li>
                        <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> And Serve</li>
                        

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
