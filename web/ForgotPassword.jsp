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
        <title>JobBoard &mdash; Website Template by Colorlib</title>
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
        <link rel="stylesheet" href="css/forgotpassword.css">
    </head>

    <body id="top">

            <div class="wrapper">
        <div class="container">

            <div class="title-section">
                <h2 class="title">Forgot Password</h2>
                <p class="para">Enter your email send link your email please check and varify if your email before
                    account create you have a link inbox. Click your link & your New password</p>
            </div>

            <form action="ForgotPasswordServlet" method="POST" class="form">
                <div class="message-response h5 " style="color: red">
                    ${inputError}
                </div>
                <div class="input-group">
                    <label for="" class="label-title">Enter your Email</label>
                    <input type="email" class="form-control" id="username_input" name="email-input"
                        placeholder="Enter your Email" required>
                    <span class="icon">&#9993;</span>
                </div>
                <div style="width: 100%; display: flex; justify-content: center;margin-bottom: 20px;">
                    <div class="select-role">
                        <span class="label" for="role">Role: </span>
                        <select class="form-control" name="role-input" id="role_input">
                            <option value="User" selected>User</option>
                            <option value="Enterprise">Enterprise</option>
                        </select>
                        <i class="fas fa-chevron-down"></i>
                    </div>
                </div>
                <div class="input-group">
                    <button class="submit-btn" type="submit" value="submit">Send your Email</button>
                </div>
            </form>

        </div>
    </div>
       
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
