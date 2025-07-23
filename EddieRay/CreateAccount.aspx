<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="EddieRay.GetStarted" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin=""/>
    <link href="https://fonts.googleapis.com/css2?family=Andika:wght@400;700&display=swap" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous" />

    <link rel="stylesheet" href="General.css" />
    <link rel="stylesheet" href="Style.css" />
    <link rel="stylesheet" href="Queries.css" />

    <title>Eddie Ray Recipes: Create an account</title></head>
<body>
    <form id="createAccount" runat="server">
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
                        <li class="nav-item"><a class="main-nav-link" href="SignIn.aspx">Sign In</a></li>
                    </ul>
                </div>
            </nav>
    <main>
        <section class="section-account">
            <div class="container">
                <span class="subheading padding-up-xl padding-up-xxl margin-bottom-sm ">Create an account</span>
            </div>
            <div class="container">
                <div class="cta">
                    <div class="account-text-box">
                        <h2 class="heading-secondary">Bring the restaurant home!</h2>
                        <p class="account-text">
                            You will have access to over 100 recipes,
                            plus new recipes added every week!
                        </p>
                        <div class="account-form" action="#">
                           
                            <div >
                                <label class="required" for="fullName">Username:</label>
                                <input id="fullName" runat="server" type="text" placeholder="jon Snow" />
                            </div>
                            <div>
                                <label class="required" for="emailAddress">Email Address:</label>
                                <input runat="server" id="emailAddress" type="text" placeholder="you@example.com" />
                            </div>
                            <div>
                                <label class="required" for="userPassword">Password:</label>
                                <input runat="server" id="userPassword" type="password" />
                            </div>
                            <div>
                                <label class="required" for="userPassword2">Confirm Password:</label>
                                <input runat="server" id="userPassword2" type="password" />
                            </div>
                            <div>
                                <label class="required" for="selectWhere">Where did you hear about us?</label>
                                <select runat="server" id="selectWhere" >
                                    <option value="">Please select one option:</option>
                                    <option value="friends">Friends and family</option>
                                    <option value="youtube">YouTube</option>
                                    <option value="facebook">Facebook</option>
                                    <option value="instagram">Instagram</option>
                                    <option value="other">Other</option>

                                </select>
                            </div>

                            <asp:Button class="btn btn--form" runat="server" ID="btnSignUp" Text="Sign up now" OnClick="btnSignUp_Click"></asp:Button>
                        </div>
                    </div>
                    <div class="account-img-box" role="img" aria-label="Woman having fun cooking with her man"></div>
                </div>
                <div class="account-text-box padding-up-md" runat="server" id="confirmSignUp" visible="false">
                    <p class="account-text  confirmAccount-text-box" style="font-weight:400">
                            Your account has been successfully created! <br />
                        Click <a class="main-nav-link" href="SignIn.aspx"><strong>here</strong></a> to access our 100+ recipes!
                        </p>
                </div>
                 <div class="alert alert-danger account-text" id="alertRequiredFields" runat="server" role="alert" style="width:auto" visible="false">
                    <strong>All fields with <span style="color: red; font-weight: bold">*</span> should NOT be left empty.</strong>
                    <button type="button" runat="server" class="close" data-dismiss="alert" id="btnCloseWarning" arial-label="Close">
                        <span>&times</span>
                    </button>
                 </div>
                <div class="alert alert-danger account-text" id="alertPassword" runat="server" role="alert" style="width:auto; color:red" visible="false">
                    <strong>Please ensure your passwords match</strong>
                    <button type="button" runat="server" class="close" data-dismiss="alert" id="btnClosePasswordWarning" arial-label="close">
                        <span>&times</span>
                    </button>
                </div>
                <div class="alert alert-danger account-text" id="alertPasswordNum" runat="server" role="alert" style="width:auto; color:red" visible="false">
                    <strong>Passwords must be at least 8 characters</strong>
                    <button type="button" runat="server" class="close" data-dismiss="alert" id="btnClosePassNumWarning" arial-label="close">
                        <span>&times</span>
                    </button>
                </div>
                <div class="alert alert-danger account-text" id="alertEmail" runat="server" role="alert" style="width:auto; color:red" visible="false">
                    <strong>Please enter a valid email address</strong>
                    <button type="button" runat="server" class="close" data-dismiss="alert" id="btnCloseEmailWarning" arial-label="close">
                        <span>&times</span>
                    </button>
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

    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule="nomodule" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
  
   <script defer="defer" src="Script.js"></script>
</form>
</body>
</html>
