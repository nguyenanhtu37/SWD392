<%-- 
Document   : PostJob
Created on : Oct 6, 2023, 9:42:10 AM
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
                        <div class="site-logo col-6"><a href="mainEnter">JobC</a></div>

                        <nav class="mx-auto site-navigation">
                            <ul class="site-menu js-clone-nav d-none d-xl-block ml-0 pl-0">
                                <li><a href="BackHomePage" class="nav-link active">Home</a></li>
                                <li><a href="PostJobServlet">Post Job</a></li>
                                <li><a href="video_call_1.html">Interview</a></li>
                                <li><a href="ViewPostedJob">Posted Job</a></li>
                            </ul>
                        </nav>

                        <div class="right-cta-menu text-right d-flex aligin-items-center col-6">
                            <div class="ml-auto">
                                <div class="dropdown d-none d-lg-inline-block">

                                    <div class=" mx-2" style="color: white; font-size: 20px;" type="button" id="signUp"
                                         data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="fa-regular fa-user"></i>
                                        <span class="icon-text mx-2 text-capitalize">Enterprise</span>
                                    </div>
                                    <div class="dropdown-menu mt-2" aria-labelledby="dropdownMenuButton">
                                        <a class="dropdown-item" href="ViewProfile ">Profile</a>
                                        <a class="dropdown-item" href="LogOutServlet">Log out</a>
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
                            <h1 class="text-white font-weight-bold">Post A Job</h1>
                            <div class="custom-breadcrumbs">
                                <a href="BackHomePage">Home</a> <span class="mx-2 slash">/</span>
                                <span class="text-white"><strong>Post a Job</strong></span>
                            </div>
                        </div>
                    </div>
                </div>
            </section>


            <section class="site-section">
                <div class="container">

                    <div class="row align-items-center mb-5">
                        <div class="col-lg-10 mb-4 mb-lg-0">
                            <div class="d-flex align-items-center">
                                <div>
                                    <h2>Post A Job</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row mb-5">
                        <div class="col-lg-12">
                            <form action="PostJobServlet" class="p-4 p-md-5 border rounded" method="POST">
                                <h3 class="text-black mb-5 border-bottom pb-2">Job Details</h3>
                                <div class="form-group">
                                    <label for="job-title">Job Title</label>
                                    <input type="text" class="form-control" id="job-title" name="title-input" placeholder="Product Designer">
                                </div>
                                <div class="form-group row">
                                    <div class="col-6">
                                        <label for="job-location">Date Open</label>
                                        <input type="date" class="form-control" id="job-date-open" name="dateopen-input">
                                    </div>
                                    <div class="col-6">
                                        <label for="job-location">Date Close</label>
                                        <input type="date" class="form-control" id="job-date-close" name="dateclose-input">
                                    </div>

                                </div>

                                <div class="form-group">
                                    <label for="job-location">Location</label>
                                    <input type="text" class="form-control" id="job-location" name="location-input" placeholder="e.g. New York">
                                </div>


                                <div class="form-group">
                                    <label for="job-type">Job Type</label>
                                    <select class="selectpicker border rounded" id="job-type" data-style="btn-black" data-width="100%"
                                            title="Select Job Type" name="type-input">
                                        <option value="fulltime" selected>Full Time</option>
                                        <option value="parttime">Part Time</option>
                                        <option value="remote">Remote</option>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="job-location">Skills</label>
                                    <input type="text" class="form-control" id="job-location" name="skill-input" placeholder="e.g. SQL, Python, Java">
                                </div>


                                <div class="form-group">
                                    <label for="job-region">Job Salary</label>
                                    <input type="text" class="form-control" id="job-salary" name="salary-input" placeholder="Salary">
                                </div>


                                <div class="form-group">
                                    <label for="description" class="text-capitalize">Description</label>
                                    <textarea type="text" class="form-control" id="description" name="desc-input" placeholder="Enter your description" value="Enterprise Address" rows="3"></textarea>
                                </div>

                                <div class="row align-items-center mb-5">
                                    <div class="col-lg-2 ml-auto">
                                        <button type="submit" class="btn btn-block btn-primary btn-md">Post Job</button>
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
                                        const startDate = document.getElementById("job-date-open");
                                        const endDate = document.getElementById("job-date-close");
                                        startDate.addEventListener('input', function () {
                                            endDate.min = startDate.value;
                                        });
        </script>

    </body>

</html>