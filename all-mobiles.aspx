<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">

    <meta charset="utf-8" />

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0" />

    <title>All Mobiles | MobileHub</title>

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

        .mobiles-page {
            background: #f5f7fb;
            min-height: 100vh;
            padding-bottom: 70px;
        }


        /* PAGE HEADER */

        .mobiles-header {
            background: linear-gradient(115deg, #101827, #1d3970);
            color: white;
            padding: 55px 0;
        }


        .mobiles-header-content {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 30px;
        }


        .mobiles-header h1 {
            font-size: 40px;
            font-weight: 800;
            margin-bottom: 10px;
        }


        .mobiles-header p {
            color: #bdc7d9;
            font-size: 14px;
            margin: 0;
        }


        .mobile-count {
            background: rgba(255,255,255,.1);
            border: 1px solid rgba(255,255,255,.15);
            padding: 14px 22px;
            border-radius: 15px;
            text-align: center;
        }


        .mobile-count strong {
            display: block;
            font-size: 25px;
        }


        .mobile-count span {
            font-size: 11px;
            color: #b8c3d5;
        }


        /* CONTENT */

        .mobiles-content {
            padding-top: 35px;
        }


        /* FILTER */

        .filter-card {
            background: white;
            border: 1px solid #e3e7ef;
            border-radius: 18px;
            padding: 22px;
            margin-bottom: 30px;
        }


        .filter-top {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 18px;
        }


        .filter-top h3 {
            font-size: 17px;
            font-weight: 700;
            margin: 0;
        }


        .filter-top a {
            color: #2563eb;
            font-size: 12px;
            font-weight: 600;
        }


        .filter-buttons {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
        }


        .filter-btn {
            border: 1px solid #dfe4ec;
            background: #fff;
            color: #344054;
            padding: 8px 17px;
            border-radius: 22px;
            font-size: 12px;
            font-weight: 600;
            cursor: pointer;
        }


        .filter-btn:hover,
        .filter-btn.active {
            background: #2563eb;
            border-color: #2563eb;
            color: white;
        }


        /* TOOLBAR */

        .product-toolbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 22px;
        }


        .product-toolbar p {
            margin: 0;
            color: #6f7b8e;
            font-size: 13px;
        }


        .sort-box {
            height: 40px;
            border: 1px solid #dfe4ec;
            background: white;
            border-radius: 9px;
            padding: 0 12px;
            font-family: 'Poppins', sans-serif;
            font-size: 12px;
            outline: none;
        }


        /* PRODUCT CARD */

        .mobile-card {
            background: white;
            border: 1px solid #e4e8ef;
            border-radius: 18px;
            overflow: hidden;
            height: 100%;
            transition: .3s;
        }


        .mobile-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 16px 35px rgba(15,31,61,.12);
        }


        .mobile-image {
            height: 245px;
            background: #f6f8fb;
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
        }


        .mobile-image .badge {
            position: absolute;
            top: 14px;
            left: 14px;
            background: #2563eb;
            color: white;
            border-radius: 15px;
            padding: 5px 10px;
            font-size: 9px;
            font-weight: 700;
        }


        .heart-btn {
            position: absolute;
            top: 13px;
            right: 13px;
            width: 34px;
            height: 34px;
            border-radius: 50%;
            border: 1px solid #e1e5ec;
            background: white;
            color: #6d788b;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
        }


        .heart-btn:hover {
            color: #ef4444;
        }


        /* PHONE VISUAL */

        .phone-visual {
            width: 105px;
            height: 185px;
            border-radius: 23px;
            border: 5px solid #151a24;
            position: relative;
            box-shadow: 0 15px 30px rgba(0,0,0,.18);
        }


        .phone-visual::before {
            content: "";
            position: absolute;
            width: 34px;
            height: 5px;
            border-radius: 6px;
            background: #222936;
            top: 5px;
            left: 50%;
            transform: translateX(-50%);
        }


        .phone-blue {
            background: linear-gradient(145deg,#6fa9ff,#203d7c);
        }


        .phone-black {
            background: linear-gradient(145deg,#444a55,#090c12);
        }


        .phone-green {
            background: linear-gradient(145deg,#66b995,#173f36);
        }


        .phone-purple {
            background: linear-gradient(145deg,#ad8ee1,#3b2859);
        }


        .phone-red {
            background: linear-gradient(145deg,#e87979,#641f29);
        }


        .phone-silver {
            background: linear-gradient(145deg,#e5e9ef,#737b89);
        }


        .phone-orange {
            background: linear-gradient(145deg,#ffb35c,#874516);
        }


        .phone-white {
            background: linear-gradient(145deg,#ffffff,#9ba3af);
        }


        /* DETAILS */

        .mobile-details {
            padding: 19px;
        }


        .brand-name {
            color: #7b8799;
            font-size: 11px;
            font-weight: 600;
        }


        .mobile-details h3 {
            font-size: 16px;
            font-weight: 700;
            margin: 5px 0 8px;
        }


        .mobile-rating {
            color: #f5a800;
            font-size: 12px;
        }


        .mobile-rating span {
            color: #8792a5;
            margin-left: 5px;
            font-size: 10px;
        }


        .spec-list {
            display: flex;
            gap: 5px;
            flex-wrap: wrap;
            margin: 12px 0;
        }


        .spec {
            background: #f3f5f8;
            color: #667085;
            padding: 4px 7px;
            border-radius: 5px;
            font-size: 9px;
        }


        .mobile-price {
            font-size: 19px;
            font-weight: 800;
        }


        .mobile-price del {
            font-size: 10px;
            color: #98a1b1;
            margin-left: 5px;
        }


        .view-mobile {
            display: block;
            text-align: center;
            background: #edf3ff;
            color: #2563eb;
            padding: 9px;
            border-radius: 9px;
            margin-top: 13px;
            font-size: 12px;
            font-weight: 700;
        }


        .view-mobile:hover {
            background: #2563eb;
            color: white;
        }


        /* RESPONSIVE */

        @media(max-width: 767px) {

            .mobiles-header-content {
                flex-direction: column;
                align-items: flex-start;
            }

            .mobiles-header h1 {
                font-size: 32px;
            }

            .product-toolbar {
                gap: 15px;
                flex-direction: column;
                align-items: flex-start;
            }

        }

    </style>

</head>


<body>

<form id="mobileForm" runat="server">


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

                    <a href="all-mobiles.aspx"
                       class="active">
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


    <!-- ================= PAGE ================= -->

    <div class="mobiles-page">


        <!-- HEADER -->

        <section class="mobiles-header">

            <div class="container-fluid px-4">

                <div class="mobiles-header-content">

                    <div>

                        <h1>
                            Explore All Mobiles
                        </h1>

                        <p>
                            Compare specifications, prices and features
                            to find the perfect smartphone for you.
                        </p>

                    </div>


                    <div class="mobile-count">

                        <strong>180+</strong>

                        <span>
                            Mobile Models
                        </span>

                    </div>

                </div>

            </div>

        </section>


        <!-- CONTENT -->

        <section class="mobiles-content">

            <div class="container-fluid px-4">


                <!-- FILTER -->

                <div class="filter-card">

                    <div class="filter-top">

                        <h3>
                            <i class="fa-solid fa-filter"></i>
                            &nbsp; Browse by Brand
                        </h3>

                        <a href="all-mobiles.aspx">
                            Clear All
                        </a>

                    </div>


                    <div class="filter-buttons">

                        <button type="button"
                                class="filter-btn active">
                            All
                        </button>

                        <button type="button"
                                class="filter-btn">
                            Apple
                        </button>

                        <button type="button"
                                class="filter-btn">
                            Samsung
                        </button>

                        <button type="button"
                                class="filter-btn">
                            OnePlus
                        </button>

                        <button type="button"
                                class="filter-btn">
                            Xiaomi
                        </button>

                        <button type="button"
                                class="filter-btn">
                            Vivo
                        </button>

                        <button type="button"
                                class="filter-btn">
                            Oppo
                        </button>

                        <button type="button"
                                class="filter-btn">
                            Realme
                        </button>

                        <button type="button"
                                class="filter-btn">
                            Motorola
                        </button>

                    </div>

                </div>


                <!-- TOOLBAR -->

                <div class="product-toolbar">

                    <p>
                        Showing <strong>12</strong> of
                        <strong>180+</strong> mobiles
                    </p>


                    <select class="sort-box">

                        <option>
                            Sort: Featured
                        </option>

                        <option>
                            Price: Low to High
                        </option>

                        <option>
                            Price: High to Low
                        </option>

                        <option>
                            Top Rated
                        </option>

                        <option>
                            Newest
                        </option>

                    </select>

                </div>


                <!-- PRODUCTS -->

                <div class="row g-4">


                    <!-- 1 -->

                    <div class="col-xl-3 col-lg-4 col-md-6">

                        <div class="mobile-card">

                            <div class="mobile-image">

                                <span class="badge">
                                    Bestseller
                                </span>

                                <button class="heart-btn">
                                    <i class="fa-regular fa-heart"></i>
                                </button>

                                <div class="phone-visual phone-blue"></div>

                            </div>


                            <div class="mobile-details">

                                <div class="brand-name">
                                    Samsung
                                </div>

                                <h3>
                                    Galaxy S25 Ultra
                                </h3>

                                <div class="mobile-rating">
                                    ★★★★★
                                    <span>4.8 (245)</span>
                                </div>


                                <div class="spec-list">

                                    <span class="spec">12GB RAM</span>

                                    <span class="spec">256GB</span>

                                    <span class="spec">5G</span>

                                </div>


                                <div class="mobile-price">
                                    ₹1,29,999
                                    <del>₹1,39,999</del>
                                </div>


                                <a href="product-details.aspx"
                                   class="view-mobile">

                                    View Details

                                </a>

                            </div>

                        </div>

                    </div>


                    <!-- 2 -->

                    <div class="col-xl-3 col-lg-4 col-md-6">

                        <div class="mobile-card">

                            <div class="mobile-image">

                                <span class="badge">
                                    New
                                </span>

                                <button class="heart-btn">
                                    <i class="fa-regular fa-heart"></i>
                                </button>

                                <div class="phone-visual phone-black"></div>

                            </div>


                            <div class="mobile-details">

                                <div class="brand-name">
                                    Apple
                                </div>

                                <h3>
                                    iPhone 16 Pro Max
                                </h3>

                                <div class="mobile-rating">
                                    ★★★★★
                                    <span>4.9 (312)</span>
                                </div>


                                <div class="spec-list">

                                    <span class="spec">8GB RAM</span>

                                    <span class="spec">256GB</span>

                                    <span class="spec">5G</span>

                                </div>


                                <div class="mobile-price">
                                    ₹1,44,999
                                    <del>₹1,54,999</del>
                                </div>


                                <a href="product-details.aspx"
                                   class="view-mobile">

                                    View Details

                                </a>

                            </div>

                        </div>

                    </div>


                    <!-- 3 -->

                    <div class="col-xl-3 col-lg-4 col-md-6">

                        <div class="mobile-card">

                            <div class="mobile-image">

                                <span class="badge">
                                    12% OFF
                                </span>

                                <button class="heart-btn">
                                    <i class="fa-regular fa-heart"></i>
                                </button>

                                <div class="phone-visual phone-green"></div>

                            </div>


                            <div class="mobile-details">

                                <div class="brand-name">
                                    OnePlus
                                </div>

                                <h3>
                                    OnePlus 13
                                </h3>

                                <div class="mobile-rating">
                                    ★★★★★
                                    <span>4.7 (198)</span>
                                </div>


                                <div class="spec-list">

                                    <span class="spec">12GB RAM</span>

                                    <span class="spec">256GB</span>

                                    <span class="spec">5G</span>

                                </div>


                                <div class="mobile-price">
                                    ₹69,999
                                    <del>₹79,999</del>
                                </div>


                                <a href="product-details.aspx"
                                   class="view-mobile">

                                    View Details

                                </a>

                            </div>

                        </div>

                    </div>


                    <!-- 4 -->

                    <div class="col-xl-3 col-lg-4 col-md-6">

                        <div class="mobile-card">

                            <div class="mobile-image">

                                <span class="badge">
                                    Popular
                                </span>

                                <button class="heart-btn">
                                    <i class="fa-regular fa-heart"></i>
                                </button>

                                <div class="phone-visual phone-purple"></div>

                            </div>


                            <div class="mobile-details">

                                <div class="brand-name">
                                    Vivo
                                </div>

                                <h3>
                                    Vivo X200 Pro
                                </h3>

                                <div class="mobile-rating">
                                    ★★★★★
                                    <span>4.6 (167)</span>
                                </div>


                                <div class="spec-list">

                                    <span class="spec">16GB RAM</span>

                                    <span class="spec">512GB</span>

                                    <span class="spec">5G</span>

                                </div>


                                <div class="mobile-price">
                                    ₹94,999
                                    <del>₹99,999</del>
                                </div>


                                <a href="product-details.aspx"
                                   class="view-mobile">

                                    View Details

                                </a>

                            </div>

                        </div>

                    </div>


                    <!-- 5 -->

                    <div class="col-xl-3 col-lg-4 col-md-6">

                        <div class="mobile-card">

                            <div class="mobile-image">

                                <span class="badge">
                                    10% OFF
                                </span>

                                <button class="heart-btn">
                                    <i class="fa-regular fa-heart"></i>
                                </button>

                                <div class="phone-visual phone-red"></div>

                            </div>


                            <div class="mobile-details">

                                <div class="brand-name">
                                    Xiaomi
                                </div>

                                <h3>
                                    Xiaomi 15 Ultra
                                </h3>

                                <div class="mobile-rating">
                                    ★★★★★
                                    <span>4.7 (154)</span>
                                </div>


                                <div class="spec-list">

                                    <span class="spec">16GB RAM</span>

                                    <span class="spec">512GB</span>

                                    <span class="spec">5G</span>

                                </div>


                                <div class="mobile-price">
                                    ₹79,999
                                    <del>₹89,999</del>
                                </div>


                                <a href="product-details.aspx"
                                   class="view-mobile">

                                    View Details

                                </a>

                            </div>

                        </div>

                    </div>


                    <!-- 6 -->

                    <div class="col-xl-3 col-lg-4 col-md-6">

                        <div class="mobile-card">

                            <div class="mobile-image">

                                <span class="badge">
                                    New
                                </span>

                                <button class="heart-btn">
                                    <i class="fa-regular fa-heart"></i>
                                </button>

                                <div class="phone-visual phone-silver"></div>

                            </div>


                            <div class="mobile-details">

                                <div class="brand-name">
                                    Oppo
                                </div>

                                <h3>
                                    OPPO Find X8 Pro
                                </h3>

                                <div class="mobile-rating">
                                    ★★★★★
                                    <span>4.6 (129)</span>
                                </div>


                                <div class="spec-list">

                                    <span class="spec">16GB RAM</span>

                                    <span class="spec">512GB</span>

                                    <span class="spec">5G</span>

                                </div>


                                <div class="mobile-price">
                                    ₹89,999
                                    <del>₹94,999</del>
                                </div>


                                <a href="product-details.aspx"
                                   class="view-mobile">

                                    View Details

                                </a>

                            </div>

                        </div>

                    </div>


                    <!-- 7 -->

                    <div class="col-xl-3 col-lg-4 col-md-6">

                        <div class="mobile-card">

                            <div class="mobile-image">

                                <span class="badge">
                                    Best Value
                                </span>

                                <button class="heart-btn">
                                    <i class="fa-regular fa-heart"></i>
                                </button>

                                <div class="phone-visual phone-orange"></div>

                            </div>


                            <div class="mobile-details">

                                <div class="brand-name">
                                    Realme
                                </div>

                                <h3>
                                    Realme GT 7 Pro
                                </h3>

                                <div class="mobile-rating">
                                    ★★★★★
                                    <span>4.5 (98)</span>
                                </div>


                                <div class="spec-list">

                                    <span class="spec">12GB RAM</span>

                                    <span class="spec">256GB</span>

                                    <span class="spec">5G</span>

                                </div>


                                <div class="mobile-price">
                                    ₹59,999
                                    <del>₹64,999</del>
                                </div>


                                <a href="product-details.aspx"
                                   class="view-mobile">

                                    View Details

                                </a>

                            </div>

                        </div>

                    </div>


                    <!-- 8 -->

                    <div class="col-xl-3 col-lg-4 col-md-6">

                        <div class="mobile-card">

                            <div class="mobile-image">

                                <span class="badge">
                                    Popular
                                </span>

                                <button class="heart-btn">
                                    <i class="fa-regular fa-heart"></i>
                                </button>

                                <div class="phone-visual phone-white"></div>

                            </div>


                            <div class="mobile-details">

                                <div class="brand-name">
                                    Motorola
                                </div>

                                <h3>
                                    Motorola Edge 60 Pro
                                </h3>

                                <div class="mobile-rating">
                                    ★★★★★
                                    <span>4.5 (86)</span>
                                </div>


                                <div class="spec-list">

                                    <span class="spec">12GB RAM</span>

                                    <span class="spec">256GB</span>

                                    <span class="spec">5G</span>

                                </div>


                                <div class="mobile-price">
                                    ₹39,999
                                    <del>₹44,999</del>
                                </div>


                                <a href="product-details.aspx"
                                   class="view-mobile">

                                    View Details

                                </a>

                            </div>

                        </div>

                    </div>

                </div>


            </div>

        </section>


    </div>


</form>


<script>

    document.querySelectorAll(".filter-btn").forEach(function (button) {

        button.addEventListener("click", function () {

            document.querySelectorAll(".filter-btn")
                .forEach(function (item) {

                    item.classList.remove("active");

                });

            this.classList.add("active");

        });

    });


    document.querySelectorAll(".heart-btn").forEach(function (button) {

        button.addEventListener("click", function () {

            var icon = this.querySelector("i");

            icon.classList.toggle("fa-regular");

            icon.classList.toggle("fa-solid");

        });

    });

</script>


</body>

</html>