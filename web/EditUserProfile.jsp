<%-- 
    Document   : EditUserProfile
    Created on : Oct 26, 2023, 9:47:07 AM
    Author     : ASUS
--%>

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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
              integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/brands.min.css"
              integrity="sha512-G/T7HQJXSeNV7mKMXeJKlYNJ0jrs8RsWzYG7rVACye+qrcUhEAYKYzaa+VFy6eFzM2+/JT1Q+eqBbZFSHmJQew=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/fontawesome.min.css"
              integrity="sha512-giQeaPns4lQTBMRpOOHsYnGw1tGVzbAIHUyHRgn7+6FmiEgGGjaG0T2LZJmAPMzRCl+Cug0ItQ2xDZpTmEc+CQ=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/regular.min.css"
              integrity="sha512-k2UAKyvfA7Xd/6FrOv5SG4Qr9h4p2oaeshXF99WO3zIpCsgTJ3YZELDK0gHdlJE5ls+Mbd5HL50b458z3meB/Q=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/solid.min.css"
              integrity="sha512-6mc0R607di/biCutMUtU9K7NtNewiGQzrvWX4bWTeqmljZdJrwYvKJtnhgR+Ryvj+NRJ8+NnnCM/biGqMe/iRA=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/svg-with-js.min.css"
              integrity="sha512-iyaXtrpKz7FIRsICgrvVtq1vkSJT/cfLeXA0sHSQaAs0y3LdqXWlQCXTxM246mTQ/M2qpyVX3A0aRfmTt0LOCQ=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/v4-font-face.min.css"
              integrity="sha512-ueEJBIkl0DBM2fA8eS/o12U3l+ZUFn32IUY4jIaTZnNtKR4ktQw3cE/tx/tFIYJuBm4EVT7WUMqIXP1TUN0boA=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/v4-shims.min.css"
              integrity="sha512-SkKgNHAdwXn0lw1CzCwHFpNidxo0GT4AEueTmvgUoBRnxwfFDmWUsRfS6ZjxhXP8HystwoBp8fYDfuWD6azryQ=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/v5-font-face.min.css"
              integrity="sha512-5V4m5oBRPLC2aZloM2/C/Simvm/jRfHXcqxTC6iW3FS93jfEWEFmJ7dWqAHME6CGlAG4StQ3f7kN41EUjEFJUQ=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />


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
                                <li><a href="index.html" class="nav-link active">Home</a></li>
                                <li><a href="about.html">About</a></li>
                                <li><a href="blog.html">Create CV</a></li>
                                <li><a href="blog.html">View CV</a></li>
                                <li><a href="blog.html">Interview</a></li>
                                <li><a href="blog.html">Job Applied</a></li>
                                <li class="d-lg-none"><a href="post-job.html"><span class="mr-2">+</span> Post a Job</a>
                                </li>
                                <li class="d-lg-none"><a href="login.html">Log In</a></li>
                            </ul>
                        </nav>

                        <div class="right-cta-menu text-right d-flex aligin-items-center col-6">
                            <div class="ml-auto">
                                <div class="dropdown d-none d-lg-inline-block">

                                    <div class="mx-2" style="color: white; font-size: 20px;" type="button" id="signUp"
                                         data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="fa-regular fa-user"></i>
                                        <span class="icon-text mx-2 text-capitalize">User</span>
                                    </div>
                                    <div class="dropdown-menu mt-2" aria-labelledby="dropdownMenuButton">
                                        <a class="dropdown-item" href="#">Edit a profile</a>
                                        <a class="dropdown-item" href="#">Log out</a>

                                    </div>
                                </div>
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
                            <h1 class="text-white font-weight-bold">Edit the profile</h1>
                            <div class="custom-breadcrumbs">
                                <a href="#">Home</a> <span class="mx-2 slash">/</span>
                                <span class="text-white"><strong>Edit the profile</strong></span>
                            </div>
                        </div>
                    </div>
                </div>
            </section>


            <section class="site-section">
                <div class="container">

                    <div class="row align-items-center mb-5">
                        <div class="col-lg-10 mb-4 mb-lg-0">
                            <div class="d-flex align-items-center text-capitalize">
                                <div>
                                    <h2>edit the profile</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row mb-5">
                        <div class="col-lg-12">
                            <form action="EditProfileUser" class="p-4 p-md-5 border rounded" method="post">
                                <h3 class="text-black mb-5 border-bottom pb-2 text-capitalize">edit the profile</h3>
                                <div class="form-group">
                                    <label for="name" class="text-capitalize">Name</label>
                                    <input name="name-input" type="text" class="form-control" id="name" placeholder="Enter your name">
                                </div>
                                <div class="form-group">
                                    <label for="phone" class="text-capitalize">Phone</label>
                                    <input name="phone-input" type="text" class="form-control" id="phone" placeholder="Enter your phone">
                                </div>
                                <div class="form-group">
                                    <label for="job-type">Gender</label>
                                    <select class="selectpicker border rounded" id="job-type" data-style="btn-black"
                                            data-width="100%" title="Select Job Type" name="gen-input">
                                        <option value="Male" selected>Male</option>
                                        <option value="Female">Female</option>
                                        <option value="Other">Other</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="job-title" class="text-capitalize">Skills</label>
                                    <input name="skill-input" type="text" class="form-control" id="taxcode" placeholder="Enter your Skills">
                                </div>
                                <div class="form-group">
                                    <label for="job-location">Date Of Birth</label>
                                    <input  type="date" class="form-control" id="job-date-open" name="date-input">
                                </div>
                                <div class="row align-items-center mb-5">
                                    <div class="col-lg-2 ml-auto">
                                        <button type="submit" class="btn btn-block btn-primary btn-md">Update</button>
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
                                    <script>document.write(new Date().getFullYear());</script> All rights reserved | This
                                    template is made
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
        <script src="js/quill.min.js"></script>


        <script src="js/bootstrap-select.min.js"></script>

        <script src="js/custom.js"></script>



    </body>

</html>
