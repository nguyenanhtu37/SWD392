<%-- 
    Document   : signup
    Created on : Oct 1, 2023, 3:20:27 PM
    Author     : ASUS
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <link rel="stylesheet" href="css/register.css">
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
                <form action="SignUpServlet" method="POST">
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
                            <input type="email" class="input" id="username_input" name="email-input" required>
                            <span class="message-form"></span>
                        </div>
                    </div>
                    <div class="input-div pass">
                        <div class="i">
                            <i class="fas fa-lock"></i>
                        </div>
                        <div class="div">
                            <h5>Password</h5>
                            <input type="password" class="input" id="pass_input" name="pass-input" required>
                            <span class="message-form"></span>
                        </div>
                    </div>
                    <div class="input-div pass">
                        <div class="i">
                            <i class="fas fa-lock"></i>
                        </div>
                        <div class="div">
                            <h5>Confirm Password</h5>
                            <input type="password" class="input" id="confirmpass_input" name="confirm-input">
                        </div>
                    </div>
                    <div style="width: 100%; display: flex; justify-content: center;">
                        <div class="select-role">
                            <span class="label" for="role">Role: </span>
                            <select class="form-control" name="role-input" id="role_input">
                                <option value="User" selected>User</option>
                                <option value="Enterprise">Enterprise</option>
                            </select>
                            <i class="fas fa-chevron-down"></i>
                        </div>
                    </div>
                    <input type="submit" class="btn" value="Sign Up">
                </form>
            </div>
        </div>
        <script type="text/javascript" src="js/register.js.js"></script>

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
        <script>
            const signUpButton = document.getElementById('sign-up-btn');
            const container = document.getElementById('container');

            const messageResponse = document.querySelector(".message-response");

            const usernameInput = document.getElementById("username_input")
            const passwordInput = document.getElementById("pass_input")
            const confirmPassInput = document.getElementById("confirmpass_input")
            const roleInput = document.getElementById("role_input")

            let message = "";



            const exception = {
                missInput: "Please fill all the input",
                missConfirmPassword: "Confirm incorrect password!"
            }

            function error(message) {
                messageResponse.classList.remove("d-none")
                messageResponse.innerHTML = message
            }
            function valid() {
                messageResponse.classList.add("d-none")
                messageResponse.innerHTML = ""
            }

            confirmPassInput.addEventListener("input", function (e) {
                if (passwordInput.value !== confirmPassInput.value) {
                    error(exception.missConfirmPassword)
                } else {
                    valid()
                }
            })

            const form = document.querySelector("form");

            form.addEventListener("submit", function (e) {
                e.preventDefault();

                if (
                        usernameInput.checkValidity() &&
                        passwordInput.checkValidity() &&
                        confirmPassInput.checkValidity() &&
                        roleInput.checkValidity() &&
                        usernameInput.value &&
                        passwordInput.value &&
                        confirmPassInput.value &&
                        roleInput.value
                        ) {
                    valid();
                    form.submit()
                } else {
                    error(exception.missInput);
                }
            });



        </script>


    </body>

</html>
