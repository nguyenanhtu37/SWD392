<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!doctype html>
<html lang="en">
    <head>
        <title>JobC</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <meta name="author" content="Free-Template.co" />
        <link rel="shortcut icon" href="ftco-32x32.png">

        <link rel="stylesheet" href="css/custom-bs.css">
        <link rel="stylesheet" href="css/jquery.fancybox.min.css">
        <link rel="stylesheet" href="css/bootstrap-select.min.css">
        <link rel="stylesheet" href="fonts/icomoon/style.css">
        <link rel="stylesheet" href="fonts/line-icons/style.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/animate.min.css">

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
                        <div class="site-logo col-6"><a href="index.jsp">JobC</a></div>


                        <nav class="mx-auto site-navigation">
                            <ul class="site-menu js-clone-nav d-none d-xl-block ml-0 pl-0">
                                <a href="https://nguyenanhtu37.github.io/PluginMessenger/plugin.html" style="padding-right: 500px; color: white; font-weight: bold">Chat</a>

                            </ul>
                        </nav>

                        <div class="right-cta-menu text-right d-flex aligin-items-center col-6">
                            <div class="ml-auto">

                                <div class="dropdown d-none d-lg-inline-block">
                                    <nav>

                                        <!--<ul>-->
                                        <!--<a href="https://nguyenanhtu37.github.io/PluginMessenger/plugin.html" style="padding-right: 500px; color: white; font-weight: bold">Chat</a>-->
                                        <!--</ul>-->
                                        <!--</nav>-->
                                        <a class="btn btn-primary border-width-2  dropdown-toggle" href="SignUpServlet">Sign Up</a>

                                </div>
                                <div class="dropdown d-none d-lg-inline-block">
                                    <a class="btn btn-primary border-width-2  dropdown-toggle" href="LoginServlet">Login</a>

                                </div>
                            </div>
                            <a href="#" class="site-menu-toggle js-menu-toggle d-inline-block d-xl-none mt-lg-2 ml-3"><span class="icon-menu h3 m-0 p-0 mt-2"></span></a>
                        </div>

                    </div>
                </div>
            </header>

            <!-- HOME -->
            <section class="home-section section-hero overlay bg-image" style="background-image: url('images/hero_1.jpg'); "
                     id="home-section">

                <div class="container scroll" style="overflow-y:scroll;">
                    <div class="row justify-content-center">
                        <div class="h-25 col-md-12 align-items-end">

                        </div>
                        <div class="col-md-12 align-items-end">
                            <div class="mb-5 text-center">
                                <h1 class="text-white font-weight-bold">Job Search Platform <strong>JobC - Job Connection</strong></h1>
                                <p>The easiest way to connect Employer and Job Seeker!</p>
                            </div>
                        </div>
                        <form action="SearchIndex" method="POST" class="search-jobs-form">
                            <div class="row mb-5">
                                <div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
                                    <input name ="search-input" type="text" class="form-control form-control-lg" placeholder="Job title, Company...">
                                </div>
                                <div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
                                    <input name ="location-input" type="text" class="form-control form-control-lg" placeholder="Location">
                                </div>
                                <div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
                                    <select name="type-input" class="selectpicker" data-style="btn-white btn-lg" data-width="100%" data-live-search="true"
                                            title="Select Job Type">
                                        <option value="parttime">Part Time</option>
                                        <option value="fulltime" >Full Time</option>
                                        <option value="remote" >Remote</option>
                                    </select>
                                </div>
                                <div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
                                    <button type="submit" class="btn btn-primary btn-lg btn-block text-white btn-search"><span
                                            class="icon-search icon mr-2"></span>Search Job</button>
                                </div>
                            </div>
                        </form>
                        <c:forEach items="${jobss}" var="job">
                            <div class="col-md-12 align-items-start">
                                <div class="mb-5 border rounded" style="background-color: whitesmoke; color: black;">
                                    <div class="p-3 border rounded">
                                        <form action="PostJobServlet" class="px-3 px-md-5 py-1 py-md-3 rounded" method="post">
                                            <a href="ViewJobDetailIndex?id=${job.jobId}" class=" possion text-black mb-5 pb-2 text-capitalize" style="font-size: 50px;font-weight: bold;">${job.title}</a>
                                            <h3 class="text-black mb-2 border-bottom pb-2 text-capitalize">${job.enterName}</h3>

                                            <div class="p-1">
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="row form-group">
                                                            <label for="name" class="col-4 col-form-label text-capitalize">location</label>
                                                            <div class="col-sm-8">
                                                                ${job.location}
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row align-items-center mb-5">
                                                    <div class="col-lg-2">
                                                        <a href="LoginServlet" type="submit" class="btn btn-block btn-primary btn-md">Apply</a>
                                                    </div>
                                                </div>


                                            </div>

                                        </form>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>

                    </div>
                </div>


            </section>
            <section id="#next" class="py-5 bg-image overlay-primary fixed overlay" style="background-image: url('images/hero_1.jpg');" >
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-md-8">
                            <h2 class="text-white">Looking For A Job?</h2>
                            <p class="mb-0 text-white lead">Please sign up an account to have a full experiences!`  </p>
                        </div>
                        <div class="col-md-3 ml-auto">
                            <a href="SignUpServlet" class="btn btn-warning btn-block btn-lg">Sign Up</a>
                        </div>
                    </div>
                </div>
            </section>


            <section class="site-section py-4">
                <div class="container">

                    <div class="row align-items-center">
                        <div class="col-12 text-center mt-4 mb-5">
                            <div class="row justify-content-center">
                                <div class="col-md-7">
                                    <h2 class="section-title mb-2">Company We've Cooperated</h2>
                                    <!--<p class="lead">Porro error reiciendis commodi beatae omnis similique voluptate rerum ipsam fugit mollitia ipsum facilis expedita tempora suscipit iste</p>-->
                                </div>
                            </div>

                        </div>
                        <div class="col-6 col-lg-3 col-md-6 text-center">
                            <img src="images/logo_mailchimp.svg" alt="Image" class="img-fluid logo-1">
                        </div>
                        <div class="col-6 col-lg-3 col-md-6 text-center">
                            <img src="images/logo_paypal.svg" alt="Image" class="img-fluid logo-2">
                        </div>
                        <div class="col-6 col-lg-3 col-md-6 text-center">
                            <img src="images/logo_stripe.svg" alt="Image" class="img-fluid logo-3">
                        </div>
                        <div class="col-6 col-lg-3 col-md-6 text-center">
                            <img src="images/logo_visa.svg" alt="Image" class="img-fluid logo-4">
                        </div>

                        <div class="col-6 col-lg-3 col-md-6 text-center">
                            <img src="images/logo_apple.svg" alt="Image" class="img-fluid logo-5">
                        </div>
                        <div class="col-6 col-lg-3 col-md-6 text-center">
                            <img src="images/logo_tinder.svg" alt="Image" class="img-fluid logo-6">
                        </div>
                        <div class="col-6 col-lg-3 col-md-6 text-center">
                            <img src="images/logo_sony.svg" alt="Image" class="img-fluid logo-7">
                        </div>
                        <div class="col-6 col-lg-3 col-md-6 text-center">
                            <img src="images/logo_airbnb.svg" alt="Image" class="img-fluid logo-8">
                        </div>
                    </div>
                </div>
            </section>


            <section class="bg-light pt-5 testimony-full">

                <div class="owl-carousel single-carousel">


                    <div class="container">
                        <div class="row">
                            <div class="col-lg-6 align-self-center text-center text-lg-left">
                                <blockquote>
                                    <p>&ldquo;Loosed as if when the chosen one is easy to refuse, they do not know the troubles of the accusers, the pains of the free one drive it back into the pain of labors in ways that reject the pleasures of pains and pleasures.&rdquo;</p>
                                    <p><cite> &mdash; Corey Woods, @Dribbble</cite></p>
                                </blockquote>
                            </div>
                            <div class="col-lg-6 align-self-end text-center text-lg-right">
                                <img src="images/person_transparent_2.png" alt="Image" class="img-fluid mb-0">
                            </div>
                        </div>
                    </div>

                    <div class="container">
                        <div class="row">
                            <div class="col-lg-6 align-self-center text-center text-lg-left">
                                <blockquote>
                                    <p>&ldquo;Loosed as if when the chosen one is easy to refuse, they do not know the troubles of the accusers, the pains of the free one drive it back into the pain of labors in ways that reject the pleasures of pains and pleasures.&rdquo;</p>
                                    <p><cite> &mdash; Chris Peters, @Google</cite></p>
                                </blockquote>
                            </div>
                            <div class="col-lg-6 align-self-end text-center text-lg-right">
                                <img src="images/person_transparent.png" alt="Image" class="img-fluid mb-0">
                            </div>
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
                                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart text-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
                                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></small></p>
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

        <script src="js/bootstrap-select.min.js"></script>

        <script src="js/custom.js"></script>


    </body>
</html>

