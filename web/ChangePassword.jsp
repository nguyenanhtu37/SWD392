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
        <link rel="stylesheet" href="css/style.css">
    </head>

    <body id="top">

        <div id="overlayer"></div>
        <div class="loader">
            <div class="spinner-border text-primary" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>


        <div class="site-wrap">

            <div class="site-mobile-menu site-navbar-target">
                <div class="site-mobile-menu-header">
                    <div class="site-mobile-menu-close mt-3">
                        <span class="icon-close2 js-menu-toggle"></span>
                    </div>
                </div>
                <div class="site-mobile-menu-body"></div>
            </div> <!-- .site-mobile-menu -->


            <!-- NAVBAR -->
            <header class="site-navbar mt-3">
                <div class="container-fluid">
                    <div class="row align-items-center">
                        <div class="site-logo col-6"><a href="index.html">JobC</a></div>

                        <nav class="mx-auto site-navigation">
                            <ul class="site-menu js-clone-nav d-none d-xl-block ml-0 pl-0">
                                <li><a href="index.html" class="nav-link">Home</a></li>
                                <li><a href="about.html">About</a></li>
                                <li class="has-children">
                                    <a href="job-listings.html">Job Listings</a>
                                    <ul class="dropdown">
                                        <li><a href="job-single.html">Job Single</a></li>
                                        <li><a href="post-job.html">Post a Job</a></li>
                                    </ul>
                                </li>
                                <li class="has-children">
                                    <a href="services.html">Pages</a>
                                    <ul class="dropdown">
                                        <li><a href="services.html">Services</a></li>
                                        <li><a href="service-single.html">Service Single</a></li>
                                        <li><a href="blog-single.html">Blog Single</a></li>
                                        <li><a href="portfolio.html">Portfolio</a></li>
                                        <li><a href="portfolio-single.html">Portfolio Single</a></li>
                                        <li><a href="testimonials.html">Testimonials</a></li>
                                        <li><a href="faq.html">Frequently Ask Questions</a></li>
                                        <li><a href="gallery.html">Gallery</a></li>
                                    </ul>
                                </li>
                                <li><a href="blog.html">Blog</a></li>
                                <li><a href="contact.html">Contact</a></li>
                                <li class="d-lg-none"><a href="SignUpServlet">Sign Up</a></li>
                                <li class="d-lg-none"><a href="LoginServlet">Log In</a></li>
                            </ul>
                        </nav>

                        <div class="right-cta-menu text-right d-flex aligin-items-center col-6">
                            <div class="ml-auto">
                                <a href="SignUpServlet" class="btn btn-primary border-width-2 d-none d-lg-inline-block"><span
                                        class="mr-2 icon-lock_outline"></span>Sign Up</a>
                                <a href="LoginServlet" class="btn btn-primary border-width-2 d-none d-lg-inline-block"><span
                                        class="mr-2 icon-lock_outline"></span>Log In</a>
                            </div>
                            <a href="#" class="site-menu-toggle js-menu-toggle d-inline-block d-xl-none mt-lg-2 ml-3"><span
                                    class="icon-menu h3 m-0 p-0 mt-2"></span></a>
                        </div>

                    </div>
                </div>
            </header>

            <!-- HOME -->
            <section class="section-hero overlay inner-page bg-image" style="background-image: url('images/hero_1.jpg');"
                     id="home-section">
                <div class="container">
                    <div class="row">
                        <div class="col-md-7">
                            <h1 class="text-white font-weight-bold">Sign Up/Login</h1>
                            <div class="custom-breadcrumbs">
                                <a href="#">Home</a> <span class="mx-2 slash">/</span>
                                <span class="text-white"><strong>Log In</strong></span>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="site-section">
                <div class="container">
                    <div class="row">
                        <div class="offset-3 col-lg-6 mb-5">
                            <h2 class="mb-4">Change New Password</h2>
                            <form action="ChangePasswordServlet" method="POST" class="p-4 border rounded">                                
                                <h2 clChangePasswordServletass="mb-4 text-center">Enter Password</h2>
                                <div class="message-response h5 " style="color: red">
                                    ${inputError}
                                </div>
                                <div class="form-group mb-3">
                                    <label class="label" for="">Enter New Password</label>
                                    <input type="password" class="form-control" id="pass_input" name="pass-input" placeholder="New Password">
                                    <span class="message-form"></span>
                                </div>
                                <div class="form-group mb-2">
                                    <label class="label" for="">Enter Confirm password</label>
                                    <input type="password" class="form-control" id="confirmpass_input" name="confirm-input"
                                           placeholder="Confirm New Password">
                                </div>                                
                                <div class="row form-group">
                                    <div class="col-md-12">                                      
                                        <input type="submit" value="Submit" class="btn px-4 btn-primary text-white">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </section>



            <footer class="site-footer">

                <a href="#top" class="smoothscroll scroll-top">
                    <span class="icon-keyboard_arrow_up"></span>
                </a>

                <div class="container">
                    <div class="row mb-5">
                        <div class="col-6 col-md-3 mb-4 mb-md-0">
                            <h3>Search Trending</h3>
                            <ul class="list-unstyled">
                                <li><a href="#">Web Design</a></li>
                                <li><a href="#">Graphic Design</a></li>
                                <li><a href="#">Web Developers</a></li>
                                <li><a href="#">Python</a></li>
                                <li><a href="#">HTML5</a></li>
                                <li><a href="#">CSS3</a></li>
                            </ul>
                        </div>
                        <div class="col-6 col-md-3 mb-4 mb-md-0">
                            <h3>Company</h3>
                            <ul class="list-unstyled">
                                <li><a href="#">About Us</a></li>
                                <li><a href="#">Career</a></li>
                                <li><a href="#">Blog</a></li>
                                <li><a href="#">Resources</a></li>
                            </ul>
                        </div>
                        <div class="col-6 col-md-3 mb-4 mb-md-0">
                            <h3>Support</h3>
                            <ul class="list-unstyled">
                                <li><a href="#">Support</a></li>
                                <li><a href="#">Privacy</a></li>
                                <li><a href="#">Terms of Service</a></li>
                            </ul>
                        </div>
                        <div class="col-6 col-md-3 mb-4 mb-md-0">
                            <h3>Contact Us</h3>
                            <div class="footer-social">
                                <a href="#"><span class="icon-facebook"></span></a>
                                <a href="#"><span class="icon-twitter"></span></a>
                                <a href="#"><span class="icon-instagram"></span></a>
                                <a href="#"><span class="icon-linkedin"></span></a>
                            </div>
                        </div>
                    </div>

                    <div class="row text-center">
                        <div class="col-12">
                            <p class="copyright"><small>
                                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                    Copyright &copy;
                                    <script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made
                                    with <i class="icon-heart text-danger" aria-hidden="true"></i> by <a href="https://colorlib.com"
                                                                                                         target="_blank">Colorlib</a>
                                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                </small></p>
                        </div>
                    </div>
                </div>
            </footer>

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
                        passwordInput.value &&
                        confirmPassInput.value
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
