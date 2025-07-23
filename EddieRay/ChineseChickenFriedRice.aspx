<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChineseChickenFriedRice.aspx.cs" Inherits="EddieRay.ChineseChickenFriedRice" %>

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

    <title>Eddie Ray Recipes: Chinese: Chicken Fried Rice</title>
</head>
<body>
    <form id="chickenFriedRice" runat="server">
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
            <section class="section-recipeDirections" runat="server">

                <div class="container">
                    <span class="subheading padding-up-xl margin-bottom-sm">Chinese: Chicken Fried Rice</span>
                </div>
                <div class="container grid recipegrid--2--cols">
               
                        <div class="recipe">
                            <div >

                                <img src="img/ChineseChickenFriedRice.jpg" class="recipe-img" alt="Chinese: Chicken Fried Rice"/>
                                <br />
                                <p class="recipe-title padding-up-md">Ingredients</p>
                        
                                <div class="ingredient-content margin-left-sm">
                                   
                                    <label for="friedRiceScaleValue">Please select portion size:</label>
                                    <div class="gap-md" >
                                        <input type="number" class="scale" runat="server" id="friedRiceScaleValue" min="1" max="100" style="width:fit-content" />
                                        <asp:Button runat="server" class="btn btn--form scale margin-left-sm btn--recipe" ID="btnFriedRiceConfirm" Text="Confirm" OnClick="btnFriedRiceConfirm_Click" />
                                    </div>
                                    <br />
                                    
                                    <ul runat="server" class="direction-ingredients"  >
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" id="rice" class="noBox" value="1 cup(s) raw jasmin rice" readonly="true" /></li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" id="eggs" class="noBox" readonly="true"  value="3 eggs, whisked" /> </li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" id="butter" class="noBox" readonly="true"  value="3.5 Tbs butter" /></li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" id="chicken" readonly="true"  value="1 chicken breasts, diced" /></li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true"  id="salt1" value="1 tsp salt" /></li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" id="msg" readonly="true"  value="1 tsp MSG"  /></li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" id="sesame" readonly="true"  value="1 Tbs sesame oil" /></li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" id="avocado" readonly="true"  value="1 Tbs avocado oil" /> </li>
                                    </ul>

                                    <br/>
                                    <span class="tag">Veggies:</span>
                                    <ul runat="server" class="direction-ingredients">
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="carrot" value="1 medium carrot, peeled and diced" /> </li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="peas" value="0.25 cup(s) frozen peas" /></li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="greenOnions" value="3 green onions, thinly sliced" /> </li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="salt2" value="1 tsp salt" /> </li>
                                    </ul>
                                    <br/>
                                    <span class="tag">Rice Sauce:</span>
                                    <ul runat="server" class="direction-ingredients">
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="ginger" value="1 Tbs ginger, freshly ground" /></li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="brownSugar" value="0.25 cup(s) brown sugar" /></li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="vinegar" value="1 tsp vinegar" /></li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="soySauce" value="1 Tbs light soy sauce" /> </li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="oysterSauce" value="1 Tbs oyster sauce" /></li>
                                        <li runat="server" class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="garlic" value="3 garlic cloves, minced" /></li>
                                    </ul>
                                    <br/>
                                    
                                </div>
                            </div>
                        </div>



                        <div class="recipe-list">
                            <h3 class="heading-tertiary">Directions</h3>
                            <ul class="list">
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Boil 1 cup raw jasmin rice in 1.5 cups water with 1 Tbs MSG</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Let it dry for at least 6 hours</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Heat 1/2 Tbs butter in large pan (med/high heat)</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Scramble eggs, then transfer to plate</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Cook chicken breasts in skillet with 1 Tbs butter, soy sauce, 1 tsp msg and transfer to plate</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Put 1 Tablespoon butter in skillet</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Saute onions, peas, carrots in skillet for 5 min until soft</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Plate it and wipe skillet thoroughly</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Turn heat to high (really hot) and add 1 Tbs of butter & 1 Tbs avocado oil to skillet </li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Add rice and “Rice Sauce” mix to skillet</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Fry for 3 - 5 minutes while stirring rice constantly</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Add eggs & veggies and mix</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Remove from heat </li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Add sesame oil </li>
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
                        <a class="footer-link" href="tel:860-337-9339">860-337-9339</a><br />
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
