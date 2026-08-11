<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">

    <meta charset="utf-8" />

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0" />

    <title>Brands | MobileHub</title>

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

        .brands-page {
            background: #f5f7fb;
            min-height: 100vh;
            padding-bottom: 70px;
        }


        /* HERO */

        .brands-hero {
            background: linear-gradient(115deg, #101827, #1d3970);
            padding: 60px 0;
            color: white;
        }


        .brands-hero h1 {
            font-size: 40px;
            font-weight: 800;
            margin-bottom: 10px;
        }


        .brands-hero p {
            color: #c2ccdd;
            font-size: 14px;
            max-width: 650px;
            line-height: 1.8;
            margin: 0;
        }


        /* CONTENT */

        .brands-content {
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


        /* SEARCH */

        .brand-search {
            max-width: 550px;
            margin: 0 auto 35px;
            position: relative;
        }


        .brand-search i {
            position: absolute;
            left: 17px;
            top: 50%;
            transform: translateY(-50%);
            color: #8b96a8;
        }


        .brand-search input {
            width: 100%;
            height: 50px;
            border: 1px solid #dfe4ec;
            border-radius: 12px;
            padding: 0 20px 0 45px;
            outline: none;
            background: white;
            font-family: 'Poppins', sans-serif;
            font-size: 12px;
        }


        .brand-search input:focus {
            border-color: #2563eb;
            box-shadow: 0 0 0 3px rgba(37,99,235,.08);
        }


        /* BRAND CARD */

        .brand-card {
            background: white;
            border: 1px solid #e2e7ef;
            border-radius: 20px;
            padding: 28px 20px;
            text-align: center;
            height: 100%;
            transition: .3s;
        }


        .brand-card:hover {
            transform: translateY(-7px);
            box-shadow: 0 18px 40px rgba(15,31,61,.11);
            border-color: #d4dff5;
        }


        .brand-logo {
            width: 78px;
            height: 78px;
            border-radius: 20px;
            background: #f4f6fa;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 17px;
            color: #172033;
            font-size: 25px;
            font-weight: 800;
        }


        .brand-card h3 {
            font-size: 16px;
            font-weight: 700;
            color: #101828;
            margin-bottom: 5px;
        }


        .brand-card p {
            color: #7b8799;
            font-size: 10px;
            margin-bottom: 15px;
        }


        .brand-card a {
            display: inline-block;
            color: #2563eb;
            background: #edf3ff;
            padding: 8px 15px;
            border-radius: 8px;
            font-size: 10px;
            font-weight: 700;
        }


        .brand-card a:hover {
            background: #2563eb;
            color: white;
        }


        /* DIFFERENT LOGO BACKGROUNDS */

        .apple {
            background: #f0f1f3;
            color: #111827;
        }


        .samsung {
            background: #edf3ff;
            color: #2563eb;
        }


        .oneplus {
            background: #fff0f0;
            color: #dc2626;
        }


        .xiaomi {
            background: #fff5e8;
            color: #e87500;
        }


        .vivo {
            background: #edf7ff;
            color: #0875c9;
        }


        .oppo {
            background: #eef9f0;
            color: #159447;
        }


        .realme {
            background: #fff9df;
            color: #e0a300;
        }


        .motorola {
            background: #edf3ff;
            color: #3156a8;
        }


        .nothing {
            background: #f1f1f1;
            color: #222;
        }


        .google {
            background: #f3f7ff;
            color: #4285f4;
        }


        .iqoo {
            background: #fff1ed;
            color: #f04d26;
        }


        .nothing-logo {
            font-size: 17px;
            letter-spacing: -1px;
        }


        /* POPULAR */

        .popular-section {
            margin-top: 55px;
        }


        .popular-box {
            background: white;
            border: 1px solid #e2e7ef;
            border-radius: 20px;
            padding: 30px;
        }


        .popular-item {
            display: flex;
            align-items: center;
            gap: 14px;
            padding: 15px;
            border: 1px solid #edf0f4;
            border-radius: 12px;
            height: 100%;
        }


        .popular-number {
            width: 38px;
            height: 38px;
            border-radius: 10px;
            background: #edf3ff;
            color: #2563eb;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 13px;
            font-weight: 800;
        }


        .popular-item strong {
            display: block;
            font-size: 12px;
        }


        .popular-item span {
            color: #8993a4;
            font-size: 9px;
        }


        @media(max-width: 767px) {

            .brands-hero h1 {
                font-size: 32px;
            }

        }

    </style>

</head>


<body>

<form id="brandsForm" runat="server">


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

                    <a href="brands.aspx"
                       class="active">
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

    <div class="brands-page">


        <!-- HERO -->

        <section class="brands-hero">

            <div class="container-fluid px-4">

                <h1>
                    Explore Top Brands
                </h1>

                <p>
                    Discover smartphones from the world's
                    most trusted and popular mobile brands.
                    Compare models, features and prices in one place.
                </p>

            </div>

        </section>


        <!-- CONTENT -->

        <section class="brands-content">

            <div class="container-fluid px-4">


                <div class="section-title">

                    <h2>
                        Choose Your Favourite Brand
                    </h2>

                    <p>
                        Browse the latest smartphones from leading brands.
                    </p>

                </div>


                <!-- SEARCH -->

                <div class="brand-search">

                    <i class="fa-solid fa-magnifying-glass"></i>

                    <input type="text"
                           id="brandSearch"
                           placeholder="Search for a brand..."
                           onkeyup="searchBrands()" />

                </div>


                <!-- BRANDS -->

                <div class="row g-4"
                     id="brandList">


                    <!-- APPLE -->

                    <div class="col-xl-3 col-lg-4 col-md-6 brand-item">

                        <div class="brand-card">

                            <div class="brand-logo apple">

                                <i class="fa-brands fa-apple"></i>

                            </div>

                            <h3>
                                Apple
                            </h3>

                            <p>
                                iPhone & premium devices
                            </p>

                            <a href="all-mobiles.aspx">
                                View Mobiles →
                            </a>

                        </div>

                    </div>


                    <!-- SAMSUNG -->

                    <div class="col-xl-3 col-lg-4 col-md-6 brand-item">

                        <div class="brand-card">

                            <div class="brand-logo samsung">
                                S
                            </div>

                            <h3>
                                Samsung
                            </h3>

                            <p>
                                Galaxy smartphones
                            </p>

                            <a href="all-mobiles.aspx">
                                View Mobiles →
                            </a>

                        </div>

                    </div>


                    <!-- ONEPLUS -->

                    <div class="col-xl-3 col-lg-4 col-md-6 brand-item">

                        <div class="brand-card">

                            <div class="brand-logo oneplus">
                                1+
                            </div>

                            <h3>
                                OnePlus
                            </h3>

                            <p>
                                Fast & powerful smartphones
                            </p>

                            <a href="all-mobiles.aspx">
                                View Mobiles →
                            </a>

                        </div>

                    </div>


                    <!-- XIAOMI -->

                    <div class="col-xl-3 col-lg-4 col-md-6 brand-item">

                        <div class="brand-card">

                            <div class="brand-logo xiaomi">
                                Mi
                            </div>

                            <h3>
                                Xiaomi
                            </h3>

                            <p>
                                Innovation for everyone
                            </p>

                            <a href="all-mobiles.aspx">
                                View Mobiles →
                            </a>

                        </div>

                    </div>


                    <!-- VIVO -->

                    <div class="col-xl-3 col-lg-4 col-md-6 brand-item">

                        <div class="brand-card">

                            <div class="brand-logo vivo">
                                V
                            </div>

                            <h3>
                                Vivo
                            </h3>

                            <p>
                                Camera & stylish phones
                            </p>

                            <a href="all-mobiles.aspx">
                                View Mobiles →
                            </a>

                        </div>

                    </div>


                    <!-- OPPO -->

                    <div class="col-xl-3 col-lg-4 col-md-6 brand-item">

                        <div class="brand-card">

                            <div class="brand-logo oppo">
                                O
                            </div>

                            <h3>
                                OPPO
                            </h3>

                            <p>
                                Stylish camera smartphones
                            </p>

                            <a href="all-mobiles.aspx">
                                View Mobiles →
                            </a>

                        </div>

                    </div>


                    <!-- REALME -->

                    <div class="col-xl-3 col-lg-4 col-md-6 brand-item">

                        <div class="brand-card">

                            <div class="brand-logo realme">
                                R
                            </div>

                            <h3>
                                Realme
                            </h3>

                            <p>
                                Performance & value
                            </p>

                            <a href="all-mobiles.aspx">
                                View Mobiles →
                            </a>

                        </div>

                    </div>


                    <!-- MOTOROLA -->

                    <div class="col-xl-3 col-lg-4 col-md-6 brand-item">

                        <div class="brand-card">

                            <div class="brand-logo motorola">
                                M
                            </div>

                            <h3>
                                Motorola
                            </h3>

                            <p>
                                Clean Android experience
                            </p>

                            <a href="all-mobiles.aspx">
                                View Mobiles →
                            </a>

                        </div>

                    </div>


                    <!-- GOOGLE -->

                    <div class="col-xl-3 col-lg-4 col-md-6 brand-item">

                        <div class="brand-card">

                            <div class="brand-logo google">
                                G
                            </div>

                            <h3>
                                Google
                            </h3>

                            <p>
                                Pixel smartphones
                            </p>

                            <a href="all-mobiles.aspx">
                                View Mobiles →
                            </a>

                        </div>

                    </div>


                    <!-- IQOO -->

                    <div class="col-xl-3 col-lg-4 col-md-6 brand-item">

                        <div class="brand-card">

                            <div class="brand-logo iqoo">
                                iQOO
                            </div>

                            <h3>
                                iQOO
                            </h3>

                            <p>
                                Gaming & performance
                            </p>

                            <a href="all-mobiles.aspx">
                                View Mobiles →
                            </a>

                        </div>

                    </div>


                    <!-- NOTHING -->

                    <div class="col-xl-3 col-lg-4 col-md-6 brand-item">

                        <div class="brand-card">

                            <div class="brand-logo nothing">

                                <span class="nothing-logo">
                                    Nothing
                                </span>

                            </div>

                            <h3>
                                Nothing
                            </h3>

                            <p>
                                Unique modern design
                            </p>

                            <a href="all-mobiles.aspx">
                                View Mobiles →
                            </a>

                        </div>

                    </div>


                </div>


                <!-- POPULAR -->

                <div class="popular-section">


                    <div class="section-title">

                        <h2>
                            Popular Brands
                        </h2>

                        <p>
                            Most searched brands on MobileHub.
                        </p>

                    </div>


                    <div class="popular-box">

                        <div class="row g-3">


                            <div class="col-lg-4 col-md-6">

                                <div class="popular-item">

                                    <div class="popular-number">
                                        01
                                    </div>

                                    <div>

                                        <strong>
                                            Apple
                                        </strong>

                                        <span>
                                            Premium smartphones
                                        </span>

                                    </div>

                                </div>

                            </div>


                            <div class="col-lg-4 col-md-6">

                                <div class="popular-item">

                                    <div class="popular-number">
                                        02
                                    </div>

                                    <div>

                                        <strong>
                                            Samsung
                                        </strong>

                                        <span>
                                            Galaxy series
                                        </span>

                                    </div>

                                </div>

                            </div>


                            <div class="col-lg-4 col-md-6">

                                <div class="popular-item">

                                    <div class="popular-number">
                                        03
                                    </div>

                                    <div>

                                        <strong>
                                            OnePlus
                                        </strong>

                                        <span>
                                            Performance phones
                                        </span>

                                    </div>

                                </div>

                            </div>


                            <div class="col-lg-4 col-md-6">

                                <div class="popular-item">

                                    <div class="popular-number">
                                        04
                                    </div>

                                    <div>

                                        <strong>
                                            Xiaomi
                                        </strong>

                                        <span>
                                            Value smartphones
                                        </span>

                                    </div>

                                </div>

                            </div>


                            <div class="col-lg-4 col-md-6">

                                <div class="popular-item">

                                    <div class="popular-number">
                                        05
                                    </div>

                                    <div>

                                        <strong>
                                            Vivo
                                        </strong>

                                        <span>
                                            Camera phones
                                        </span>

                                    </div>

                                </div>

                            </div>


                            <div class="col-lg-4 col-md-6">

                                <div class="popular-item">

                                    <div class="popular-number">
                                        06
                                    </div>

                                    <div>

                                        <strong>
                                            OPPO
                                        </strong>

                                        <span>
                                            Stylish smartphones
                                        </span>

                                    </div>

                                </div>

                            </div>


                        </div>

                    </div>

                </div>


            </div>

        </section>


    </div>


</form>


<script>

    function searchBrands() {

        var input =
            document.getElementById("brandSearch")
            .value
            .toLowerCase();

        var brands =
            document.querySelectorAll(".brand-item");


        brands.forEach(function(item) {

            var name =
                item.querySelector("h3")
                    .innerText
                    .toLowerCase();


            if (name.includes(input)) {

                item.style.display = "";

            } else {

                item.style.display = "none";

            }

        });

    }

</script>


</body>

</html>