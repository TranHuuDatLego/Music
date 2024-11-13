<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="description" content="">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <!-- Title -->
        <title>Modern Music</title>

        <!-- Favicon -->
        <link rel="icon" href="img/core-img/favicon.ico">

        <!-- Stylesheet -->
        <link rel="stylesheet" href="css/style.css">

        <style>
            /* Download Button Style */
            .download-button {
                display: inline-block;
                padding: 5px 15px;
                background-color: white;
                color: white;
                text-decoration: none;
                border-radius: 4px;
                transition: background-color 0.3s ease;
            }

            .download-button:hover {
                background-color: #41C9E2;
            }

            .single-album {
                width: 100%;
                overflow: hidden;
            }

            .single-album img {
                width: 100%;
                height: 300px;
                object-fit: cover;
                /* Cắt ảnh nếu cần */
            }
        </style>
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
                            <a href="index.jsp" class="nav-brand"><img src="img/core-img/logo.png" alt=""></a>

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
                                <div class="classynav">
                                    <ul>
                                        <li><a href="index.jsp">Home</a></li>
                                        <li><a href="singer.jsp">Singer</a></li>
                                        <li><a href="song.jsp">Song</a></li>
                                        <li><a href="event.jsp">Events</a></li>
                                        <li><a href="blog.jsp">News</a></li>
                                        <li><a href="search.jsp">Search</a></li>
                                        <li><a href="contact.jsp">Contact</a></li>
                                    </ul>

                                    <!-- Login/Register & Cart Button -->
                                    <div class="login-register-cart-button d-flex align-items-center">
                                        <!-- Login/Register -->
                                        <div class="login-register-btn mr-50">
                                            <a href="login.jsp" id="loginBtn">Login / Register</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Nav End -->

                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </header>
        <!-- ##### Header Area End ##### -->

        <!-- ##### Breadcumb Area Start ##### -->
        <section class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/a9.jpg);">
            <div class="bradcumbContent">
                <p>See what's new</p>
                <h2>Latest Albums</h2>
            </div>
        </section>
        <!-- ##### Breadcumb Area End ##### -->

        
        <!-- ##### Album Catagory Area Start ##### -->
        <section class="album-catagory section-padding-100-0">

            <div style="padding-bottom: 20px;"></div>
        </section>

        <!-- ##### Featured Artist Area Start ##### -->
        <div class="container">
            <div class="row align-items-end">
                <div class="col-12 col-md-5 col-lg-4">
                    <div class="featured-artist-thumb">
                        <img src="img/bg-img/a2.jpg" alt="">
                    </div>
                </div>
                <div class="col-12 col-md-7 col-lg-8">
                    <div class="featured-artist-content">
                        <!-- Section Heading -->
                        <div class="section-heading white text-left mb-30">
                            <p style="color: #000;">Hit Song</p>
                            <h2 style="color: #000;">Alan Walker - Faded</h2>
                        </div>
                        <p style="color: #000;">Enter the enchanting realm of 'Faded' by Alan Walker, a soul-stirring melody that speaks
                            volumes with its haunting beats and poignant lyrics.
                            This track, released in 2015, captures the essence of longing and introspection, resonating
                            deeply with listeners worldwide.
                            With its ethereal soundscapes and emotive vocals, 'Faded' transcends mere music &mdash; it's
                            an emotional journey through the depths of the human experience.
                        </p>
                        <div class="song-play-area">
                            <div class="song-name">
                                <p>Main Song</p>
                            </div>
                            <audio preload="auto" controls>
                                <source src="audio/faded.mp3">
                            </audio>                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ##### Featured Artist Area End ##### -->

        <!-- ##### Latest Albums Area Start ##### -->
    <section class="latest-albums-area section-padding-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading style-2">
                        <p><strong>See some newly released albums</strong></p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="albums-slideshow owl-carousel">
                        <!-- Single Album 1-->
                        <div class="single-album">
                            <a href="song-detail.jsp">
                                <img src="img/bg-img/a1.jpg" alt="">
                                <div class="album-info">
                                    <a href="song-detail.jsp">
                                        <h5>Alan Walker</h5>
                                    </a>
                                    <p>Lost Control</p>
                                </div>
                            </a>
                        </div>

                        <!-- Single Album 2-->
                        <div class="single-album">
                            <a href="song-detail.jsp">
                                <img src="img/bg-img/a2.jpg" alt="">
                                <div class="album-info">
                                    <a href="song-detail.jsp">
                                        <h5>Alan Walker</h5>
                                    </a>
                                    <p>Faded</p>
                                </div>
                            </a>
                        </div>

                        <!-- Single Album 3-->
                        <div class="single-album">
                            <a href="song-detail.jsp">
                                <img src="img/bg-img/a3.jpg" alt="">
                                <div class="album-info">
                                    <a href="song-detail.jsp">
                                        <h5>Alan Walker</h5>
                                    </a>
                                    <p>On My Way</p>
                                </div>
                            </a>
                        </div>

                        <!-- Single Album 4-->
                        <div class="single-album">
                            <a href="song-detail.jsp">
                                <img src="img/bg-img/a4.jpg" alt="">
                                <div class="album-info">
                                    <a href="song-detail.jsp">
                                        <h5>Alan Walker</h5>
                                    </a>
                                    <p>Alone</p>
                                </div>
                            </a>
                        </div>

                        <!-- Single Album 5-->
                        <div class="single-album">
                            <a href="song-detail.jsp">
                                <img src="img/bg-img/a5.jpg" alt="">
                                <div class="album-info">
                                    <a href="song-detail.jsp">
                                        <h5>Alan Walker</h5>
                                    </a>
                                    <p>Legend Never Die</p>
                                </div>
                            </a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Latest Albums Area End ##### -->

        <!-- ##### Footer Area Start ##### -->
        <footer class="footer-area">

            <div style="text-align: center; background-color: #000;">
                <img src="icons/icon-pay-01.png" alt="Payment Methods" style="margin-top: 10px;">
                <img src="icons/icon-pay-02.png" alt="Payment Methods" style="margin-top: 10px;">
                <img src="icons/icon-pay-03.png" alt="Payment Methods" style="margin-top: 10px;">
                <img src="icons/icon-pay-04.png" alt="Payment Methods" style="margin-top: 10px;">
                <img src="icons/icon-pay-05.png" alt="Payment Methods" style="margin-top: 10px;">
                <p>&copy; 2024 All rights reserved by Phong - Dat - Nam</p>
            </div>

        </footer>

        <!-- ##### Footer Area End ##### -->

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
    </body>

</html>