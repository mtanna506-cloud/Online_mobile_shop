<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">

    <meta charset="utf-8" />

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0" />

    <title>Samsung Mobiles | MobileHub</title>

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

        .brand-page {
            background: #f5f7fb;
            min-height: 100vh;
            padding: 35px 0 70px;
        }

        .brand-banner {
            background: white;
            border: 1px solid #e2e7ef;
            border-radius: 18px;
            padding: 28px;
            margin-bottom: 25px;
        }

        .brand-logo {
            width: 65px;
            height: 65px;
            border-radius: 15px;
            background: #101828;
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 25px;
            font-weight: 800;
            margin-bottom: 15px;
        }

        .brand-banner h1 {
            font-size: 26px;
            font-weight: 800;
            color: #101828;
            margin-bottom: 6px;
        }

        .brand-banner p {
            color: #8993a4;
            font-size: 9px;
            line-height: 1.8;
            max-width: 650px;
            margin-bottom: 0;
        }

        .brand-stats {
            display: flex;
            gap: 10px;
            margin-top: 18px;
        }

        .stat {
            background: #f8fafc;
            border: 1px solid #edf0f4;
            border-radius: 8px;
            padding: 10px 15px;
        }

        .stat strong {
            display: block;
            color: #101828;
            font-size: 11px;
            font-weight: 800;
        }

        .stat span {
            color: #98a1b1;
            font-size: 7px;
        }

        .section-title {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 15px;
        }

        .section-title h2 {
            font-size: 14px;
            font-weight: 800;
            color: #101828;
            margin: 0;
        }

        .section-title span {
            font-size: 8px;
            color: #8993a4;
        }

        .product-card {
            background: white;
            border: 1px solid #e2e7ef;
            border-radius: 14px;
            overflow: hidden;
            height: 100%;
            transition: .2s;
        }

        .product-card:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 25px rgba(16,24,40,.08);
        }

        .product-image {
            height: 190px;
            background: #f8fafc;
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
        }

        .phone {
            width: 62px;
            height: 120px;
            border: 5px solid #20242d;
            border-radius: 14px;
            background: linear-gradient(145deg,#78adff,#28539d);
            position: relative;
        }

        .phone:before {
            content: "";
            position: absolute;
            width: 22px;
            height: 5px;
            border-radius: 10px;
            background: #20242d;
            top: 7px;
            left: 50%;
            transform: translateX(-50%);
        }

        .sale {
            position: absolute;
            top: 10px;
            left: 10px;
            background: #eaf8ef;
            color: #16a34a;
            padding: 5px 7px;
            border-radius: 5px;
            font-size: 7px;
            font-weight: 700;
        }

        .wishlist-btn {
            position: absolute;
            top: 10px;
            right: 10px;
            width: 28px;
            height: 28px;
            border-radius: 50%;
            border: 1px solid #e2e7ef;
            background: white;
            color: #667085;
        }

        .product-info {
            padding: 14px;
        }

        .brand-name {
            color: #2563eb;
            font-size: 7px;
            font-weight: 700;
        }

        .product-info h3 {
            color: #101828;
            font-size: 10px;
            font-weight: 800;
            margin: 5px 0;
        }

        .rating {
            color: #f59e0b;
            font-size: 8px;
        }

        .rating span {
            color: #98a1b1;
            margin-left: 4px;
        }

        .price {
            margin-top: 7px;
        }

        .current-price {
            color: #101828;
            font-size: 11px;
            font-weight: 800;
        }

        .old-price {
            color: #98a1b1;
            text-decoration: line-through;
            font-size: 7px;
            margin-left: 4px;
        }

        .view-btn {
            display: block;
            text-align: center;
            background: #2563eb;
            color: white;
            text-decoration: none;
            padding: 8px;
            border-radius: 7px;
            font-size: 8px;
            font-weight: 700;
            margin-top: 10px;
        }

        .view-btn:hover {
            color: white;
            background: #1d4ed8;
        }

        .brand-links {
            background: white;
            border: 1px solid #e2e7ef;
            border-radius: 14px;
            padding: 18px;
            margin-top: 25px;
        }

        .brand-links h3 {
            color: #101828;
            font-size: 11px;
            font-weight: 800;
            margin-bottom: 12px;
        }

        .brand-link {
            display: inline-block;
            padding: 7px 12px;
            background: #f8fafc;
            border: 1px solid #e2e7ef;
            color: #667085;
            text-decoration: none;
            border-radius: 6px;
            font-size: 8px;
            margin: 3px;
        }

        .brand-link:hover {
            color: #2563eb;
            border-color: #2563eb;
        }

        @media(max-width: 575px) {

            .brand-banner {
                padding: 20px;
            }

            .brand-banner h1 {
                font-size: 22px;
            }

            .brand-stats {
                flex-wrap: wrap;
            }

        }

    </style>

</head>


<body>

<form id="brandProductsForm" runat="server">


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


    <!-- ================= BRAND PAGE ================= -->

    <section class="brand-page">

        <div class="container">


            <!-- BRAND BANNER -->

            <div class="brand-banner">


                <div class="brand-logo">
                    S
                </div>


                <h1>
                    Samsung Mobiles
                </h1>


                <p>

                    Explore the latest Samsung smartphones available
                    at MobileHub. Discover Galaxy S Series, A Series,
                    M Series and more with exciting offers and prices.

                </p>


                <div class="brand-stats">


                    <div class="stat">

                        <strong>
                            18+
                        </strong>

                        <span>
                            Products
                        </span>

                    </div>


                    <div class="stat">

                        <strong>
                            4.7
                        </strong>

                        <span>
                            Average Rating
                        </span>

                    </div>


                    <div class="stat">

                        <strong>
                            5
                        </strong>

                        <span>
                            Series
                        </span>

                    </div>


                </div>


            </div>


            <!-- PRODUCTS -->

            <div class="section-title">

                <h2>
                    Samsung Smartphones
                </h2>

                <span>
                    6 products
                </span>

            </div>


            <div class="row g-3">


                <!-- PRODUCT 1 -->

                <div class="col-6 col-md-4">

                    <div class="product-card">


                        <div class="product-image">

                            <span class="sale">
                                12% OFF
                            </span>

                            <button class="wishlist-btn">

                                <i class="fa-regular fa-heart"></i>

                            </button>

                            <div class="phone"></div>

                        </div>


                        <div class="product-info">

                            <div class="brand-name">
                                Samsung Galaxy S Series
                            </div>

                            <h3>
                                Galaxy S24
                            </h3>

                            <div class="rating">

                                ★★★★★

                                <span>
                                    (124)
                                </span>

                            </div>


                            <div class="price">

                                <span class="current-price">
                                    ₹74,999
                                </span>

                                <span class="old-price">
                                    ₹84,999
                                </span>

                            </div>


                            <a href="product-details.aspx"
                               class="view-btn">

                                View Product

                            </a>

                        </div>


                    </div>

                </div>


                <!-- PRODUCT 2 -->

                <div class="col-6 col-md-4">

                    <div class="product-card">


                        <div class="product-image">

                            <span class="sale">
                                10% OFF
                            </span>

                            <button class="wishlist-btn">

                                <i class="fa-regular fa-heart"></i>

                            </button>

                            <div class="phone"></div>

                        </div>


                        <div class="product-info">

                            <div class="brand-name">
                                Samsung Galaxy S Series
                            </div>

                            <h3>
                                Galaxy S23
                            </h3>

                            <div class="rating">

                                ★★★★★

                                <span>
                                    (98)
                                </span>

                            </div>


                            <div class="price">

                                <span class="current-price">
                                    ₹54,999
                                </span>

                                <span class="old-price">
                                    ₹61,999
                                </span>

                            </div>


                            <a href="product-details.aspx"
                               class="view-btn">

                                View Product

                            </a>

                        </div>


                    </div>

                </div>


                <!-- PRODUCT 3 -->

                <div class="col-6 col-md-4">

                    <div class="product-card">


                        <div class="product-image">

                            <span class="sale">
                                15% OFF
                            </span>

                            <button class="wishlist-btn">

                                <i class="fa-regular fa-heart"></i>

                            </button>

                            <div class="phone"></div>

                        </div>


                        <div class="product-info">

                            <div class="brand-name">
                                Samsung Galaxy A Series
                            </div>

                            <h3>
                                Galaxy A55
                            </h3>

                            <div class="rating">

                                ★★★★☆

                                <span>
                                    (86)
                                </span>

                            </div>


                            <div class="price">

                                <span class="current-price">
                                    ₹39,999
                                </span>

                                <span class="old-price">
                                    ₹46,999
                                </span>

                            </div>


                            <a href="product-details.aspx"
                               class="view-btn">

                                View Product

                            </a>

                        </div>


                    </div>

                </div>


                <!-- PRODUCT 4 -->

                <div class="col-6 col-md-4">

                    <div class="product-card">


                        <div class="product-image">

                            <span class="sale">
                                8% OFF
                            </span>

                            <button class="wishlist-btn">

                                <i class="fa-regular fa-heart"></i>

                            </button>

                            <div class="phone"></div>

                        </div>


                        <div class="product-info">

                            <div class="brand-name">
                                Samsung Galaxy A Series
                            </div>

                            <h3>
                                Galaxy A35
                            </h3>

                            <div class="rating">

                                ★★★★☆

                                <span>
                                    (72)
                                </span>

                            </div>


                            <div class="price">

                                <span class="current-price">
                                    ₹29,999
                                </span>

                                <span class="old-price">
                                    ₹32,999
                                </span>

                            </div>


                            <a href="product-details.aspx"
                               class="view-btn">

                                View Product

                            </a>

                        </div>


                    </div>

                </div>


                <!-- PRODUCT 5 -->

                <div class="col-6 col-md-4">

                    <div class="product-card">


                        <div class="product-image">

                            <span class="sale">
                                10% OFF
                            </span>

                            <button class="wishlist-btn">

                                <i class="fa-regular fa-heart"></i>

                            </button>

                            <div class="phone"></div>

                        </div>


                        <div class="product-info">

                            <div class="brand-name">
                                Samsung Galaxy M Series
                            </div>

                            <h3>
                                Galaxy M55
                            </h3>

                            <div class="rating">

                                ★★★★☆

                                <span>
                                    (65)
                                </span>

                            </div>


                            <div class="price">

                                <span class="current-price">
                                    ₹26,999
                                </span>

                                <span class="old-price">
                                    ₹29,999
                                </span>

                            </div>


                            <a href="product-details.aspx"
                               class="view-btn">

                                View Product

                            </a>

                        </div>


                    </div>

                </div>


                <!-- PRODUCT 6 -->

                <div class="col-6 col-md-4">

                    <div class="product-card">


                        <div class="product-image">

                            <span class="sale">
                                7% OFF
                            </span>

                            <button class="wishlist-btn">

                                <i class="fa-regular fa-heart"></i>

                            </button>

                            <div class="phone"></div>

                        </div>


                        <div class="product-info">

                            <div class="brand-name">
                                Samsung Galaxy F Series
                            </div>

                            <h3>
                                Galaxy F55
                            </h3>

                            <div class="rating">

                                ★★★★☆

                                <span>
                                    (51)
                                </span>

                            </div>


                            <div class="price">

                                <span class="current-price">
                                    ₹24,999
                                </span>

                                <span class="old-price">
                                    ₹26,999
                                </span>

                            </div>


                            <a href="product-details.aspx"
                               class="view-btn">

                                View Product

                            </a>

                        </div>


                    </div>

                </div>


            </div>


            <!-- OTHER BRANDS -->

            <div class="brand-links">

                <h3>
                    Explore Other Brands
                </h3>


                <a href="brand-products.aspx"
                   class="brand-link">
                    Apple
                </a>


                <a href="brand-products.aspx"
                   class="brand-link">
                    OnePlus
                </a>


                <a href="brand-products.aspx"
                   class="brand-link">
                    Google
                </a>


                <a href="brand-products.aspx"
                   class="brand-link">
                    Xiaomi
                </a>


                <a href="brand-products.aspx"
                   class="brand-link">
                    Vivo
                </a>


                <a href="brand-products.aspx"
                   class="brand-link">
                    Oppo
                </a>


                <a href="brand-products.aspx"
                   class="brand-link">
                    Realme
                </a>


            </div>


        </div>

    </section>


</form>

</body>

</html>