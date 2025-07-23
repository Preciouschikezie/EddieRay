<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CajunPasta.aspx.cs" Inherits="EddieRay.CajunPasta" %>

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

    <title>Eddie Ray Recipes: Cajun Pasta</title>
</head>
<body>
    <form id="cajunPasta" runat="server">
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
                    <span class="subheading padding-up-xl margin-bottom-sm">Cajun Pasta</span>
                </div>
                <div class="container grid recipegrid--2--cols">
               
                        <div class="recipe">
                            <div  action="#">

                                <img src="img/CajunPasta.jpg" class="recipe-img" alt="Cajun Pasta"/>
                                <br />
                                <p class="recipe-title padding-up-md">Ingredients</p>
                        
                                <div class="ingredient-content margin-left-sm">
                                    <label for="cajunPastaScaleValue">Please select portion size:</label>
                                    
                                    <div class="gap-md" >
                                        <input type="number" class="" runat="server" id="cajunPastaScaleValue" min="1" max="100" style="width:fit-content" />
                                        <asp:Button runat="server" class="btn btn--form scale margin-left-sm btn--recipe" ID="btnCajunPastaConfirm" Text="Confirm" OnClick="btnCajunPastaConfirm_Click" />
                                    </div>
                                    <br />
                                    <ul class="direction-ingredients">
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="chickenBreast"  value="4 boneless, skinless, chicken breast halves" /> </li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="fettuccine" value="12 oz fettuccine pasta" /> </li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="cajunSeasoning" value="2 tsp Cajun Seasoning" /> </li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="butter" value="2 Tbs butter" /></li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="greenBellPepper" value="1 green bell pepper, chopped" /> </li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="redBellPepper" value="1 red bell pepper, chopped" /> </li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="mushrooms" value="6 fresh portobello mushrooms, sliced" /> </li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="greenOnions" value="4 green onions, thinly sliced" /> </li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="heavyCream" value="1.5 cups heavy cream" /></li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="basil" value="1 tsp dried basil" /> </li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="lemonPepper" value="0.5 tsp lemon peper" /> </li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="cayennePepper" value="0.5 tsp cayenne pepper" /> </li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="salt" value="1 tsp salt" /></li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="garlicPowder" value="1 tsp garlic powder" /></li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="blackPepper" value="0.5 tsp ground black pepper" /> </li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="parmesanCheese" value="2 Tbs shredded parmesan cheese" /> </li>
                                    </ul>
                                    
                                </div>
                            </div>
                        </div>



                        <div class="recipe-list">
                            <h3 class="heading-tertiary">Directions</h3>
                            <ul class="list">
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Cut chicken into small chunks and set aside</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Chop peppers, Slice mushrooms, Chop mushrooms and set aside</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Mix basil, with lemon pepper, fine sea salt, garlic powder, and ground black pepper and set aside</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Boil large pot of water with table salt</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Add pasta and cook for 12 to 15 minutes or longer (until done)</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Drain and set aside</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Place chicken and Cajun seasoning with kosher salt in a bowl and toss to coat</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Heat Skillet to medium heat</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Add butter to skillet </li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Sauté chicken in butter until no longer pink & juices run clear (about 5 to 7 minutes)</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Remove cooked chicken from pan and set aside in a mixing bowl</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Add green & red bell peppers, sliced mushrooms & green onions to empty pan & cook for 2 to 3 minutes (med heat)</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Reduce heat to low and stir in heavy cream</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Add basil, lemon pepper, salt, garlic powder and ground black pepper and heat through on low temperature (do not boil or simmer)</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Then set aside</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Coat chicken with equal parts of cajun seasoning & cayenne pepper</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Bring pan to extreme high heat (600-750 Fahrenheit) (do not add oil)</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Chop peppers, Slice mushrooms, Chop mushrooms and set aside</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Place chicken into hot pan and allow to sizzle and blacken slightly</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Use high ventilation (if indoors) to remove smoke</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Blackening chicken is optional, if a smokeless cooking method is desired, then coat the chicken with cajun seasoning & cayenne pepper and fry for a few minutes at normal high heat and remove from pan.</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> In a large bowl, toss pasta in sauce with chicken</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Sprinkle with grated Parmesan cheese</li>
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
