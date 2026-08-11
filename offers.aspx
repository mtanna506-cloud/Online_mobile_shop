<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">

    <meta charset="utf-8" />

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0" />

    <title>Offers | MobileHub</title>

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

        .offers-page {
            background: #f5f7fb;
            min-height: 100vh;
            padding-bottom: 70px;
        }


        /* HERO */

        .offers-hero {
            background: linear-gradient(115deg, #101827, #1d3970);
            padding: 55px 0;
            color: white;
        }


        .offers-hero h1 {
            font-size: 40px;
            font-weight: 800;
            margin-bottom: 10px;
        }


        .offers-hero p {
            color: #c5cede;
            font-size: 14px;
            max-width: 650px;
            line-height: 1.8;
            margin-bottom: 20px;
        }


        .offer-hero-btn {
            display: inline-block;
            background: white;
            color: #1d3970;
            padding: 11px 20px;
            border-radius: 9px;
            font-size: 11px;
            font-weight: 700;
            text-decoration: none;
        }


        .offer-hero-btn:hover {
            background: #edf3ff;
            color: #1551d0;
        }


        /* CONTENT */

        .offers-content {
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


        /* OFFER CARDS */

        .offer-card {
            background: white;
            border: 1px solid #e2e7ef;
            border-radius: 20px;
            overflow: hidden;
            height: 100%;
            transition: .3s;
        }


        .offer-card:hover {
            transform: translateY(-7px);
            box-shadow: 0 18px 40px rgba(15,31,61,.12);
        }


        .offer-top {
            min-height: 190px;
            background: #edf3ff;
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
        }


        .offer-label {
            position: absolute;
            top: 15px;
            left: 15px;
            background: #2563eb;
            color: white;
            padding: 6px 11px;
            border-radius: 20px;
            font-size: 9px;
            font-weight: 700;
        }


        .offer-percent {
            font-size: 45px;
            font-weight: 800;
            color: #2563eb;
        }


        .offer-percent small {
            font-size: 20px;
        }


        .offer-body {
            padding: 22px;
        }


        .offer-body h3 {
            font-size: 16px;
            font-weight: 700;
            color: #101828;
            margin-bottom: 8px;
        }


        .offer-body p {
            font-size: 10px;
            color: #7b8799;
            line-height: 1.7;
            margin-bottom: 18px;
        }


        .offer-code {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background: #f5f7fb;
            border: 1px dashed #ccd4e1;
            border-radius: 8px;
            padding: 9px 11px;
            margin-bottom: 15px;
        }


        .offer-code strong {
            color: #101828;
            font-size: 10px;
        }


        .copy-btn {
            border: none;
            background: transparent;
            color: #2563eb;
            font-size: 9px;
            font-weight: 700;
            cursor: pointer;
        }


        .shop-btn {
            display: block;
            text-align: center;
            background: #2563eb;
            color: white;
            padding: 10px;
            border-radius: 8px;
            text-decoration: none;
            font-size: 10px;
            font-weight: 700;
        }


        .shop-btn:hover {
            background: #1551d0;
            color: white;
        }


        /* SPECIAL OFFER */

        .special-section {
            margin-top: 55px;
        }


        .special-box {
            background: white;
            border: 1px solid #e2e7ef;
            border-radius: 20px;
            padding: 30px;
        }


        .special-card {
            border-radius: 16px;
            background: #f5f7fb;
            padding: 25px;
            height: 100%;
            display: flex;
            align-items: center;
            gap: 20px;
        }


        .special-icon {
            min-width: 58px;
            height: 58px;
            border-radius: 15px;
            background: #edf3ff;
            color: #2563eb;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 22px;
        }


        .special-card h3 {
            font-size: 14px;
            font-weight: 700;
            margin-bottom: 5px;
        }


        .special-card p {
            font-size: 10px;
            color: #7b8799;
            margin: 0;
            line-height: 1.6;
        }


        /* BANK OFFERS */

        .bank-section {
            margin-top: 55px;
        }


        .bank-card {
            background: white;
            border: 1px solid #e2e7ef;
            border-radius: 15px;
            padding: 22px;
            text-align: center;
            height: 100%;
        }


        .bank-icon {
            width: 52px;
            height: 52px;
            background: #edf3ff;
            color: #2563eb;
            border-radius: 14px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 13px;
        }


        .bank-card h4 {
            font-size: 13px;
            font-weight: 700;
            margin-bottom: 5px;
        }


        .bank-card p {
            color: #7b8799;
            font-size: 9px;
            margin: 0;
        }


        /* TIMER */

        .timer-box {
            margin-top: 55px;
            background: #101827;
            border-radius: 20px;
            padding: 35px;
            text-align: center;
            color: white;
        }


        .timer-box h2 {
            font-size: 23px;
            font-weight: 800;
            margin-bottom: 7px;
        }


        .timer-box p {
            color: #aeb8c9;
            font-size: 10px;
            margin-bottom: 20px;
        }


        .timer {
            display: flex;
            justify-content: center;
            gap: 12px;
        }


        .time-item {
            min-width: 65px;
            padding: 10px;
            background: #1c2940;
            border-radius: 9px;
        }


        .time-item strong {
            display: block;
            font-size: 20px;
        }


        .time-item span {
            color: #aeb8c9;
            font-size: 8px;
        }


        @media(max-width: 575px) {

            .offers-hero h1 {
                font-size: 32px;
            }

            .timer {
                gap: 6px;
            }

            .time-item {
                min-width: 55px;
            }

        }

    </style>

</head>


<body>

<form id="offersForm" runat="server">


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

                    <a href="offers.aspx"
                       class="active">
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

    <div class="offers-page">


        <!-- HERO -->

        <section class="offers-hero">

            <div class="container-fluid px-4">

                <h1>
                    Amazing Offers & Deals
                </h1>

                <p>
                    Save more on your favourite smartphones.
                    Explore exclusive discounts, bank offers,
                    coupons and special MobileHub deals.
                </p>

                <a href="#offers"
                   class="offer-hero-btn">

                    Shop Deals

                    <i class="fa-solid fa-arrow-right"></i>

                </a>

            </div>

        </section>


        <!-- CONTENT -->

        <section class="offers-content"
                 id="offers">

            <div class="container-fluid px-4">


                <!-- OFFERS -->

                <div class="section-title">

                    <h2>
                        Today's Best Offers
                    </h2>

                    <p>
                        Grab these limited-time deals before they expire.
                    </p>

                </div>


                <div class="row g-4">


                    <!-- OFFER 1 -->

                    <div class="col-xl-4 col-lg-4 col-md-6">

                        <div class="offer-card">

                            <div class="offer-top">

                                <span class="offer-label">
                                    HOT DEAL
                                </span>

                                <div class="offer-percent">
                                    20<small>% OFF</small>
                                </div>

                            </div>


                            <div class="offer-body">

                                <h3>
                                    Smartphone Special
                                </h3>

                                <p>
                                    Get up to 20% discount on
                                    selected smartphones from
                                    popular brands.
                                </p>


                                <div class="offer-code">

                                    <strong>
                                        MOB20
                                    </strong>

                                    <button type="button"
                                            class="copy-btn"
                                            onclick="copyCode('MOB20')">

                                        COPY

                                    </button>

                                </div>


                                <a href="all-mobiles.aspx"
                                   class="shop-btn">

                                    Shop Now

                                </a>

                            </div>

                        </div>

                    </div>


                    <!-- OFFER 2 -->

                    <div class="col-xl-4 col-lg-4 col-md-6">

                        <div class="offer-card">

                            <div class="offer-top">

                                <span class="offer-label">
                                    NEW USER
                                </span>

                                <div class="offer-percent">
                                    15<small>% OFF</small>
                                </div>

                            </div>


                            <div class="offer-body">

                                <h3>
                                    Welcome Offer
                                </h3>

                                <p>
                                    New customers can enjoy
                                    an extra 15% discount on
                                    their first purchase.
                                </p>


                                <div class="offer-code">

                                    <strong>
                                        WELCOME15
                                    </strong>

                                    <button type="button"
                                            class="copy-btn"
                                            onclick="copyCode('WELCOME15')">

                                        COPY

                                    </button>

                                </div>


                                <a href="all-mobiles.aspx"
                                   class="shop-btn">

                                    Shop Now

                                </a>

                            </div>

                        </div>

                    </div>


                    <!-- OFFER 3 -->

                    <div class="col-xl-4 col-lg-4 col-md-6">

                        <div class="offer-card">

                            <div class="offer-top">

                                <span class="offer-label">
                                    WEEKEND
                                </span>

                                <div class="offer-percent">
                                    10<small>% OFF</small>
                                </div>

                            </div>


                            <div class="offer-body">

                                <h3>
                                    Weekend Special
                                </h3>

                                <p>
                                    Enjoy special weekend discounts
                                    across selected mobile phones.
                                </p>


                                <div class="offer-code">

                                    <strong>
                                        WEEKEND10
                                    </strong>

                                    <button type="button"
                                            class="copy-btn"
                                            onclick="copyCode('WEEKEND10')">

                                        COPY

                                    </button>

                                </div>


                                <a href="all-mobiles.aspx"
                                   class="shop-btn">

                                    Shop Now

                                </a>

                            </div>

                        </div>

                    </div>


                </div>


                <!-- SPECIAL OFFERS -->

                <div class="special-section">


                    <div class="section-title">

                        <h2>
                            More Ways to Save
                        </h2>

                        <p>
                            Enjoy additional benefits when you shop with us.
                        </p>

                    </div>


                    <div class="special-box">

                        <div class="row g-3">


                            <div class="col-lg-4">

                                <div class="special-card">

                                    <div class="special-icon">

                                        <i class="fa-solid fa-truck-fast"></i>

                                    </div>

                                    <div>

                                        <h3>
                                            Free Delivery
                                        </h3>

                                        <p>
                                            Free delivery on eligible
                                            orders above ₹499.
                                        </p>

                                    </div>

                                </div>

                            </div>


                            <div class="col-lg-4">

                                <div class="special-card">

                                    <div class="special-icon">

                                        <i class="fa-solid fa-rotate"></i>

                                    </div>

                                    <div>

                                        <h3>
                                            Easy Returns
                                        </h3>

                                        <p>
                                            Simple return options on
                                            eligible products.
                                        </p>

                                    </div>

                                </div>

                            </div>


                            <div class="col-lg-4">

                                <div class="special-card">

                                    <div class="special-icon">

                                        <i class="fa-solid fa-shield-halved"></i>

                                    </div>

                                    <div>

                                        <h3>
                                            Secure Shopping
                                        </h3>

                                        <p>
                                            Shop confidently with secure
                                            checkout and payment.
                                        </p>

                                    </div>

                                </div>

                            </div>


                        </div>

                    </div>

                </div>


                <!-- BANK OFFERS -->

                <div class="bank-section">


                    <div class="section-title">

                        <h2>
                            Bank & Payment Offers
                        </h2>

                        <p>
                            Get extra savings with selected payment methods.
                        </p>

                    </div>


                    <div class="row g-4">


                        <div class="col-lg-3 col-md-6">

                            <div class="bank-card">

                                <div class="bank-icon">

                                    <i class="fa-solid fa-building-columns"></i>

                                </div>

                                <h4>
                                    Bank Discount
                                </h4>

                                <p>
                                    Extra discount on selected bank cards.
                                </p>

                            </div>

                        </div>


                        <div class="col-lg-3 col-md-6">

                            <div class="bank-card">

                                <div class="bank-icon">

                                    <i class="fa-solid fa-credit-card"></i>

                                </div>

                                <h4>
                                    Card Offers
                                </h4>

                                <p>
                                    Save more using eligible credit cards.
                                </p>

                            </div>

                        </div>


                        <div class="col-lg-3 col-md-6">

                            <div class="bank-card">

                                <div class="bank-icon">

                                    <i class="fa-solid fa-calendar-check"></i>

                                </div>

                                <h4>
                                    No Cost EMI
                                </h4>

                                <p>
                                    Easy monthly payments on selected phones.
                                </p>

                            </div>

                        </div>


                        <div class="col-lg-3 col-md-6">

                            <div class="bank-card">

                                <div class="bank-icon">

                                    <i class="fa-solid fa-money-bill-wave"></i>

                                </div>

                                <h4>
                                    Cashback
                                </h4>

                                <p>
                                    Enjoy cashback on eligible purchases.
                                </p>

                            </div>

                        </div>


                    </div>

                </div>


                <!-- TIMER -->

                <div class="timer-box">

                    <h2>
                        Limited Time Sale
                    </h2>

                    <p>
                        Hurry! These special deals won't last forever.
                    </p>


                    <div class="timer">

                        <div class="time-item">

                            <strong id="hours">
                                12
                            </strong>

                            <span>
                                HOURS
                            </span>

                        </div>


                        <div class="time-item">

                            <strong id="minutes">
                                30
                            </strong>

                            <span>
                                MINUTES
                            </span>

                        </div>


                        <div class="time-item">

                            <strong id="seconds">
                                45
                            </strong>

                            <span>
                                SECONDS
                            </span>

                        </div>

                    </div>

                </div>


            </div>

        </section>


    </div>


</form>


<script>

    function copyCode(code) {

        navigator.clipboard.writeText(code);

        alert(
            "Offer code " +
            code +
            " copied!"
        );

    }


    var totalSeconds = 12 * 60 * 60 + 30 * 60 + 45;


    setInterval(function () {

        if (totalSeconds <= 0) {

            return;

        }


        totalSeconds--;


        var hours =
            Math.floor(totalSeconds / 3600);


        var minutes =
            Math.floor(
                (totalSeconds % 3600) / 60
            );


        var seconds =
            totalSeconds % 60;


        document.getElementById("hours")
            .innerText =
            String(hours).padStart(2, "0");


        document.getElementById("minutes")
            .innerText =
            String(minutes).padStart(2, "0");


        document.getElementById("seconds")
            .innerText =
            String(seconds).padStart(2, "0");

    }, 1000);

</script>


</body>

</html>