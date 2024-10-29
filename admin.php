<?php
   include 'db.php';
   session_start();

   if ($_SESSION['user_type'] != 'admin') {
      header("Location: user.php"); // Redirect non-admins to login page
      exit();
   }

   // Check if the user is not an admin
   if ($_SESSION['user_type'] !== 'admin') {
      // Set an error message
      $_SESSION['error_message'] = 'You are not authorized to access the admin page.';
      
      // Redirect them to the user page
      // header("Location: user.php");
      exit();
   }
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Admin Page</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="style.css">

</head>

<body>
    <!-- Preloader -->
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="lds-ellipsis">
            <div></div>
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>

    <!-- ##### Header Area Start ##### -->
    <header class="header-area">
        <!-- Navbar Area -->
        <div class="oneMusic-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="oneMusicNav">

                        <!-- Nav brand -->
                        <a href="index.php" class="nav-brand"><img src="img/core-img/logo.png" alt=""></a>

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu">

                            <!-- Close Button -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav Start -->
                            <?php
                                include 'menu.php';
                            ?>
                            <!-- Nav End -->

                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ##### Header Area End ##### -->

    <!-- ##### Breadcumb Area Start ##### -->
    <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/breadcumb2.jpg);">
        <div class="bradcumbContent">
            <p>Welcome back</p>
            <h2><span><?php echo $_SESSION['email']; ?></span></h2>
            <p>This is an admin page</p>
        </div>
    </div>
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### Elements Area Start ##### -->
    <section class="elements-area mt-30 section-padding-100-0">
        <div class="container">
            <div class="row">
                <!-- ========== Buttons ========== -->
                <div class="col-12">
                    <div class="elements-title mb-70">
                        <button>Export account user</button>
                    </div>
                </div>   

                <div class="col-12">
                    <div class="elements-title mb-70">
                        <h2>Upload music</h2>
                        <a href="upload-music.php"><button class="upload-button">Click to upload music</button></a>
                    </div>
                </div>  
            </div>
        </div>

    </section>
    <!-- ***** Elements Area End ***** -->

    <!-- ========== Loaders ========== -->
    <section class="elements-area mt-30 section-padding-100-0">
        <div class="col-12">
            <div class="elements-title mb-70">
                <h2>Loaders</h2>
            </div>
        </div>

        <div class="col-12">
            <!-- Loaders Area Start -->
            <div class="our-skills-area">
                <div class="row">

                    <!-- Single Skills Area -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="single-skils-area mb-100">
                            <div id="circle" class="circle" data-value="0.75">
                                <div class="skills-text">
                                    <span>75%</span>
                                    <p>Good Music</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Single Skills Area -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="single-skils-area mb-100">
                            <div id="circle2" class="circle" data-value="0.83">
                                <div class="skills-text">
                                    <span>83%</span>
                                    <p>Amazing Artists</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Single Skills Area -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="single-skils-area mb-100">
                            <div id="circle3" class="circle" data-value="0.25">
                                <div class="skills-text">
                                    <span>25%</span>
                                    <p>Concerts</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Single Skills Area -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="single-skils-area mb-100">
                            <div id="circle4" class="circle" data-value="0.95">
                                <div class="skills-text">
                                    <span>95%</span>
                                    <p>Superstars</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- ========== Milestones ========== -->
        <div class="col-12">
            <div class="elements-title mb-70">
                <h2>Milestone</h2>
            </div>
        </div>

        <div class="col-12">
            <div class="oneMusic-cool-facts-area">
                <div class="row">

                    <!-- Single Cool Facts -->
                    <div class="col-12 col-sm-6 col-lg-2">
                        <div class="single-cool-fact mb-100">
                            <div class="scf-text">
                                <h2>+<span class="counter">1000</span></h2>
                                <p>Live Concerts</p>
                            </div>
                        </div>
                    </div>

                    <!-- Single Cool Facts -->
                    <div class="col-12 col-sm-6 col-lg-2">
                        <div class="single-cool-fact mb-100">
                            <div class="scf-text">
                                <h2><span class="counter">19</span>k</h2>
                                <p>Followers on FB</p>
                            </div>
                        </div>
                    </div>

                    <!-- Single Cool Facts -->
                    <div class="col-12 col-sm-6 col-lg-2">
                        <div class="single-cool-fact mb-100">
                            <div class="scf-text">
                                <h2><span class="counter">732</span></h2>
                                <p>New Artists</p>
                            </div>
                        </div>
                    </div>

                    <!-- Single Cool Facts -->
                    <div class="col-12 col-sm-6 col-lg-2">
                        <div class="single-cool-fact mb-100">
                            <div class="scf-text">
                                <h2><span class="counter">25</span>mil</h2>
                                <p>Songs in Playlist</p>
                            </div>
                        </div>
                    </div>

                    <!-- Single Cool Facts -->
                    <div class="col-12 col-sm-6 col-lg-2">
                        <div class="single-cool-fact mb-100">
                            <div class="scf-text">
                                <h2><span class="counter">2401</span></h2>
                                <p>New Songs</p>
                            </div>
                        </div>
                    </div>

                    <!-- Single Cool Facts -->
                    <div class="col-12 col-sm-6 col-lg-2">
                        <div class="single-cool-fact mb-100">
                            <div class="scf-text">
                                <h2><span class="counter">28</span></h2>
                                <p>Awards Won</p>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </section>

    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area">
        <div class="container">
            <div class="row d-flex flex-wrap align-items-center">
                <div class="col-12 col-md-6">
                    <p class="copywrite-text">
                        <a href="#">Copyright &copy; 2024 All rights reserved</a>
                    </p>
                </div>
            </div>
        </div>
    </footer>
    <!-- ##### Footer Area Start ##### -->

    <!-- ##### All Javascript Script ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>
    <!-- Export js -->
    <script src="js/export.js"></script>
</body>

</html>