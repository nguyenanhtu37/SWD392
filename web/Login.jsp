<%-- 
    Document   : Login
    Created on : Oct 6, 2023, 1:42:37 PM
    Author     : ASUS
--%>


<!doctype html>
<html lang="en">

    <head>
        <title>JobC</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


        <link rel="stylesheet" href="css/custom-bs.css">
        <link rel="stylesheet" href="css/jquery.fancybox.min.css">
        <link rel="stylesheet" href="css/bootstrap-select.min.css">
        <link rel="stylesheet" href="fonts/icomoon/style.css">
        <link rel="stylesheet" href="fonts/line-icons/style.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/animate.min.css">
        <link rel="stylesheet" href="css/quill.snow.css">


        <!-- MAIN CSS -->
        <link rel="stylesheet" href="css/login.css">
        <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
        <script src="https://kit.fontawesome.com/a81368914c.js"></script>
    </head>

    <body id="top">

        <div id="overlayer"></div>
        <div class="loader">
            <div class="spinner-border text-primary" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>


        <img class="wave" src="images/wave.png">
        <div class="container">
            <div class="img">
                <img src="images/bg.svg">
            </div>
            <div class="login-content">
                <form action="LoginServlet" method="POST">
                    <div class="message-response h5 " style="color: red">
                        ${inputError}
                    </div>
                    <img src="images/avatar.svg">
                    <h2 class="title">Welcome JobC</h2>
                    <div class="input-div one">
                        <div class="i">
                            <i class="fas fa-user"></i>
                        </div>
                        <div class="div">
                            <h5>Email</h5>
                            <input type="email" class="input" id="username-input" name="username-login" required>
                            <span class="message-form"></span>
                        </div>
                    </div>
                    <div class="input-div pass">
                        <div class="i">
                            <i class="fas fa-lock"></i>
                        </div>
                        <div class="div">
                            <h5>Password</h5>
                            <input type="password" class="input" id="pass-input" name="pass-login" required>
                            <span class="message-form"></span>
                        </div>
                    </div>
                    <div class="content-2">
                        <div class="check-remember">
                            <input class="form-check-input" type="checkbox" value="" name="remember" value="on"
                                   id="flexCheckDefault">
                            <label class="form-check-label" for="flexCheckDefault">
                                Remember me ?
                            </label>
                        </div>
                        <a class="form-check-label" href="ForgotPasswordServlet">Forgot Password?</a>
                    </div>
                    <input type="submit" class="btn" value="Login">
                    <div class="text-center">
                        <label> Or login with</label>
                    </div>
                </form>
                <form class="bg-lgfb" action="LoginGGServlet" method="GET">
                    <input
                        href="https://accounts.google.com/o/oauth2/auth?scope=profile+email&redirect_uri=http://localhost:8080/SWP_JC/LoginGGServlet&response_type=code&client_id=311060052304-v29rma73e6ji73uaroul7b4nft79iods.apps.googleusercontent.com&approval_prompt=force"
                        type="submit" class="btn-fb" value="Login Facebook">
                </form>
                <div class="register-link">
                    <p>Dont have an account? </p>
                    <a href="#"> Register</a>
                </div>
            </div>
        </div>
        <script type="text/javascript" src="js/login.js"></script>

    </div>

    <!-- SCRIPTS -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/stickyfill.min.js"></script>
    <script src="js/jquery.fancybox.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>

    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/jquery.animateNumber.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/quill.min.js"></script>


    <script src="js/bootstrap-select.min.js"></script>

    <script src="js/custom.js"></script>



</body>

</html>