<%-- Document : ViewCVSentUser Created on : Nov 8, 2023, 5:56:21 PM Author : thean --%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@page contentType="text/html" pageEncoding="UTF-8" %>
            <jsp:useBean id="JobPost" class="java.util.ArrayList" scope="session" />
            <!doctype html>
            <html lang="en">

            <head>
                <title>JobBoard &mdash; Website Template by Colorlib</title>
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
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
                    integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
                    crossorigin="anonymous" referrerpolicy="no-referrer" />
                <link rel="stylesheet"
                    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/brands.min.css"
                    integrity="sha512-G/T7HQJXSeNV7mKMXeJKlYNJ0jrs8RsWzYG7rVACye+qrcUhEAYKYzaa+VFy6eFzM2+/JT1Q+eqBbZFSHmJQew=="
                    crossorigin="anonymous" referrerpolicy="no-referrer" />
                <link rel="stylesheet"
                    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/fontawesome.min.css"
                    integrity="sha512-giQeaPns4lQTBMRpOOHsYnGw1tGVzbAIHUyHRgn7+6FmiEgGGjaG0T2LZJmAPMzRCl+Cug0ItQ2xDZpTmEc+CQ=="
                    crossorigin="anonymous" referrerpolicy="no-referrer" />
                <link rel="stylesheet"
                    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/regular.min.css"
                    integrity="sha512-k2UAKyvfA7Xd/6FrOv5SG4Qr9h4p2oaeshXF99WO3zIpCsgTJ3YZELDK0gHdlJE5ls+Mbd5HL50b458z3meB/Q=="
                    crossorigin="anonymous" referrerpolicy="no-referrer" />
                <link rel="stylesheet"
                    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/solid.min.css"
                    integrity="sha512-6mc0R607di/biCutMUtU9K7NtNewiGQzrvWX4bWTeqmljZdJrwYvKJtnhgR+Ryvj+NRJ8+NnnCM/biGqMe/iRA=="
                    crossorigin="anonymous" referrerpolicy="no-referrer" />
                <link rel="stylesheet"
                    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/svg-with-js.min.css"
                    integrity="sha512-iyaXtrpKz7FIRsICgrvVtq1vkSJT/cfLeXA0sHSQaAs0y3LdqXWlQCXTxM246mTQ/M2qpyVX3A0aRfmTt0LOCQ=="
                    crossorigin="anonymous" referrerpolicy="no-referrer" />
                <link rel="stylesheet"
                    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/v4-font-face.min.css"
                    integrity="sha512-ueEJBIkl0DBM2fA8eS/o12U3l+ZUFn32IUY4jIaTZnNtKR4ktQw3cE/tx/tFIYJuBm4EVT7WUMqIXP1TUN0boA=="
                    crossorigin="anonymous" referrerpolicy="no-referrer" />
                <link rel="stylesheet"
                    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/v4-shims.min.css"
                    integrity="sha512-SkKgNHAdwXn0lw1CzCwHFpNidxo0GT4AEueTmvgUoBRnxwfFDmWUsRfS6ZjxhXP8HystwoBp8fYDfuWD6azryQ=="
                    crossorigin="anonymous" referrerpolicy="no-referrer" />
                <link rel="stylesheet"
                    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/v5-font-face.min.css"
                    integrity="sha512-5V4m5oBRPLC2aZloM2/C/Simvm/jRfHXcqxTC6iW3FS93jfEWEFmJ7dWqAHME6CGlAG4StQ3f7kN41EUjEFJUQ=="
                    crossorigin="anonymous" referrerpolicy="no-referrer" />
                <!-- MAIN CSS -->
                <link rel="stylesheet" href="css/style.css">
                <link rel="stylesheet" href="css/ViewJobPost.css">
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
                                        <li><a href="#" class="nav-link active">Home</a></li>
                                        <li><a href="CreateAcc.jsp">Create Account</a></li>
                                        <li><a href="getinfouser">Manage User Accounts</a></li>
                                        <li><a href="Statistics">Statistics</a></li>
                                        <li class="d-lg-none"><a href="post-job.html"><span class="mr-2">+</span> Post a
                                                Job</a></li>
                                        <li class="d-lg-none"><a href="login">Log In</a></li>
                                    </ul>
                                </nav>

                                <div class="right-cta-menu text-right d-flex aligin-items-center col-6">
                                    <div class="ml-auto">

                                        <div class="dropdown d-none d-lg-inline-block">

                                            <div class=" mx-2" style="color: white; font-size: 20px;" type="button"
                                                id="signUp" data-toggle="dropdown" aria-haspopup="true"
                                                aria-expanded="false">
                                                <i class="fa-regular fa-user"></i>
                                                <span class="icon-text mx-2 text-capitalize">User</span>
                                            </div>
                                            <!-- <button class="btn btn-primary border-width-2  dropdown-toggle" >
                                      Account
                                    </button> -->
                                            <div class="dropdown-menu mt-2" aria-labelledby="dropdownMenuButton">

                                                <a class="dropdown-item" href="LogOutServlet">Log out</a>
                                            </div>

                                        </div>

                                        <!-- <a href="login.html" class="btn btn-primary border-width-2 d-none d-lg-inline-block"><span class="mr-2 icon-lock_outline"></span>Log In</a> -->
                                    </div>
                                    <a href="#"
                                        class="site-menu-toggle js-menu-toggle d-inline-block d-xl-none mt-lg-2 ml-3"><span
                                            class="icon-menu h3 m-0 p-0 mt-2"></span></a>
                                </div>

                            </div>
                        </div>
                    </header>
                    ${id}
                    <!-- HOME -->
                    <section class="home-section overlay bg-image"
                        style="background-image: url('images/hero_1.jpg'); height: 400px;" id="home-section">

                        <div class="container scroll" style="overflow-y:scroll;">
                            <div class="row justify-content-center">
                                <div class="h-25 col-md-12 align-items-end">

                                </div>
                                <div class="col-md-12 align-items-end">
                                    <div class="mb-5 text-center">
                                        <h1 class="text-white font-weight-bold">The Easiest Way To Get Your Dream Job
                                        </h1>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate est,
                                            consequuntur perferendis.</p>
                                    </div>
                                </div>
                                <form action="" class="search-bar">
                                    <input type="text" placeholder="Enter Job's Title">
                                    <select name="location" id="">
                                        <option value="">Tất cả tỉnh/ thành phố</option>
                                        <option value="">Đà Nẵng</option>
                                        <option value="">Hà Nội</option>
                                        <option value="">Hồ Chí Minh</option>
                                        <option value="">Hải Phòng</option>
                                        <option value="">Huế</option>
                                        <option value="">Quy Nhơn</option>
                                        <option value="">Đắk Lắk</option>
                                    </select>
                                    <select name="type" id="">
                                        <option value="">Tất cả ngành nghề</option>
                                        <option value="">IT</option>
                                        <option value="">Logictics</option>
                                        <option value="">Phiên dịch</option>
                                        <option value="">Tư vấn</option>
                                        <option value="">Xây dựng</option>
                                    </select>
                                    <button>Search</button>
                                </form>

                            </div>
                        </div>


                    </section>

                    <section class="site-section">
                        <div class="container">

                            <ul class="job-listings mb-5">
                                <li class="job-listing d-block d-sm-flex pb-3 pb-sm-0 align-items-center">
                                    <a href="job-single.html"></a>
                                    <div class="job-listing-logo">
                                        <img src="images/job_logo_1.jpg" alt="Free Website Template by Free-Template.co"
                                            class="img-fluid">
                                    </div>

                                    <div
                                        class="job-listing-about d-sm-flex custom-width w-100 justify-content-between mx-4">
                                        <div class="job-listing-position custom-width w-50 mb-3 mb-sm-0">
                                            <h2>Product Designer</h2>
                                            <strong>Adidas</strong>
                                        </div>
                                        <div class="job-listing-location mb-3 mb-sm-0 custom-width w-25">
                                            <span class="icon-room"></span> New York, New York
                                        </div>
                                        <div class="job-listing-meta">
                                            <span class="badge badge-danger">Part Time</span>
                                        </div>
                                    </div>

                                </li>







                            </ul>

                            <div class="row pagination-wrap">
                                <div class="col-md-6 text-center text-md-left mb-4 mb-md-0">
                                    <span>Showing 1-7 Of 43,167 Jobs</span>
                                </div>
                                <div class="col-md-6 text-center text-md-right">
                                    <div class="custom-pagination ml-auto">
                                        <a href="#" class="prev">Prev</a>
                                        <div class="d-inline-block">
                                            <a href="#" class="active">1</a>
                                            <a href="#">2</a>
                                            <a href="#">3</a>
                                            <a href="#">4</a>
                                        </div>
                                        <a href="#" class="next">Next</a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </section>

                    <section class="py-5 bg-image overlay-primary fixed overlay"
                        style="background-image: url('images/hero_1.jpg');">
                        <div class="container">
                            <div class="row align-items-center">
                                <div class="col-md-8">
                                    <h2 class="text-white">Looking For A Job?</h2>
                                    <p class="mb-0 text-white lead">Lorem ipsum dolor sit amet consectetur adipisicing
                                        elit tempora adipisci
                                        impedit.</p>
                                </div>
                                <div class="col-md-3 ml-auto">
                                    <a href="#" class="btn btn-warning btn-block btn-lg">Sign Up</a>
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
                                            <h2 class="section-title mb-2">Company We've Helped</h2>
                                            <p class="lead">Porro error reiciendis commodi beatae omnis similique
                                                voluptate rerum ipsam fugit
                                                mollitia ipsum facilis expedita tempora suscipit iste</p>
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
                                            <p>&ldquo;Soluta quasi cum delectus eum facilis recusandae nesciunt
                                                molestias accusantium libero dolores
                                                repellat id in dolorem laborum ad modi qui at quas dolorum voluptatem
                                                voluptatum repudiandae.&rdquo;
                                            </p>
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
                                            <p>&ldquo;Soluta quasi cum delectus eum facilis recusandae nesciunt
                                                molestias accusantium libero dolores
                                                repellat id in dolorem laborum ad modi qui at quas dolorum voluptatem
                                                voluptatum repudiandae.&rdquo;
                                            </p>
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

                    <section class="pt-5 bg-image overlay-primary fixed overlay"
                        style="background-image: url('images/hero_1.jpg');">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-6 align-self-center text-center text-md-left mb-5 mb-md-0">
                                    <h2 class="text-white">Get The Mobile Apps</h2>
                                    <p class="mb-5 lead text-white">Lorem ipsum dolor sit amet consectetur adipisicing
                                        elit tempora adipisci
                                        impedit.</p>
                                    <p class="mb-0">
                                        <a href="#" class="btn btn-dark btn-md px-4 border-width-2"><span
                                                class="icon-apple mr-3"></span>App
                                            Store</a>
                                        <a href="#" class="btn btn-dark btn-md px-4 border-width-2"><span
                                                class="icon-android mr-3"></span>Play
                                            Store</a>
                                    </p>
                                </div>
                                <div class="col-md-6 ml-auto align-self-end">
                                    <img src="images/apps.png" alt="Free Website Template by Free-Template.co"
                                        class="img-fluid">
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
                                            <script>document.write(new Date().getFullYear());</script> All rights
                                            reserved | This template is made
                                            with <i class="icon-heart text-danger" aria-hidden="true"></i> by <a
                                                href="https://colorlib.com" target="_blank">Colorlib</a>
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

                <script src="js/bootstrap-select.min.js"></script>

                <script src="js/custom.js"></script>


            </body>

            </html>