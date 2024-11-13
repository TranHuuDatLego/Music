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

        <!-- ##### Latest Albums Area Start ##### -->
        <section class="latest-albums-area section-padding-100">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-lg-9">
                        <div class="ablums-text text-center mb-70">
                            <p style="font-size: 18px;"> Welcome to the Music by Night &mdash; the gateway to a world of
                                rich and diverse music! When you click on the Discovery button, an adventure full of
                                surprises and excitement begins.
                                This feature will take you on a musical journey, exploring new tracks, intriguing
                                artists, and unique playlists every time you access it. Whether you're a fan of the
                                latest hits or looking to discover unique tracks from past generations, Discovery will
                                be your ideal companion.
                                By combining advanced technology with the creativity of music experts, we are committed
                                to providing you with the most unique and exciting listening experience.
                            </p>
                        </div>
                    </div>
                </div>
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

        <!-- ##### Miscellaneous Area Start ##### -->
        <section class="miscellaneous-area section-padding-100-0">
            <div class="container">
                <div class="row">
                    <!-- ***** Weeks Top ***** -->
                    <div class="col-12 col-lg-4">
                        <div class="weeks-top-area mb-100">
                            <div class="section-heading text-left mb-50 wow fadeInUp" data-wow-delay="50ms">
                                <p>See what's new</p>
                                <h2>This week's top</h2>
                            </div>

                            <!-- Single Top Item -->
                            <div class="single-top-item d-flex wow fadeInUp" data-wow-delay="100ms">
                                <div class="thumbnail">
                                    <img src="img/bg-img/wt1.jpg" alt="">
                                </div>
                                <div class="content-">
                                    <h6>Lovin On Me</h6>
                                    <p>Jack Harlow</p>
                                </div>
                            </div>

                            <!-- Single Top Item -->
                            <div class="single-top-item d-flex wow fadeInUp" data-wow-delay="150ms">
                                <div class="thumbnail">
                                    <img src="img/bg-img/wt2.jpg" alt="">
                                </div>
                                <div class="content-">
                                    <h6>I Remember Everything</h6>
                                    <p>Zach Bryan</p>
                                </div>
                            </div>

                            <!-- Single Top Item -->
                            <div class="single-top-item d-flex wow fadeInUp" data-wow-delay="200ms">
                                <div class="thumbnail">
                                    <img src="img/bg-img/wt3.jpg" alt="">
                                </div>
                                <div class="content-">
                                    <h6>Die Alone</h6>
                                    <p>K-391</p>
                                </div>
                            </div>

                            <!-- Single Top Item -->
                            <div class="single-top-item d-flex wow fadeInUp" data-wow-delay="250ms">
                                <div class="thumbnail">
                                    <img src="img/bg-img/wt4.jpg" alt="">
                                </div>
                                <div class="content-">
                                    <h6>Lose Control</h6>
                                    <p>Teddy Swims</p>
                                </div>
                            </div>

                            <!-- Single Top Item -->
                            <div class="single-top-item d-flex wow fadeInUp" data-wow-delay="300ms">
                                <div class="thumbnail">
                                    <img src="img/bg-img/wt5.jpg" alt="">
                                </div>
                                <div class="content-">
                                    <h6>Beautiful Things</h6>
                                    <p>Benson Boonef</p>
                                </div>
                            </div>

                            <!-- Single Top Item -->
                            <div class="single-top-item d-flex wow fadeInUp" data-wow-delay="350ms">
                                <div class="thumbnail">
                                    <img src="img/bg-img/wt6.jpg" alt="">
                                </div>
                                <div class="content-">
                                    <h6>We Can't Be Friends</h6>
                                    <p>Ariana Grande</p>
                                </div>
                            </div>

                        </div>
                    </div>

                    <!-- ***** New Hits Songs ***** -->
                    <div class="col-12 col-lg-4">
                        <div class="new-hits-area mb-100">
                            <div class="section-heading text-left mb-50 wow fadeInUp" data-wow-delay="50ms">
                                <p>See what's new</p>
                                <h2>New Hits</h2>
                            </div>

                            <!-- Single Top Item -->
                            <div class="single-new-item d-flex align-items-center justify-content-between wow fadeInUp"
                                data-wow-delay="100ms">
                                <div class="first-part d-flex align-items-center">
                                    <div class="thumbnail">
                                        <img src="img/bg-img/wt7.jpg" alt="">
                                    </div>
                                    <div class="content-">
                                        <h6>The Calling</h6>
                                        <p>TheFatRat</p>
                                    </div>
                                </div>
                                <audio preload="auto" controls>
                                    <source src="audio/thecalling.mp3">
                                </audio>
                            </div>

                            <!-- Single Top Item -->
                            <div class="single-new-item d-flex align-items-center justify-content-between wow fadeInUp"
                                data-wow-delay="150ms">
                                <div class="first-part d-flex align-items-center">
                                    <div class="thumbnail">
                                        <img src="img/bg-img/wt9.jpg" alt="">
                                    </div>
                                    <div class="content-">
                                        <h6>Money</h6>
                                        <p>Lisa</p>
                                    </div>
                                </div>
                                <audio preload="auto" controls>
                                    <source src="audio/money.mp3">
                                </audio>
                            </div>

                            <!-- Single Top Item -->
                            <div class="single-new-item d-flex align-items-center justify-content-between wow fadeInUp"
                                data-wow-delay="200ms">
                                <div class="first-part d-flex align-items-center">
                                    <div class="thumbnail">
                                        <img src="img/bg-img/wt8.jpg" alt="">
                                    </div>
                                    <div class="content-">
                                        <h6>Mojito</h6>
                                        <p>Jay Chou</p>
                                    </div>
                                </div>
                                <audio preload="auto" controls>
                                    <source src="audio/mojito.mp3">
                                </audio>
                            </div>

                            <!-- Single Top Item -->
                            <div class="single-new-item d-flex align-items-center justify-content-between wow fadeInUp"
                                data-wow-delay="250ms">
                                <div class="first-part d-flex align-items-center">
                                    <div class="thumbnail">
                                        <img src="img/bg-img/wt10.jpg" alt="">
                                    </div>
                                    <div class="content-">
                                        <h6>Senõrita</h6>
                                        <p>Camila Cabello</p>
                                    </div>
                                </div>
                                <audio preload="auto" controls>
                                    <source src="audio/senorita.mp3">
                                </audio>
                            </div>

                            <!-- Single Top Item -->
                            <div class="single-new-item d-flex align-items-center justify-content-between wow fadeInUp"
                                data-wow-delay="300ms">
                                <div class="first-part d-flex align-items-center">
                                    <div class="thumbnail">
                                        <img src="img/bg-img/wt12.jpg" alt="">
                                    </div>
                                    <div class="content-">
                                        <h6>Hay Trao Cho Anh</h6>
                                        <p>Son Tung M-TP</p>
                                    </div>
                                </div>
                                <audio preload="auto" controls>
                                    <source src="audio/htca.mp3">
                                </audio>
                            </div>

                            <!-- Single Top Item -->
                            <div class="single-new-item d-flex align-items-center justify-content-between wow fadeInUp"
                                data-wow-delay="350ms">
                                <div class="first-part d-flex align-items-center">
                                    <div class="thumbnail">
                                        <img src="img/bg-img/wt11.jpg" alt="">
                                    </div>
                                    <div class="content-">
                                        <h6>Why do I?</h6>
                                        <p>Unknown Brain</p>
                                    </div>
                                </div>
                                <audio preload="auto" controls>
                                    <source src="audio/wdi.mp3">
                                </audio>
                            </div>
                        </div>
                    </div>

                    <!-- ***** Popular Artists ***** -->
                    <div class="col-12 col-lg-4">
                        <div class="popular-artists-area mb-100">
                            <div class="section-heading text-left mb-50 wow fadeInUp" data-wow-delay="50ms">
                                <p>See what's new</p>
                                <h2>Popular Artist</h2>
                            </div>

                            <!-- Single Artist -->
                            <div class="single-artists d-flex align-items-center wow fadeInUp" data-wow-delay="100ms">
                                <div class="thumbnail">
                                    <img src="img/bg-img/pa5.jpg" alt="">
                                </div>
                                <div class="content-">
                                    <p>Alan Walker</p>
                                </div>
                            </div>

                            <!-- Single Artist -->
                            <div class="single-artists d-flex align-items-center wow fadeInUp" data-wow-delay="150ms">
                                <div class="thumbnail">
                                    <img src="img/bg-img/pa2.jpg" alt="">
                                </div>
                                <div class="content-">
                                    <p>Son Tung M-TP</p>
                                </div>
                            </div>

                            <!-- Single Artist -->
                            <div class="single-artists d-flex align-items-center wow fadeInUp" data-wow-delay="200ms">
                                <div class="thumbnail">
                                    <img src="img/bg-img/pa3.jpg" alt="">
                                </div>
                                <div class="content-">
                                    <p>Taylor Swift</p>
                                </div>
                            </div>

                            <!-- Single Artist -->
                            <div class="single-artists d-flex align-items-center wow fadeInUp" data-wow-delay="250ms">
                                <div class="thumbnail">
                                    <img src="img/bg-img/pa4.jpg" alt="">
                                </div>
                                <div class="content-">
                                    <p>Jay Chou</p>
                                </div>
                            </div>

                            <!-- Single Artist -->
                            <div class="single-artists d-flex align-items-center wow fadeInUp" data-wow-delay="300ms">
                                <div class="thumbnail">
                                    <img src="img/bg-img/pa1.jpg" alt="">
                                </div>
                                <div class="content-">
                                    <p>Charlie Puth</p>
                                </div>
                            </div>

                            <!-- Single Artist -->
                            <div class="single-artists d-flex align-items-center wow fadeInUp" data-wow-delay="350ms">
                                <div class="thumbnail">
                                    <img src="img/bg-img/pa6.jpg" alt="">
                                </div>
                                <div class="content-">
                                    <p>Ed Sheeran</p>
                                </div>
                            </div>

                            <!-- Single Artist -->
                            <div class="single-artists d-flex align-items-center wow fadeInUp" data-wow-delay="400ms">
                                <div class="thumbnail">
                                    <img src="img/bg-img/pa7.jpg" alt="">
                                </div>
                                <div class="content-">
                                    <p>Rihanna</p>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ##### Miscellaneous Area End ##### -->


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