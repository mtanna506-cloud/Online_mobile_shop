<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">

    <meta charset="utf-8" />

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0" />

    <title>Categories | MobileHub</title>

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

        .category-page {
            background: #f5f7fb;
            min-height: 100vh;
            padding-bottom: 70px;
        }


        /* HEADER */

        .category-hero {
            background: linear-gradient(115deg, #101827, #1d3970);
            padding: 60px 0;
            color: white;
        }


        .category-hero h1 {
            font-size: 40px;
            font-weight: 800;
            margin-bottom: 10px;
        }


        .category-hero p {
            color: #c2ccdd;
            font-size: 14px;
            max-width: 620px;
            margin: 0;
            line-height: 1.8;
        }


        /* CATEGORY CONTENT */

        .category-content {
            padding-top: 40px;
        }


        .section-title {
            text-align: center;
            margin-bottom: 30px;
        }


        .section-title h2 {
            font-size: 27px;
            font-weight: 800;
            color: #101828;
            margin-bottom: 8px;
        }


        .section-title p {
            color: #7b8799;
            font-size: 12px;
        }


        /* CARDS */

        .category-card {
            background: white;
            border: 1px solid #e2e7ef;
            border-radius: 20px;
            padding: 28px 22px;
            text-align: center;
            height: 100%;
            transition: .3s;
            cursor: pointer;
        }


        .category-card:hover {
            transform: translateY(-7px);
            box-shadow: 0 18px 40px rgba(15,31,61,.12);
            border-color: #d4dff5;
        }


        .category-icon {
            width: 70px;
            height: 70px;
            border-radius: 18px;
            background: #edf3ff;
            color: #2563eb;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 18px;
            font-size: 27px;
        }


        .category-card h3 {
            font-size: 16px;
            font-weight: 700;
            color: #101828;
            margin-bottom: 7px;
        }


        .category-card p {
            font-size: 11px;
            color: #7b8799;
            line-height: 1.6;
            min-height: 35px;
        }


        .category-card a {
            display: inline-block;
            margin-top: 8px;
            color: #2563eb;
            font-size: 11px;
            font-weight: 700;
        }


        /* FEATURED SECTION */

        .featured-section {
            margin-top: 55px;
        }


        .featured-box {
            background: white;
            border-radius: 20px;
            border: 1px solid #e2e7ef;
            overflow: hidden;
        }


        .featured-item {
            padding: 28px;
            min-height: 190px;
            display: flex;
            align-items: center;
            gap: 22px;
            border-right: 1px solid #edf0f4;
        }


        .featured-item:last-child {
            border-right: none;
        }


        .featured-icon {
            min-width: 65px;
            height: 65px;
            border-radius: 17px;
            background: #f2f5f9;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #2563eb;
            font-size: 24px;
        }


        .featured-item h3 {
            font-size: 15px;
            font-weight: 700;
            margin-bottom: 6px;
        }


        .featured-item p {
            font-size: 10px;
            color: #7b8799;
            line-height: 1.6;
            margin-bottom: 10px;
        }


        .featured-item a {
            color: #2563eb;
            font-size: 10px;
            font-weight: 700;
        }


        /* PRICE RANGE */

        .price-section {
            margin-top: 55px;
        }


        .price-card {
            background: white;
            border: 1px solid #e2e7ef;
            border-radius: 18px;
            padding: 25px;
            text-align: center;
            transition: .3s;
        }


        .price-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 30px rgba(15,31,61,.08);
        }


        .price-icon {
            width: 50px;
            height: 50px;
            border-radius: 14px;
            background: #edf3ff;
            color: #2563eb;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 13px;
        }


        .price-card h4 {
            font-size: 14px;
            font-weight: 700;
            margin-bottom: 5px;
        }


        .price-card p {
            margin: 0;
            color: #7b8799;
            font-size: 10px;
        }


        /* RESPONSIVE */

        @media(max-width: 767px) {

            .category-hero h1 {
                font-size: 32px;
            }

            .featured-item {
                border-right: none;
                border-bottom: 1px solid #edf0f4;
            }

            .featured-item:last-child {
                border-bottom: none;
            }

        }

    </style>

</head>


<body>

<form id="categoryForm" runat="server">


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

                    <a href="categories.aspx"
                       class="active">
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


    <!-- ================= PAGE ================= -->

    <div class="category-page">


        <!-- HERO -->

        <section class="category-hero">

            <div class="container-fluid px-4">

                <h1>
                    Browse Categories
                </h1>

                <p>
                    Find the perfect smartphone based on your
                    needs, lifestyle and budget. Explore our
                    carefully organized mobile categories.
                </p>

            </div>

        </section>


        <!-- CATEGORY CONTENT -->

        <section class="category-content">

            <div class="container-fluid px-4">


                <div class="section-title">

                    <h2>
                        Choose Your Category
                    </h2>

                    <p>
                        Explore smartphones designed for every type of user.
                    </p>

                </div>


                <!-- MAIN CATEGORIES -->

                <div class="row g-4">


                    <!-- 1 -->

                    <div class="col-xl-3 col-lg-4 col-md-6">

                        <div class="category-card"
                             onclick="openCategory('Flagship')">

                            <div class="category-icon">

                                <i class="fa-solid fa-crown"></i>

                            </div>

                            <h3>
                                Flagship Phones
                            </h3>

                            <p>
                                Premium smartphones with
                                powerful performance and features.
                            </p>

                            <a href="all-mobiles.aspx">
                                Explore Category →
                            </a>

                        </div>

                    </div>


                    <!-- 2 -->

                    <div class="col-xl-3 col-lg-4 col-md-6">

                        <div class="category-card"
                             onclick="openCategory('Budget')">

                            <div class="category-icon">

                                <i class="fa-solid fa-wallet"></i>

                            </div>

                            <h3>
                                Budget Phones
                            </h3>

                            <p>
                                Affordable smartphones with
                                great everyday performance.
                            </p>

                            <a href="all-mobiles.aspx">
                                Explore Category →
                            </a>

                        </div>

                    </div>


                    <!-- 3 -->

                    <div class="col-xl-3 col-lg-4 col-md-6">

                        <div class="category-card"
                             onclick="openCategory('Gaming')">

                            <div class="category-icon">

                                <i class="fa-solid fa-gamepad"></i>

                            </div>

                            <h3>
                                Gaming Phones
                            </h3>

                            <p>
                                High-performance phones built
                                for smooth gaming.
                            </p>

                            <a href="all-mobiles.aspx">
                                Explore Category →
                            </a>

                        </div>

                    </div>


                    <!-- 4 -->

                    <div class="col-xl-3 col-lg-4 col-md-6">

                        <div class="category-card"
                             onclick="openCategory('Camera')">

                            <div class="category-icon">

                                <i class="fa-solid fa-camera"></i>

                            </div>

                            <h3>
                                Camera Phones
                            </h3>

                            <p>
                                Capture amazing photos and
                                videos with advanced cameras.
                            </p>

                            <a href="all-mobiles.aspx">
                                Explore Category →
                            </a>

                        </div>

                    </div>


                    <!-- 5 -->

                    <div class="col-xl-3 col-lg-4 col-md-6">

                        <div class="category-card"
                             onclick="openCategory('5G')">

                            <div class="category-icon">

                                <i class="fa-solid fa-signal"></i>

                            </div>

                            <h3>
                                5G Phones
                            </h3>

                            <p>
                                Experience fast and reliable
                                next-generation connectivity.
                            </p>

                            <a href="all-mobiles.aspx">
                                Explore Category →
                            </a>

                        </div>

                    </div>


                    <!-- 6 -->

                    <div class="col-xl-3 col-lg-4 col-md-6">

                        <div class="category-card"
                             onclick="openCategory('Foldable')">

                            <div class="category-icon">

                                <i class="fa-solid fa-mobile-screen-button"></i>

                            </div>

                            <h3>
                                Foldable Phones
                            </h3>

                            <p>
                                Innovative foldable designs with
                                flexible displays.
                            </p>

                            <a href="all-mobiles.aspx">
                                Explore Category →
                            </a>

                        </div>

                    </div>


                    <!-- 7 -->

                    <div class="col-xl-3 col-lg-4 col-md-6">

                        <div class="category-card"
                             onclick="openCategory('Battery')">

                            <div class="category-icon">

                                <i class="fa-solid fa-battery-full"></i>

                            </div>

                            <h3>
                                Long Battery Life
                            </h3>

                            <p>
                                Smartphones designed to keep
                                you powered throughout the day.
                            </p>

                            <a href="all-mobiles.aspx">
                                Explore Category →
                            </a>

                        </div>

                    </div>


                    <!-- 8 -->

                    <div class="col-xl-3 col-lg-4 col-md-6">

                        <div class="category-card"
                             onclick="openCategory('Performance')">

                            <div class="category-icon">

                                <i class="fa-solid fa-bolt"></i>

                            </div>

                            <h3>
                                Performance Phones
                            </h3>

                            <p>
                                Powerful processors and plenty
                                of RAM for demanding tasks.
                            </p>

                            <a href="all-mobiles.aspx">
                                Explore Category →
                            </a>

                        </div>

                    </div>


                </div>


                <!-- FEATURED -->

                <div class="featured-section">


                    <div class="section-title">

                        <h2>
                            Popular Choices
                        </h2>

                        <p>
                            Categories loved by MobileHub customers.
                        </p>

                    </div>


                    <div class="featured-box">

                        <div class="row g-0">


                            <div class="col-lg-4">

                                <div class="featured-item">

                                    <div class="featured-icon">

                                        <i class="fa-solid fa-star"></i>

                                    </div>

                                    <div>

                                        <h3>
                                            Best Sellers
                                        </h3>

                                        <p>
                                            Discover the most popular
                                            smartphones among customers.
                                        </p>

                                        <a href="all-mobiles.aspx">
                                            View Phones →
                                        </a>

                                    </div>

                                </div>

                            </div>


                            <div class="col-lg-4">

                                <div class="featured-item">

                                    <div class="featured-icon">

                                        <i class="fa-solid fa-fire"></i>

                                    </div>

                                    <div>

                                        <h3>
                                            Trending Now
                                        </h3>

                                        <p>
                                            Check out smartphones that
                                            are trending right now.
                                        </p>

                                        <a href="all-mobiles.aspx">
                                            View Phones →
                                        </a>

                                    </div>

                                </div>

                            </div>


                            <div class="col-lg-4">

                                <div class="featured-item">

                                    <div class="featured-icon">

                                        <i class="fa-solid fa-tag"></i>

                                    </div>

                                    <div>

                                        <h3>
                                            Best Deals
                                        </h3>

                                        <p>
                                            Get great smartphones at
                                            attractive prices.
                                        </p>

                                        <a href="offers.aspx">
                                            View Offers →
                                        </a>

                                    </div>

                                </div>

                            </div>


                        </div>

                    </div>

                </div>


                <!-- PRICE RANGE -->

                <div class="price-section">


                    <div class="section-title">

                        <h2>
                            Shop by Price
                        </h2>

                        <p>
                            Find a phone that fits your budget.
                        </p>

                    </div>


                    <div class="row g-4">


                        <div class="col-lg-3 col-md-6">

                            <div class="price-card">

                                <div class="price-icon">

                                    <i class="fa-solid fa-coins"></i>

                                </div>

                                <h4>
                                    Under ₹15,000
                                </h4>

                                <p>
                                    Smart everyday phones
                                </p>

                            </div>

                        </div>


                        <div class="col-lg-3 col-md-6">

                            <div class="price-card">

                                <div class="price-icon">

                                    <i class="fa-solid fa-wallet"></i>

                                </div>

                                <h4>
                                    ₹15,000 - ₹30,000
                                </h4>

                                <p>
                                    Balanced performance
                                </p>

                            </div>

                        </div>


                        <div class="col-lg-3 col-md-6">

                            <div class="price-card">

                                <div class="price-icon">

                                    <i class="fa-solid fa-mobile-screen"></i>

                                </div>

                                <h4>
                                    ₹30,000 - ₹60,000
                                </h4>

                                <p>
                                    Premium mid-range
                                </p>

                            </div>

                        </div>


                        <div class="col-lg-3 col-md-6">

                            <div class="price-card">

                                <div class="price-icon">

                                    <i class="fa-solid fa-gem"></i>

                                </div>

                                <h4>
                                    Above ₹60,000
                                </h4>

                                <p>
                                    Premium flagship phones
                                </p>

                            </div>

                        </div>


                    </div>

                </div>


            </div>

        </section>


    </div>


</form>


<script>

    function openCategory(category) {

        alert(
            category +
            " category selected. Product filtering will be connected later."
        );

    }

</script>


</body>

</html>