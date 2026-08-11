<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">

    <meta charset="utf-8" />

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0" />

    <title>Special Offers | MobileHub</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

    <link href="css/style.css" rel="stylesheet">


    <style>

        .offers-page {
            background: #f5f7fb;
            min-height: 100vh;
            padding: 35px 0 70px;
        }

        .offer-header {
            text-align: center;
            margin-bottom: 28px;
        }

        .offer-header h1 {
            font-size: 28px;
            font-weight: 800;
            color: #101828;
            margin-bottom: 7px;
        }

        .offer-header p {
            color: #8993a4;
            font-size: 9px;
            margin: 0;
        }

        .main-offer {
            background: linear-gradient(135deg,#2563eb,#173b91);
            border-radius: 18px;
            padding: 30px;
            color: white;
            margin-bottom: 28px;
        }

        .main-offer h2 {
            font-size: 24px;
            font-weight: 800;
            margin-bottom: 8px;
        }

        .main-offer p {
            font-size: 9px;
            line-height: 1.8;
            max-width: 600px;
            margin-bottom: 18px;
            opacity: .9;
        }

        .offer-code {
            display: inline-block;
            background: white;
            color: #2563eb;
            padding: 9px 15px;
            border-radius: 7px;
            font-size: 9px;
            font-weight: 800;
        }

        .offer-card {
            background: white;
            border: 1px solid #e2e7ef;
            border-radius: 15px;
            overflow: hidden;
            height: 100%;
            transition: .2s;
        }

        .offer-card:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 25px rgba(16,24,40,.08);
        }

        .offer-image {
            height: 150px;
            background: #f8fafc;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
        }

        .discount-badge {
            position: absolute;
            top: 12px;
            left: 12px;
            background: #eaf8ef;
            color: #16a34a;
            padding: 6px 8px;
            border-radius: 5px;
            font-size: 7px;
            font-weight: 800;
        }

        .phone {
            width: 55px;
            height: 105px;
            border: 5px solid #20242d;
            border-radius: 13px;
            background: linear-gradient(145deg,#76adff,#28539d);
            position: relative;
        }

        .phone:before {
            content: "";
            position: absolute;
            width: 20px;
            height: 5px;
            border-radius: 10px;
            background: #20242d;
            top: 6px;
            left: 50%;
            transform: translateX(-50%);
        }

        .offer-content {
            padding: 15px;
        }

        .offer-content .brand {
            color: #2563eb;
            font-size: 7px;
            font-weight: 700;
            text-transform: uppercase;
        }

        .offer-content h3 {
            color: #101828;
            font-size: 11px;
            font-weight: 800;
            margin: 5px 0;
        }

        .offer-content p {
            color: #8993a4;
            font-size: 8px;
            line-height: 1.6;
            margin-bottom: 8px;
        }

        .price {
            margin-bottom: 10px;
        }

        .current-price {
            color: #101828;
            font-size: 12px;
            font-weight: 800;
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
            padding: 9px;
            border-radius: 7px;
            font-size: 8px;
            font-weight: 700;
        }

        .view-btn:hover {
            color: white;
            background: #1d4ed8;
        }

        .coupon-box {
            background: white;
            border: 1px solid #e2e7ef;
            border-radius: 15px;
            padding: 20px;
            margin-top: 28px;
        }

        .coupon-box h3 {
            color: #101828;
            font-size: 12px;
            font-weight: 800;
            margin-bottom: 12px;
        }

        .coupon {
            display: flex;
            align-items: center;
            justify-content: space-between;
            border: 1px dashed #cbd5e1;
            border-radius: 8px;
            padding: 12px;
            margin-bottom: 8px;
        }

        .coupon:last-child {
            margin-bottom: 0;
        }

        .coupon strong {
            color: #2563eb;
            font-size: 10px;
        }

        .coupon span {
            color: #8993a4;
            font-size: 7px;
        }

        .copy-btn {
            border: 1px solid #2563eb;
            background: white;
            color: #2563eb;
            border-radius: 5px;
            padding: 5px 9px;
            font-size: 7px;
            font-weight: 700;
        }

    </style>

</head>


<body>

<form id="offersDetailsForm" runat="server">


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


    <!-- OFFERS -->

    <section class="offers-page">

        <div class="container">


            <div class="offer-header">

                <h1>
                    Special Offers
                </h1>

                <p>
                    Grab amazing deals and save more on your favourite smartphones.
                </p>

            </div>


            <!-- MAIN OFFER -->

            <div class="main-offer">

                <h2>
                    Mega Smartphone Sale
                </h2>

                <p>
                    Get exciting discounts on selected smartphones.
                    Use our exclusive coupon and enjoy great savings
                    on your next purchase.
                </p>

                <span class="offer-code">
                    CODE: MOBILE20
                </span>

            </div>


            <!-- OFFER PRODUCTS -->

            <div class="row g-3">


                <!-- PRODUCT 1 -->

                <div class="col-6 col-md-4">

                    <div class="offer-card">

                        <div class="offer-image">

                            <span class="discount-badge">
                                20% OFF
                            </span>

                            <div class="phone"></div>

                        </div>


                        <div class="offer-content">

                            <div class="brand">
                                Samsung
                            </div>

                            <h3>
                                Galaxy S24
                            </h3>

                            <p>
                                Premium flagship smartphone with
                                powerful performance.
                            </p>

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

                                Grab Deal

                            </a>

                        </div>

                    </div>

                </div>


                <!-- PRODUCT 2 -->

                <div class="col-6 col-md-4">

                    <div class="offer-card">

                        <div class="offer-image">

                            <span class="discount-badge">
                                15% OFF
                            </span>

                            <div class="phone"></div>

                        </div>


                        <div class="offer-content">

                            <div class="brand">
                                Apple
                            </div>

                            <h3>
                                iPhone 15
                            </h3>

                            <p>
                                Stylish smartphone with excellent
                                camera and performance.
                            </p>

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

                                Grab Deal

                            </a>

                        </div>

                    </div>

                </div>


                <!-- PRODUCT 3 -->

                <div class="col-6 col-md-4">

                    <div class="offer-card">

                        <div class="offer-image">

                            <span class="discount-badge">
                                18% OFF
                            </span>

                            <div class="phone"></div>

                        </div>


                        <div class="offer-content">

                            <div class="brand">
                                OnePlus
                            </div>

                            <h3>
                                OnePlus 12
                            </h3>

                            <p>
                                Fast performance with a premium
                                display and design.
                            </p>

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

                                Grab Deal

                            </a>

                        </div>

                    </div>

                </div>


            </div>


            <!-- COUPONS -->

            <div class="coupon-box">

                <h3>
                    Available Coupon Codes
                </h3>


                <div class="coupon">

                    <div>

                        <strong>
                            MOBILE20
                        </strong>

                        <br>

                        <span>
                            Get 20% off on selected mobiles
                        </span>

                    </div>

                    <button class="copy-btn">
                        Copy
                    </button>

                </div>


                <div class="coupon">

                    <div>

                        <strong>
                            NEWUSER10
                        </strong>

                        <br>

                        <span>
                            Extra 10% off for new customers
                        </span>

                    </div>

                    <button class="copy-btn">
                        Copy
                    </button>

                </div>


                <div class="coupon">

                    <div>

                        <strong>
                            SAVE500
                        </strong>

                        <br>

                        <span>
                            Flat ₹500 discount on selected orders
                        </span>

                    </div>

                    <button class="copy-btn">
                        Copy
                    </button>

                </div>


            </div>


        </div>

    </section>


</form>

</body>

</html>