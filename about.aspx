<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">

    <meta charset="utf-8" />

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0" />

    <title>About Us | MobileHub</title>

    <link rel="preconnect"
          href="https://fonts.googleapis.com">

    <link rel="preconnect"
          href="https://fonts.gstatic.com"
          crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800&display=swap"
          rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

    <link href="css/style.css" rel="stylesheet">


    <style>

        .about-page {
            background: #f5f7fb;
            min-height: 100vh;
            padding: 35px 0 70px;
        }

        .page-heading {
            text-align: center;
            margin-bottom: 35px;
        }

        .page-heading h1 {
            font-size: 30px;
            font-weight: 800;
            color: #101828;
            margin-bottom: 7px;
        }

        .page-heading p {
            color: #7b8799;
            font-size: 10px;
            margin: 0;
        }

        .about-card {
            background: white;
            border: 1px solid #e2e7ef;
            border-radius: 18px;
            padding: 30px;
            margin-bottom: 22px;
        }

        .about-card h2 {
            font-size: 21px;
            font-weight: 800;
            color: #101828;
            margin-bottom: 12px;
        }

        .about-card p {
            color: #7b8799;
            font-size: 9px;
            line-height: 1.9;
            margin-bottom: 10px;
        }

        /* HERO */

        .about-hero {
            display: flex;
            align-items: center;
            gap: 40px;
        }

        .hero-content {
            flex: 1;
        }

        .hero-content .tag {
            display: inline-block;
            background: #edf3ff;
            color: #2563eb;
            padding: 7px 12px;
            border-radius: 15px;
            font-size: 8px;
            font-weight: 700;
            margin-bottom: 12px;
        }

        .hero-content h2 {
            font-size: 25px;
            margin-bottom: 12px;
        }

        .hero-image {
            width: 300px;
            height: 220px;
            background: linear-gradient(145deg,#edf3ff,#f7f9fc);
            border-radius: 15px;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-shrink: 0;
        }

        .hero-phone {
            width: 65px;
            height: 130px;
            border: 5px solid #171b24;
            border-radius: 15px;
            background: linear-gradient(145deg,#6fa9ff,#203d7c);
            position: relative;
            box-shadow: 0 15px 30px rgba(37,99,235,.18);
        }

        .hero-phone:before {
            content: "";
            position: absolute;
            width: 22px;
            height: 5px;
            border-radius: 10px;
            background: #171b24;
            top: 7px;
            left: 50%;
            transform: translateX(-50%);
        }

        /* FEATURES */

        .feature-card {
            background: white;
            border: 1px solid #e2e7ef;
            border-radius: 15px;
            padding: 22px;
            height: 100%;
            text-align: center;
        }

        .feature-icon {
            width: 52px;
            height: 52px;
            border-radius: 13px;
            background: #edf3ff;
            color: #2563eb;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 15px;
            font-size: 18px;
        }

        .feature-card h3 {
            font-size: 11px;
            font-weight: 800;
            color: #101828;
            margin-bottom: 7px;
        }

        .feature-card p {
            font-size: 8px;
            color: #8993a4;
            line-height: 1.7;
            margin: 0;
        }

        /* STATS */

        .stats-section {
            background: #2563eb;
            border-radius: 18px;
            padding: 28px 20px;
            margin-bottom: 22px;
        }

        .stat {
            text-align: center;
            color: white;
        }

        .stat i {
            font-size: 20px;
            margin-bottom: 8px;
        }

        .stat h3 {
            font-size: 21px;
            font-weight: 800;
            margin: 0 0 3px;
        }

        .stat p {
            font-size: 8px;
            margin: 0;
            opacity: .85;
        }

        /* MISSION */

        .mission-box {
            text-align: center;
            padding: 10px 30px;
        }

        .mission-icon {
            width: 58px;
            height: 58px;
            border-radius: 50%;
            background: #edf3ff;
            color: #2563eb;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 15px;
            font-size: 20px;
        }

        .mission-box h2 {
            font-size: 20px;
        }

        @media(max-width: 767px) {

            .about-hero {
                flex-direction: column;
                gap: 25px;
            }

            .hero-image {
                width: 100%;
            }

            .about-card {
                padding: 22px;
            }

        }

    </style>

</head>


<body>

<form id="aboutForm" runat="server">


    <!-- ================= NAVBAR ================= -->

    <nav class="main-navbar">

        <div class="container-fluid px-4">

            <div class="navbar-content">

                <a href="index.aspx"
                   class="logo">

                    Mobile<span>Hub</span><b>.</b>

                </a>


                <div class="search-box">

                    <i class="fa-solid fa-magnifying-glass"></i>

                    <input type="text"
                           placeholder="Search phones, brands, accessories..." />

                </div>


                <div class="menu-links">

                    <a href="index.aspx">
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

                </div>


                <div class="nav-icons">

                    <a href="profile.aspx">

                        <i class="fa-regular fa-user"></i>

                    </a>


                    <a href="wishlist.aspx">

                        <i class="fa-regular fa-heart"></i>

                    </a>


                    <a href="cart.aspx">

                        <i class="fa-solid fa-bag-shopping"></i>

                    </a>

                </div>

            </div>

        </div>

    </nav>


    <!-- ================= ABOUT ================= -->

    <section class="about-page">

        <div class="container">


            <div class="page-heading">

                <h1>
                    About MobileHub
                </h1>

                <p>
                    Your trusted destination for smartphones and accessories.
                </p>

            </div>


            <!-- HERO -->

            <div class="about-card">

                <div class="about-hero">


                    <div class="hero-content">

                        <span class="tag">
                            ABOUT US
                        </span>


                        <h2>
                            Making Smartphone Shopping Simple
                        </h2>


                        <p>
                            MobileHub is a modern online mobile shopping
                            platform created to make buying smartphones,
                            tablets and mobile accessories simple,
                            convenient and reliable.
                        </p>


                        <p>
                            We bring products from popular brands together
                            in one place so customers can easily compare
                            products, explore features and choose the
                            device that fits their needs.
                        </p>


                    </div>


                    <div class="hero-image">

                        <div class="hero-phone"></div>

                    </div>


                </div>

            </div>


            <!-- FEATURES -->

            <div class="row g-3 mb-4">


                <div class="col-md-4">

                    <div class="feature-card">

                        <div class="feature-icon">

                            <i class="fa-solid fa-shield-halved"></i>

                        </div>

                        <h3>
                            Trusted Products
                        </h3>

                        <p>
                            We focus on providing genuine and
                            quality products from popular brands.
                        </p>

                    </div>

                </div>


                <div class="col-md-4">

                    <div class="feature-card">

                        <div class="feature-icon">

                            <i class="fa-solid fa-tags"></i>

                        </div>

                        <h3>
                            Best Deals
                        </h3>

                        <p>
                            Discover competitive prices,
                            special offers and exciting deals.
                        </p>

                    </div>

                </div>


                <div class="col-md-4">

                    <div class="feature-card">

                        <div class="feature-icon">

                            <i class="fa-solid fa-headset"></i>

                        </div>

                        <h3>
                            Customer Support
                        </h3>

                        <p>
                            Our support team is always ready
                            to help customers with their queries.
                        </p>

                    </div>

                </div>


            </div>


            <!-- STATS -->

            <div class="stats-section">


                <div class="row g-4">


                    <div class="col-6 col-md-3">

                        <div class="stat">

                            <i class="fa-solid fa-mobile-screen-button"></i>

                            <h3>
                                500+
                            </h3>

                            <p>
                                Smartphones
                            </p>

                        </div>

                    </div>


                    <div class="col-6 col-md-3">

                        <div class="stat">

                            <i class="fa-solid fa-users"></i>

                            <h3>
                                10K+
                            </h3>

                            <p>
                                Happy Customers
                            </p>

                        </div>

                    </div>


                    <div class="col-6 col-md-3">

                        <div class="stat">

                            <i class="fa-solid fa-box"></i>

                            <h3>
                                25K+
                            </h3>

                            <p>
                                Orders Delivered
                            </p>

                        </div>

                    </div>


                    <div class="col-6 col-md-3">

                        <div class="stat">

                            <i class="fa-solid fa-star"></i>

                            <h3>
                                4.8/5
                            </h3>

                            <p>
                                Customer Rating
                            </p>

                        </div>

                    </div>


                </div>


            </div>


            <!-- OUR STORY -->

            <div class="about-card">

                <h2>
                    Our Story
                </h2>

                <p>
                    MobileHub started with a simple idea:
                    smartphone shopping should be easy for everyone.
                    Instead of visiting multiple stores and websites,
                    customers can explore different smartphones,
                    brands and accessories from one convenient platform.
                </p>

                <p>
                    Our goal is to create a smooth shopping experience
                    with clear product information, easy navigation,
                    attractive offers and dependable customer service.
                </p>

            </div>


            <!-- MISSION -->

            <div class="about-card">

                <div class="mission-box">

                    <div class="mission-icon">

                        <i class="fa-solid fa-bullseye"></i>

                    </div>


                    <h2>
                        Our Mission
                    </h2>


                    <p>
                        Our mission is to provide customers with a
                        simple, transparent and enjoyable mobile
                        shopping experience while offering quality
                        products at competitive prices.
                    </p>

                </div>

            </div>


            <!-- WHY MOBILEHUB -->

            <div class="about-card">

                <h2>
                    Why Choose MobileHub?
                </h2>


                <div class="row g-3">


                    <div class="col-md-6">

                        <p>
                            <i class="fa-solid fa-check"
                               style="color:#2563eb;margin-right:7px;">
                            </i>

                            Wide range of smartphones and accessories
                        </p>

                    </div>


                    <div class="col-md-6">

                        <p>
                            <i class="fa-solid fa-check"
                               style="color:#2563eb;margin-right:7px;">
                            </i>

                            Easy-to-use shopping experience
                        </p>

                    </div>


                    <div class="col-md-6">

                        <p>
                            <i class="fa-solid fa-check"
                               style="color:#2563eb;margin-right:7px;">
                            </i>

                            Attractive offers and discounts
                        </p>

                    </div>


                    <div class="col-md-6">

                        <p>
                            <i class="fa-solid fa-check"
                               style="color:#2563eb;margin-right:7px;">
                            </i>

                            Fast and reliable delivery
                        </p>

                    </div>


                    <div class="col-md-6">

                        <p>
                            <i class="fa-solid fa-check"
                               style="color:#2563eb;margin-right:7px;">
                            </i>

                            Secure payment options
                        </p>

                    </div>


                    <div class="col-md-6">

                        <p>
                            <i class="fa-solid fa-check"
                               style="color:#2563eb;margin-right:7px;">
                            </i>

                            Dedicated customer support
                        </p>

                    </div>


                </div>

            </div>


        </div>

    </section>


</form>

</body>

</html>