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
            <h2>Singer</h2>
        </div>
    </section>
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### Album Catagory Area Start ##### -->
    <section class="album-catagory section-padding-100-0">
        
        <div style="padding-bottom: 20px;"></div>
    </section>

    <div class="add-area mb-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div style="display: flex; align-items: flex-start;">
                        <img src="img/sontung.jpg" width="500" height="200" style="margin-right: 20px;">
                        
                        <div style="padding-top: 20px;">
                            <h3 style="text-align: center;">Son Tung MTP</h3>
                            <h6 style="text-align: center;">Age: 30</h6>
                            <p>
                                Nguyễn Thanh Tùng (born 5 July 1994), known as Sơn Tùng M-TP, is a Vietnamese singer-songwriter
                                and actor. Born in Thái Bình, he showed musical talent from age two. His self-written singles
                                "Cơn mưa ngang qua" (2012) and "Em của ngày hôm qua" (2013) launched his career, followed by
                                hits like "Chắc ai đó sẽ về," "Lạc trôi," and "Nơi này có anh." In 2017, he released the
                                compilation album *M-tp M-TP* and his autobiography, *Chạm tới giấc mơ*.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    

    <!-- ##### Add Area Start ##### -->
    <!-- <div class="add-area mb-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="adds">
                        <video width="640" height="360" controls>
                            <source src="img/teaser.mp4">
                        </video>
                        <p class="addInfo">Alan Walker - Faded (teaser) </p>
                    </div>
                </div>
            </div>
        </div>
    </div> -->
    <!-- ##### Add Area End ##### -->

    <!-- ##### Song Area Start ##### -->
    <div class="one-music-songs-area mb-70">
        <div class="container">
            <div class="row">

                <!-- Single Song Area -->
                <div class="col-12">
                    <div class="single-song-area mb-30 d-flex flex-wrap align-items-end">
                        <div class="song-thumbnail">
                            <img src="img/hay-trao-cho-anh.jpg" alt="">
                        </div>
                        <div class="song-play-area">
                            <div class="song-name">
                                <p>01. Hãy trao cho anh</p>
                            </div>
                            <audio preload="auto" controls>
                                <source src="audio/hay-trao-cho-anh.mp3">
                            </audio>
                        </div>
                        <div class="download-button">
                            <a href="audio/hay-trao-cho-anh.mp3" download>
                                <i class="fa fa-download"></i>
                            </a>
                        </div>
                    </div>
                </div>

                <!-- Single Song Area -->
                <div class="col-12">
                    <div class="single-song-area mb-30 d-flex flex-wrap align-items-end">
                        <div class="song-thumbnail">
                            <img src="img/making-my-way.jpg" alt="">
                        </div>
                        <div class="song-play-area">
                            <div class="song-name">
                                <p>02. Making My Way</p>
                            </div>
                            <audio preload="auto" controls>
                                <source src="audio/making-my-way.mp3">
                            </audio>
                        </div>
                        <div class="download-button">
                            <a href="audio/making-my-way.mp3" download>
                                <i class="fa fa-download"></i>
                            </a>
                        </div>
                    </div>
                </div>

                <!-- Single Song Area -->
                <div class="col-12">
                    <div class="single-song-area mb-30 d-flex flex-wrap align-items-end">
                        <div class="song-thumbnail">
                            <img src="img/em-cua-ngay-hom-qua.jpg" alt="">
                        </div>
                        <div class="song-play-area">
                            <div class="song-name">
                                <p>03. Em của ngày hôm qua</p>
                            </div>
                            <audio preload="auto" controls>
                                <source src="audio/em-cua-ngay-hom-qua.mp3">
                            </audio>
                        </div>
                        <div class="download-button">
                            <a href="audio/em-cua-ngay-hom-qua.mp3" download>
                                <i class="fa fa-download"></i>
                            </a>
                        </div>
                    </div>
                </div>

                <!-- Single Song Area -->
                <div class="col-12">
                    <div class="single-song-area mb-30 d-flex flex-wrap align-items-end">
                        <div class="song-thumbnail">
                            <img src="img/dung-lam-trai-tim-anh-dau.jpg" alt="">
                        </div>
                        <div class="song-play-area">
                            <div class="song-name">
                                <p>04. Đừng làm trái tim anh đâu</p>
                            </div>
                            <audio preload="auto" controls>
                                <source src="audio/dung-lam-trai-tim-anh-dau.mp3">
                            </audio>
                        </div>
                        <div class="download-button">
                            <a href="audio/dung-lam-trai-tim-anh-dau.mp3" download>
                                <i class="fa fa-download"></i>
                            </a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- ##### Song Area End ##### -->

    <!-- ##### Contact Area Start ##### -->
    <section class="contact-area section-padding-100 bg-img bg-overlay bg-fixed has-bg-img"
        style="background-image: url(img/bg-img/bg-2.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading white">
                        <p>See what's new</p>
                        <h2>Get In Touch</h2>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <!-- Contact Form Area -->
                    <div class="contact-form-area">
                        <form action="#" method="post" name="contact-form">
                            <div class="row">
                                <div class="col-md-6 col-lg-4">
                                    <div class="form-group">
                                        <input name="name" type="text" class="form-control" id="name"
                                            placeholder="Name">
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-4">
                                    <div class="form-group">
                                        <input name="email" type="email" class="form-control" id="email"
                                            placeholder="E-mail">
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <input name="subject" type="text" class="form-control" id="subject"
                                            placeholder="Subject">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <textarea name="message" name="message" class="form-control" id="message"
                                            cols="30" rows="10" placeholder="Message"></textarea>
                                    </div>
                                </div>
                                <div class="col-12 text-center">
                                    <button class="btn oneMusic-btn mt-30" type="submit">Send <i
                                            class="fa fa-angle-double-right"></i></button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Contact Area End ##### -->

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

    <!-- ##### Feedback Script ##### -->
    <script src="feedback_home.js"></script>

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