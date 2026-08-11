<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">

    <meta charset="utf-8" />

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0" />

    <title>Search Mobiles | MobileHub</title>

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

        .search-page {
            background: #f5f7fb;
            min-height: 100vh;
            padding: 35px 0 70px;
        }

        .search-heading {
            text-align: center;
            margin-bottom: 25px;
        }

        .search-heading h1 {
            font-size: 30px;
            font-weight: 800;
            color: #101828;
            margin-bottom: 7px;
        }

        .search-heading p {
            color: #8993a4;
            font-size: 10px;
            margin: 0;
        }

        .search-main-box {
            max-width: 750px;
            margin: 0 auto 30px;
            background: white;
            border: 1px solid #e2e7ef;
            border-radius: 12px;
            padding: 7px;
            display: flex;
            align-items: center;
        }

        .search-main-box i {
            color: #8993a4;
            margin-left: 12px;
        }

        .search-main-box input {
            flex: 1;
            border: none;
            outline: none;
            padding: 11px;
            font-size: 10px;
            color: #344054;
        }

        .search-main-box button {
            border: none;
            background: #2563eb;
            color: white;
            padding: 10px 18px;
            border-radius: 7px;
            font-size: 9px;
            font-weight: 700;
        }

        .result-bar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 15px;
        }

        .result-bar h2 {
            font-size: 14px;
            font-weight: 800;
            color: #101828;
            margin: 0;
        }

        .result-bar span {
            color: #8993a4;
            font-size: 8px;
        }

        .product-card {
            background: white;
            border: 1px solid #e2e7ef;
            border-radius: 15px;
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
            width: 65px;
            height: 125px;
            border: 5px solid #20242d;
            border-radius: 14px;
            background: linear-gradient(145deg,#76adff,#294f98);
            position: relative;
        }

        .phone:before {
            content: "";
            position: absolute;
            width: 24px;
            height: 5px;
            background: #20242d;
            border-radius: 10px;
            top: 7px;
            left: 50%;
            transform: translateX(-50%);
        }

        .discount {
            position: absolute;
            top: 12px;
            left: 12px;
            background: #eaf8ef;
            color: #16a34a;
            padding: 5px 8px;
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
            padding: 15px;
        }

        .brand {
            color: #2563eb;
            font-size: 7px;
            font-weight: 700;
            text-transform: uppercase;
        }

        .product-info h3 {
            font-size: 11px;
            font-weight: 800;
            color: #101828;
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
            margin-top: 8px;
        }

        .current-price {
            font-size: 12px;
            font-weight: 800;
            color: #101828;
        }

        .old-price {
            color: #98a1b1;
            text-decoration: line-through;
            font-size: 8px;
            margin-left: 5px;
        }

        .view-btn {
            display: block;
            width: 100%;
            text-align: center;
            background: #2563eb;
            color: white;
            text-decoration: none;
            border-radius: 7px;
            padding: 9px;
            font-size: 8px;
            font-weight: 700;
            margin-top: 12px;
        }

        .view-btn:hover {
            color: white;
            background: #1d4ed8;
        }

        @media(max-width: 575px) {

            .search-heading h1 {
                font-size: 24px;
            }

            .search-main-box {
                margin-left: 10px;
                margin-right: 10px;
            }

        }

    </style>

</head>


<body>

<form id="searchForm" runat="server">


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


    <!-- SEARCH PAGE -->

    <section class="search-page">

        <div class="container">


            <div class="search-heading">

                <h1>
                    Search Mobiles
                </h1>

                <p>
                    Find your perfect smartphone at MobileHub.
                </p>

            </div>


            <!-- SEARCH -->

            <div class="search-main-box">

                <i class="fa-solid fa-magnifying-glass"></i>

                <input type="text"
                       value="Samsung"
                       placeholder="Search for mobiles..." />

                <button type="button">
                    Search
                </button>

            </div>


            <!-- RESULT -->

            <div class="result-bar">

                <h2>
                    Search Results
                </h2>

                <span>
                    6 products found
                </span>

            </div>


            <!-- PRODUCTS -->

            <div class="row g-3">


                <!-- PRODUCT 1 -->

                <div class="col-6 col-md-4">

                    <div class="product-card">

                        <div class="product-image">

                            <span class="discount">
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


                <!-- PRODUCT 2 -->

                <div class="col-6 col-md-4">

                    <div class="product-card">

                        <div class="product-image">

                            <span class="discount">
                                10% OFF
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
                                Galaxy S23
                            </h3>

                            <div class="rating">
                                ★★★★★
                                <span>(98)</span>
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

                            <span class="discount">
                                15% OFF
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
                                <span>(86)</span>
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

                            <span class="discount">
                                8% OFF
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
                                Galaxy A35
                            </h3>

                            <div class="rating">
                                ★★★★☆
                                <span>(72)</span>
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

                            <span class="discount">
                                10% OFF
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
                                Galaxy M55
                            </h3>

                            <div class="rating">
                                ★★★★☆
                                <span>(65)</span>
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

                            <span class="discount">
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
                                Galaxy F55
                            </h3>

                            <div class="rating">
                                ★★★★☆
                                <span>(51)</span>
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


        </div>

    </section>


</form>

</body>

</html>