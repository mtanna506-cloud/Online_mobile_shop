<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">

    <meta charset="utf-8" />

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0" />

    <title>Home | MobileHub</title>

    <!-- Google Font -->
    <link rel="preconnect"
          href="https://fonts.googleapis.com">

    <link rel="preconnect"
          href="https://fonts.gstatic.com"
          crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800&display=swap"
          rel="stylesheet">

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <!-- Font Awesome -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

    <!-- Our CSS -->
    <link href="css/style.css"
          rel="stylesheet">

</head>


<body>

<form id="form1" runat="server">

    <!-- ================= TOP BAR ================= -->

    <div class="top-bar">

        <div class="container-fluid px-4">

            <div class="top-content">

                <div>
                    <i class="fa-solid fa-truck-fast"></i>
                    Free delivery on orders above ₹999
                    <span class="separator">|</span>
                    <i class="fa-solid fa-rotate-left"></i>
                    7-day easy returns
                </div>

                <div class="top-right">

                    <a href="track-order.aspx">
                        <i class="fa-solid fa-location-dot"></i>
                        Track Order
                    </a>

                    <a href="contact.aspx">
                        <i class="fa-solid fa-headset"></i>
                        Help Center
                    </a>

                    <a href="about.aspx">
                        Sell on MobileHub
                    </a>

                </div>

            </div>

        </div>

    </div>


    <!-- ================= NAVBAR ================= -->

    <nav class="main-navbar">

        <div class="container-fluid px-4">

            <div class="navbar-content">


                <!-- LOGO -->

                <a href="index.aspx"
                   class="logo">

                    Mobile<span>Hub</span><b>.</b>

                </a>


                <!-- SEARCH -->

                <div class="search-box">

                    <i class="fa-solid fa-magnifying-glass"></i>

                    <input type="text"
                           placeholder="Search phones, brands, accessories..." />

                </div>


                <!-- MENU -->

                <div class="menu-links">

                    <a href="index.aspx"
                       class="active">
                        Home
                    </a>

                    <a href="all-mobiles.aspx">
                        All Mobiles
                    </a>

                    <a href="categories.aspx">
                        Categories
                    </a>

                    <a href="brands.aspx">
                        Brands
                    </a>

                    <a href="offers.aspx">
                        Offers
                    </a>

                    <a href="accessories.aspx">
                        Accessories
                    </a>

                </div>


                <!-- ICONS -->

                <div class="nav-icons">

                    <a href="profile.aspx">
                        <i class="fa-regular fa-user"></i>
                    </a>

                    <a href="wishlist.aspx"
                       class="icon-with-badge">

                        <i class="fa-regular fa-heart"></i>

                        <span>4</span>

                    </a>

                    <a href="cart.aspx"
                       class="icon-with-badge">

                        <i class="fa-solid fa-bag-shopping"></i>

                        <span>3</span>

                    </a>

                </div>

            </div>

        </div>

    </nav>


    <!-- ================= HERO SECTION ================= -->

    <section class="hero-section">

        <div class="container-fluid px-4">

            <div class="hero-content">


                <!-- LEFT SIDE -->

                <div class="hero-left">

                    <div class="season-badge">

                        <i class="fa-solid fa-bolt"></i>

                        New Season Launch — Flat 12% Off

                    </div>


                    <h1>

                        Every spec.<br />

                        Every phone.
                        <span>One</span><br />

                        <strong>place.</strong>

                    </h1>


                    <p>

                        Compare RAM, storage, camera and battery
                        side-by-side, then buy the phone that actually
                        fits how you use it — not just what's trending.

                    </p>


                    <!-- BUTTONS -->

                    <div class="hero-buttons">

                        <a href="all-mobiles.aspx"
                           class="btn-primary-custom">

                            <i class="fa-solid fa-bag-shopping"></i>

                            Shop All Mobiles

                        </a>


                        <a href="offers.aspx"
                           class="btn-outline-custom">

                            View Offers

                        </a>

                    </div>


                    <!-- STATS -->

                    <div class="stats">

                        <div class="stat-box">

                            <h3>2.4M+</h3>

                            <p>Happy customers</p>

                        </div>


                        <div class="stat-box">

                            <h3>180+</h3>

                            <p>Phone models</p>

                        </div>


                        <div class="stat-box">

                            <h3>4.8/5</h3>

                            <p>Average rating</p>

                        </div>

                    </div>

                </div>


                <!-- RIGHT SIDE -->

                <div class="hero-right">


                    <!-- PHONE -->

                    <div class="phone-shadow">

                        <div class="phone">

                            <div class="phone-speaker"></div>

                            <div class="phone-screen">

                                <div class="screen-glow"></div>

                            </div>

                        </div>

                    </div>


                    <!-- CHIP 1 -->

                    <div class="floating-chip chip-one">

                        <i class="fa-solid fa-microchip"></i>

                        Snapdragon 8 Gen 3

                    </div>


                    <!-- CHIP 2 -->

                    <div class="floating-chip chip-two">

                        <i class="fa-solid fa-camera"></i>

                        108MP Triple Cam

                    </div>


                    <!-- CHIP 3 -->

                    <div class="floating-chip chip-three">

                        <i class="fa-solid fa-star"></i>

                        4.7 (12k reviews)

                    </div>


                    <!-- CHIP 4 -->

                    <div class="floating-chip chip-four">

                        <i class="fa-solid fa-battery-three-quarters"></i>

                        5000mAh · 67W

                    </div>


                    <!-- CHIP 5 -->

                    <div class="floating-chip chip-five">

                        <i class="fa-solid fa-memory"></i>

                        12GB + 256GB

                    </div>

                </div>

            </div>

        </div>

    </section>


    <!-- ================= CATEGORY BAR ================= -->

    <section class="category-section">

        <div class="container-fluid px-4">

            <div class="category-list">


                <a href="all-mobiles.aspx"
                   class="category active">

                    <i class="fa-solid fa-crown"></i>

                    Flagship

                </a>


                <a href="categories.aspx"
                   class="category">

                    <i class="fa-solid fa-wallet"></i>

                    Budget

                </a>


                <a href="categories.aspx"
                   class="category">

                    <i class="fa-solid fa-gamepad"></i>

                    Gaming

                </a>


                <a href="categories.aspx"
                   class="category">

                    <i class="fa-solid fa-camera"></i>

                    Camera

                </a>


                <a href="categories.aspx"
                   class="category">

                    <i class="fa-solid fa-tower-broadcast"></i>

                    5G

                </a>


                <a href="categories.aspx"
                   class="category">

                    <i class="fa-solid fa-mobile-screen-button"></i>

                    Foldable

                </a>


                <a href="accessories.aspx"
                   class="category">

                    <i class="fa-solid fa-headphones"></i>

                    Accessories

                </a>


                <a href="accessories.aspx"
                   class="category">

                    <i class="fa-solid fa-plug"></i>

                    Chargers

                </a>


            </div>

        </div>

    </section>


    <!-- ================= FEATURED PRODUCTS ================= -->

    <section class="products-section">

        <div class="container-fluid px-4">


            <div class="section-heading">

                <div>

                    <span>EXPLORE</span>

                    <h2>Featured Mobiles</h2>

                </div>


                <a href="all-mobiles.aspx">
                    View All Mobiles
                    <i class="fa-solid fa-arrow-right"></i>
                </a>

            </div>


            <div class="row g-4">


                <!-- PRODUCT 1 -->

                <div class="col-xl-3 col-lg-4 col-md-6">

                    <div class="product-card">

                        <div class="product-image">

                            <div class="mini-phone phone-blue"></div>

                            <span class="product-badge">
                                Bestseller
                            </span>

                        </div>


                        <div class="product-info">

                            <small>Samsung</small>

                            <h3>Galaxy S25 Ultra</h3>

                            <div class="rating">

                                ★★★★★

                                <span>
                                    4.8 (245)
                                </span>

                            </div>


                            <div class="price">

                                ₹1,29,999

                                <del>₹1,39,999</del>

                            </div>


                            <a href="product-details.aspx"
                               class="product-btn">

                                View Details

                            </a>

                        </div>

                    </div>

                </div>


                <!-- PRODUCT 2 -->

                <div class="col-xl-3 col-lg-4 col-md-6">

                    <div class="product-card">

                        <div class="product-image">

                            <div class="mini-phone phone-black"></div>

                            <span class="product-badge">
                                New
                            </span>

                        </div>


                        <div class="product-info">

                            <small>Apple</small>

                            <h3>iPhone 16 Pro Max</h3>

                            <div class="rating">

                                ★★★★★

                                <span>
                                    4.9 (312)
                                </span>

                            </div>


                            <div class="price">

                                ₹1,44,999

                                <del>₹1,54,999</del>

                            </div>


                            <a href="product-details.aspx"
                               class="product-btn">

                                View Details

                            </a>

                        </div>

                    </div>

                </div>


                <!-- PRODUCT 3 -->

                <div class="col-xl-3 col-lg-4 col-md-6">

                    <div class="product-card">

                        <div class="product-image">

                            <div class="mini-phone phone-green"></div>

                            <span class="product-badge">
                                12% OFF
                            </span>

                        </div>


                        <div class="product-info">

                            <small>OnePlus</small>

                            <h3>OnePlus 13</h3>

                            <div class="rating">

                                ★★★★★

                                <span>
                                    4.7 (198)
                                </span>

                            </div>


                            <div class="price">

                                ₹69,999

                                <del>₹79,999</del>

                            </div>


                            <a href="product-details.aspx"
                               class="product-btn">

                                View Details

                            </a>

                        </div>

                    </div>

                </div>


                <!-- PRODUCT 4 -->

                <div class="col-xl-3 col-lg-4 col-md-6">

                    <div class="product-card">

                        <div class="product-image">

                            <div class="mini-phone phone-purple"></div>

                            <span class="product-badge">
                                Popular
                            </span>

                        </div>


                        <div class="product-info">

                            <small>Vivo</small>

                            <h3>Vivo X200 Pro</h3>

                            <div class="rating">

                                ★★★★★

                                <span>
                                    4.6 (167)
                                </span>

                            </div>


                            <div class="price">

                                ₹94,999

                                <del>₹99,999</del>

                            </div>


                            <a href="product-details.aspx"
                               class="product-btn">

                                View Details

                            </a>

                        </div>

                    </div>

                </div>


            </div>

        </div>

    </section>


    <!-- ================= FOOTER ================= -->

    <footer class="footer">

        <div class="container-fluid px-4">

            <div class="footer-grid">


                <div>

                    <a href="index.aspx"
                       class="footer-logo">

                        Mobile<span>Hub</span><b>.</b>

                    </a>

                    <p>

                        Your one place for comparing
                        and buying smartphones.

                    </p>

                </div>


                <div>

                    <h4>Quick Links</h4>

                    <a href="index.aspx">Home</a>

                    <a href="all-mobiles.aspx">All Mobiles</a>

                    <a href="brands.aspx">Brands</a>

                    <a href="offers.aspx">Offers</a>

                </div>


                <div>

                    <h4>Support</h4>

                    <a href="contact.aspx">Contact Us</a>

                    <a href="faq.aspx">FAQ</a>

                    <a href="track-order.aspx">Track Order</a>

                    <a href="about.aspx">About Us</a>

                </div>


                <div>

                    <h4>Follow Us</h4>

                    <div class="social-icons">

                        <a href="#">
                            <i class="fa-brands fa-instagram"></i>
                        </a>

                        <a href="#">
                            <i class="fa-brands fa-facebook"></i>
                        </a>

                        <a href="#">
                            <i class="fa-brands fa-x-twitter"></i>
                        </a>

                    </div>

                </div>


            </div>


            <div class="copyright">

                © 2026 MobileHub. All Rights Reserved.

            </div>

        </div>

    </footer>


</form>


<!-- Bootstrap JS -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>

</body>

</html>