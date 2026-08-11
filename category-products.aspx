<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">

    <meta charset="utf-8" />

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0" />

    <title>Smartphones | MobileHub</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

    <link href="css/style.css" rel="stylesheet">

    <style>

        .category-page {
            background: #f5f7fb;
            min-height: 100vh;
            padding: 35px 0 70px;
        }

        .category-header {
            background: white;
            border: 1px solid #e2e7ef;
            border-radius: 16px;
            padding: 25px;
            margin-bottom: 25px;
        }

        .category-header h1 {
            font-size: 26px;
            font-weight: 800;
            color: #101828;
            margin-bottom: 6px;
        }

        .category-header p {
            color: #8993a4;
            font-size: 9px;
            margin: 0;
        }

        .category-tabs {
            margin-top: 20px;
            display: flex;
            gap: 8px;
            flex-wrap: wrap;
        }

        .category-tab {
            padding: 8px 14px;
            background: #f8fafc;
            border: 1px solid #e2e7ef;
            border-radius: 7px;
            color: #667085;
            text-decoration: none;
            font-size: 8px;
            font-weight: 600;
        }

        .category-tab.active,
        .category-tab:hover {
            background: #2563eb;
            border-color: #2563eb;
            color: white;
        }

        .top-bar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 15px;
        }

        .top-bar h2 {
            font-size: 14px;
            font-weight: 800;
            color: #101828;
            margin: 0;
        }

        .top-bar span {
            color: #8993a4;
            font-size: 8px;
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
            background: #20242d;
            border-radius: 10px;
            top: 7px;
            left: 50%;
            transform: translateX(-50%);
        }

        .offer {
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

        .heart {
            position: absolute;
            top: 10px;
            right: 10px;
            width: 28px;
            height: 28px;
            border-radius: 50%;
            background: white;
            border: 1px solid #e2e7ef;
            color: #667085;
        }

        .product-info {
            padding: 14px;
        }

        .brand {
            color: #2563eb;
            font-size: 7px;
            font-weight: 700;
            text-transform: uppercase;
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
            background: #1d4ed8;
            color: white;
        }

        .info-box {
            margin-top: 30px;
            background: white;
            border: 1px solid #e2e7ef;
            border-radius: 14px;
            padding: 20px;
        }

        .info-box h3 {
            font-size: 12px;
            font-weight: 800;
            color: #101828;
        }

        .info-box p {
            color: #8993a4;
            font-size: 8px;
            line-height: 1.8;
            margin: 0;
        }

    </style>

</head>


<body>

<form id="categoryProductsForm" runat="server">


    <!-- NAVBAR -->

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


    <!-- CATEGORY PAGE -->

    <section class="category-page">

        <div class="container">


            <!-- HEADER -->

            <div class="category-header">

                <h1>
                    Smartphones
                </h1>

                <p>
                    Discover powerful and stylish smartphones
                    from the world's leading brands.
                </p>


                <div class="category-tabs">

                    <a href="category-products.aspx"
                       class="category-tab active">
                        Smartphones
                    </a>

                    <a href="category-products.aspx"
                       class="category-tab">
                        Budget Phones
                    </a>

                    <a href="category-products.aspx"
                       class="category-tab">
                        Flagship Phones
                    </a>

                    <a href="category-products.aspx"
                       class="category-tab">
                        Gaming Phones
                    </a>

                    <a href="category-products.aspx"
                       class="category-tab">
                        5G Phones
                    </a>

                </div>

            </div>


            <!-- PRODUCT TITLE -->

            <div class="top-bar">

                <h2>
                    Latest Smartphones
                </h2>

                <span>
                    6 Products
                </span>

            </div>


            <!-- PRODUCTS -->

            <div class="row g-3">


                <!-- 1 -->

                <div class="col-6 col-md-4">

                    <div class="product-card">

                        <div class="product-image">

                            <span class="offer">
                                12% OFF
                            </span>

                            <button class="heart">
                                <i class="fa-regular fa-heart"></i>
                            </button>

                            <div class="phone"></div>

                        </div>


                        <div class="product-info">

                            <div class="brand">
                                Samsung
                            </div>

                            <h3>
                                Galaxy S24
                            </h3>

                            <div class="rating">
                                ★★★★★
                                <span>(124)</span>
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


                <!-- 2 -->

                <div class="col-6 col-md-4">

                    <div class="product-card">

                        <div class="product-image">

                            <span class="offer">
                                10% OFF
                            </span>

                            <button class="heart">
                                <i class="fa-regular fa-heart"></i>
                            </button>

                            <div class="phone"></div>

                        </div>


                        <div class="product-info">

                            <div class="brand">
                                Apple
                            </div>

                            <h3>
                                iPhone 15
                            </h3>

                            <div class="rating">
                                ★★★★★
                                <span>(142)</span>
                            </div>

                            <div class="price">

                                <span class="current-price">
                                    ₹69,999
                                </span>

                                <span class="old-price">
                                    ₹79,999
                                </span>

                            </div>

                            <a href="product-details.aspx"
                               class="view-btn">
                                View Product
                            </a>

                        </div>

                    </div>

                </div>


                <!-- 3 -->

                <div class="col-6 col-md-4">

                    <div class="product-card">

                        <div class="product-image">

                            <span class="offer">
                                15% OFF
                            </span>

                            <button class="heart">
                                <i class="fa-regular fa-heart"></i>
                            </button>

                            <div class="phone"></div>

                        </div>


                        <div class="product-info">

                            <div class="brand">
                                OnePlus
                            </div>

                            <h3>
                                OnePlus 12
                            </h3>

                            <div class="rating">
                                ★★★★★
                                <span>(116)</span>
                            </div>

                            <div class="price">

                                <span class="current-price">
                                    ₹59,999
                                </span>

                                <span class="old-price">
                                    ₹69,999
                                </span>

                            </div>

                            <a href="product-details.aspx"
                               class="view-btn">
                                View Product
                            </a>

                        </div>

                    </div>

                </div>


                <!-- 4 -->

                <div class="col-6 col-md-4">

                    <div class="product-card">

                        <div class="product-image">

                            <span class="offer">
                                8% OFF
                            </span>

                            <button class="heart">
                                <i class="fa-regular fa-heart"></i>
                            </button>

                            <div class="phone"></div>

                        </div>


                        <div class="product-info">

                            <div class="brand">
                                Google
                            </div>

                            <h3>
                                Pixel 8
                            </h3>

                            <div class="rating">
                                ★★★★☆
                                <span>(89)</span>
                            </div>

                            <div class="price">

                                <span class="current-price">
                                    ₹59,999
                                </span>

                                <span class="old-price">
                                    ₹65,999
                                </span>

                            </div>

                            <a href="product-details.aspx"
                               class="view-btn">
                                View Product
                            </a>

                        </div>

                    </div>

                </div>


                <!-- 5 -->

                <div class="col-6 col-md-4">

                    <div class="product-card">

                        <div class="product-image">

                            <span class="offer">
                                10% OFF
                            </span>

                            <button class="heart">
                                <i class="fa-regular fa-heart"></i>
                            </button>

                            <div class="phone"></div>

                        </div>


                        <div class="product-info">

                            <div class="brand">
                                Xiaomi
                            </div>

                            <h3>
                                Xiaomi 14
                            </h3>

                            <div class="rating">
                                ★★★★☆
                                <span>(74)</span>
                            </div>

                            <div class="price">

                                <span class="current-price">
                                    ₹49,999
                                </span>

                                <span class="old-price">
                                    ₹54,999
                                </span>

                            </div>

                            <a href="product-details.aspx"
                               class="view-btn">
                                View Product
                            </a>

                        </div>

                    </div>

                </div>


                <!-- 6 -->

                <div class="col-6 col-md-4">

                    <div class="product-card">

                        <div class="product-image">

                            <span class="offer">
                                7% OFF
                            </span>

                            <button class="heart">
                                <i class="fa-regular fa-heart"></i>
                            </button>

                            <div class="phone"></div>

                        </div>


                        <div class="product-info">

                            <div class="brand">
                                Samsung
                            </div>

                            <h3>
                                Galaxy A55
                            </h3>

                            <div class="rating">
                                ★★★★☆
                                <span>(67)</span>
                            </div>

                            <div class="price">

                                <span class="current-price">
                                    ₹39,999
                                </span>

                                <span class="old-price">
                                    ₹44,999
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


            <!-- INFO -->

            <div class="info-box">

                <h3>
                    About Smartphones
                </h3>

                <p>
                    Browse our collection of smartphones from
                    popular brands including Samsung, Apple,
                    OnePlus, Google and Xiaomi. Compare features,
                    prices and ratings to find a phone that suits
                    your needs.
                </p>

            </div>


        </div>

    </section>


</form>

</body>

</html>