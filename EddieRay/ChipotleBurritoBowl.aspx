<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChipotleBurritoBowl.aspx.cs" Inherits="EddieRay.ChipotleBurritoBowl" %>

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

    <title>Eddie Ray Recipes: Chipotle Burrito Bowl</title>
</head>
<body class="body">
    <form id="chipotleBurritoBowl" runat="server">
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
                    <span class="subheading padding-up-xl margin-bottom-sm">Chipotle Burrito Bowl</span>
                </div>
                <div class="container grid recipegrid--2--cols">
               
                        <div class="recipe">
                            <div  action="#">

                                <img src="img/ChipotleBurritoBowl.jpg" class="recipe-img" alt="Chipotle Burrito Bowl"/>
                                <br />
                                <p class="recipe-title padding-up-md">Ingredients</p>
                        
                                <div class="ingredient-content margin-left-sm">
                                    <label for="burritoScaleValue">Please select portion size:</label>
                                    <div class="Scale" >
                                        <input type="number" class="scale" runat="server" id="burritoScaleValue" min="1" max="100" style="width:fit-content" />
                                        <asp:Button runat="server" class="btn btn--form margin-left-sm scale btn--recipe" ID="btnBurritoConfirm" Text="Confirm" OnClick="btnBurritoConfirm_Click"  />
                                    </div>

                                    <br />
                                    <span class="tag">Barbacoa meat:</span>
                                    <ul class="direction-ingredients">
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="brisket" value="2 lbs brisket (fatty)" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="beefCheeks" value="2 lbs beef cheeks" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="garlicCloves1" value="8 garlic cloves, minced" /> </li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="bayLeaves" value="3 bay leaves" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="cinnamonStick" value="1 cinnamon stick" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="guajilloChillies" value="4 guajillo chilies" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="groundCumin" value="2 tsp ground cumin" /> </li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="beefStock" value="2 cups of beef stock" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="limes" value="2 limes, juiced" /> </li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" value="salt to taste" /></li>
                                    </ul>
                                    <br/>
                                    <span class="tag">Pinto beans:</span>
                                    <ul class="direction-ingredients">
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="pintoBeans" value="1 lbs uncooked pinto beans" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="pepperBacon" value="6 oz black pepper bacon" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="chorizo" value="0.5 lbs chorizo" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="cherryTomatoes" value="1 cup(s) cherry tomatoes" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="onion" value="1 onion, finely diced" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="garlicCloves2" value="4 garlic cloves, minced" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="serranoChillies" value="2 serrano chillies, thinly sliced" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="oregano" value="1 tsp oregano" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="smokedPaprika" value="2 tsp smoked paprika" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="chipotlePowder" value="1 tsp chipotle powder" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="groundCinnamon" value="0.25 tsp ground cinnamon" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="chickenStock" value="2 cup(s) of chicken stock" /></li>

                                    </ul>
                                    <br/>
                                    <span class="tag">Rice:</span>
                                    <ul class="direction-ingredients">
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="mediumGrainRice" value="2 cups of medium grain rice" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="water" value="2 cups of water" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="unsaltedButter" value="0.33 cup unsalted butter" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="lime" value="1 lime, zest and juice" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="choppedCillantro" value="0.5 cup(s) fresh chopped cilantro" /></li>
                                    </ul>
                                    <br/>
                                    <span class="tag">Green salsa:</span>
                                    <ul class="direction-ingredients">
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/> <input runat="server" class="noBox" readonly="true" id="garlicCloves3" value="7 garlic cloves, minced" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="tomatillos" value="1 lbs tomatillos, husked" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="sweetOnion" value="0.5 sweet onion" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="jalepenos" value="2 jalepenos" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="cilantroBunch" value="0.5 bunch cilantro" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="limeJuice" value="0.33 cup(s) lime juice" /></li>
                                    </ul>
                                    <br/>
                                    <span class="tag">Assembly:</span>
                                    <ul class="direction-ingredients">
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="mozzarellaCheese" value="1 cup(s) mozarella cheese, grated" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="mjackCheese" value="1 cup(s) monterey jack cheese, grated" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="avocados" value="2 avocados, thinly sliced" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="cilantroGarnish" value="Cilantro for garnish" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="sourCream" value="0.75 cup(s) sour cream" /></li>
                                        <li class="recipe-ingredient"><img src="img/chef icon img.JPG" class="icon-img"/><input runat="server" class="noBox" readonly="true" id="hotSauce" value="Hot sauce as desired" /> </li>
                                    </ul>
                                </div>
                            </div>
                        </div>



                        <div class="recipe-list">
                            <h3 class="heading-tertiary">Directions</h3>
                            <ul class="list">
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Cut beef into chunks </li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> And sear all sides in oil (3 min per side)</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Then add all chunks into skillet</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Add garlic, bay leaves, cinnamon stick, chilies, cumin, stock, lime juice</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Cover and put in oven at 350 deg for 3 hours. (Add broth as needed)</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Remove from oven and shred. Then set aside</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Place uncooked beans in a boiling pot of water to boil (1 hour) until tender</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Leave to boil 1 hour (until tender) and set aside</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> In as small pot, add bacon and pepper and stir until browned</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Add chorizo, until fully cooked </li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Add cherry tomatoes and salt. Stir until juicy</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Add onions, jalapeño peppers, garlic cloves, salt and cook for 3 min</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Add paprika, oregano, cinnamon, chipotle powder</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Add chicken stock then add beans and salt to taste and stir </li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Then set aside</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Add rice to boiling water and let it cook until it's done and dry</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Then add lime, zest, butter and cilantro to the rice and mix them all properly</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Then set aside</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> For the salsa, add tomatillos, onion, jalapeno peppers, and char them in a skillet</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Then cover them to allow to steam</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Throw everything in a blender (except the stems of the jalapeño peppers) and blend</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> Add salt to taste</li>
                                <li class="list-item"><img src="img/chef icon img.JPG" class="icon-img"/> And serve everything together in a bowl</li>
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
