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
                                <div class="login-register-btn mr-50">
                                    <%
                                        String username = (String) session.getAttribute("username");
                                        if (username != null) {
                                    %>
                                        <a href=""> Wecome back, <%= username %>!</a>
                                    <%
                                        } else {
                                    %>
                                        <a href="login.jsp">Welcome, guest! Please login</a>.
                                    <%
                                        }
                                    %>
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