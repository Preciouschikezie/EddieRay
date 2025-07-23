<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="EddieRay.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="" />
    <link href="https://fonts.googleapis.com/css2?family=Andika:wght@400;700&display=swap" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous" />

    <link rel="stylesheet" href="General.css" />
    <link rel="stylesheet" href="Style.css" />
    <link rel="stylesheet" href="Queries.css" />

    <title>Eddie Ray Recipes: Sign Up</title>
</head>
<body>
    <form id="form1" runat="server">
        
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
                        <li class="nav-item"><a class="main-nav-link" href="SignIn.aspx">Sign In</a></li>
                    </ul>
                    <br />
                </div>
            </nav>
    <main>
        <section class="section-signup">
            <div class="container">
                <span class="subheading padding-up-xl padding-up-xxl margin-bottom-sm">Sign up</span>
                <h2 class="heading-secondary">
                    Bring the restaurant home without
                    breaking the bank!
                </h2>
            </div>
            <div class="container grid grid--2--cols margin-bottom-md">
                <div class="pricing-plan">
                    <header class="plan-header pad">
                        <p class="plan-name">Family</p>
                        <p class="plan-text">Our one plan fits all!</p>
                    </header>
                    <div class="plan-price-band">
                        <p class="plan-price"><span>$</span>25</p>
                        <p class="plan-text pricing-text">Per Month</p>
                        <br/>
                    </div>
                    <ul class="list pad">
                        <li class="list-item"><ion-icon class="check-icon" name="checkmark-outline"></ion-icon><span>Over 100 recipes</span> </li>
                        <li class="list-item"><ion-icon class="check-icon" name="checkmark-outline"></ion-icon><span>New recipes added weekly</span> </li>
                        <li class="list-item"><ion-icon class="check-icon" name="checkmark-outline"></ion-icon><span>Scalable recipes</span> </li>
                        <li class="list-item"><ion-icon class="check-icon" name="checkmark-outline"></ion-icon><span>Save money</span></li>
                        <li class="list-item"><ion-icon class="check-icon" name="checkmark-outline"></ion-icon><span>Bring the restaurant home!</span></li>
                    </ul>
                    <div class="plan-sign-up">
                        <a href="CreateAccount.aspx" class="btn btn---cta">Get Started</a>
                    </div>
                </div>
                <div class="plan-recipes">
                    <h3 class="heading-tertiary padding-left-sm padding-up-md">You get access to all our recipes:</h3>
                    <ul class="list">
                        <li class="list-item padding-left-md"><img src="img/chef icon img.JPG" class="icon-img" /> Chinese: General Tso Chicken</li>
                        <li class="list-item padding-left-md"><img src="img/chef icon img.JPG" class="icon-img" /> Chinese: Chicken Fried Rice</li>
                        <li class="list-item padding-left-md"><img src="img/chef icon img.JPG" class="icon-img" /> Chinese: Sweet 'n' Sour Chicken</li>
                        <li class="list-item padding-left-md"><img src="img/chef icon img.JPG" class="icon-img" /> Miso Glazed Salmon</li>
                        <li class="list-item padding-left-md"><img src="img/chef icon img.JPG" class="icon-img" /> Cajun Pasta</li>
                        <li class="list-item padding-left-md"><img src="img/chef icon img.JPG" class="icon-img" /> Home Fries</li>
                        <li class="list-item padding-left-md"><img src="img/chef icon img.JPG" class="icon-img" /> Pepper Steak</li>
                        <li class="list-item padding-left-md"><img src="img/chef icon img.JPG" class="icon-img" /> Spicy Asian BBQ Rib Sandwich</li>
                        <li class="list-item padding-left-md"><img src="img/chef icon img.JPG" class="icon-img" /> Sage Fried Chicken and Waffles </li>
                        <li class="list-item padding-left-md"><img src="img/chef icon img.JPG" class="icon-img" /> Apple Walnut Salad</li>
                        <li class="list-item padding-left-md"><img src="img/chef icon img.JPG" class="icon-img" /> Shepherds Pie  </li>
                        <li class="list-item padding-left-md"><img src="img/chef icon img.JPG" class="icon-img" /> Chipotle Burrito Bowl</li>
                        <li class="list-item padding-left-md"><img src="img/chef icon img.JPG" class="icon-img" /> And more...</li>

                    </ul>
                </div>
            </div>
            <div class="container grid">
                <aside class="plan-details">
                    Price includes all applicable taxes. You can cancel at any time.
                </aside>

            </div>
            <span class="subheading margin-bottom-md center-text">Plan benefits:</span>
            <div class="container grid grid--4--cols">
                <div class="feature">
                    <ion-icon class="feature-icon" name="cash-outline"></ion-icon>
                    <p class="feature-title">Save money!</p>
                    <p class="feature-text">
                        You don't have to spend so much in restaurants, we have recipes that
                        are easy and come out tastier.
                    </p>
                </div>
                <div class="feature">
                    <ion-icon class="feature-icon" name="heart-outline"></ion-icon>
                    <p class="feature-title">Family bonding</p>
                    <p class="feature-text">
                        You get to have fun making and eating delicious meals with your loved ones,
                        building lasting bonds.
                    </p>
                </div>
                <div class="feature">
                    <ion-icon class="feature-icon" name="scale-outline"></ion-icon>
                    <p class="feature-title">Scalable recipes</p>
                    <p class="feature-text">
                        Our recipes are scalable. So, if you want to make bigger or smaller portions,
                        we got you covered!
                    </p>
                </div>
                <div class="feature">
                    <ion-icon class="feature-icon" name="add-outline"></ion-icon>
                    <p class="feature-title">New recipes</p>
                    <p class="feature-text">
                        Every week, we add new recipes. So, you can always try something new
                        if you want to.
                    </p>
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
                    Copyright &copy; <span class="year">2023</span>  by Eddie Ray, Inc.
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
    
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule="nomodule" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
  
   <script defer="defer" src="Script.js"></script>
    </form>
</body>
</html>
