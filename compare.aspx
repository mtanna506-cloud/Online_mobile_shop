<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">

    <meta charset="utf-8" />

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0" />

    <title>Compare Mobiles | MobileHub</title>

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

        .compare-page {
            background: #f5f7fb;
            min-height: 100vh;
            padding: 35px 0 70px;
        }

        .compare-heading {
            text-align: center;
            margin-bottom: 30px;
        }

        .compare-heading h1 {
            font-size: 30px;
            font-weight: 800;
            color: #101828;
            margin-bottom: 7px;
        }

        .compare-heading p {
            color: #8993a4;
            font-size: 10px;
            margin: 0;
        }

        .compare-card {
            background: white;
            border: 1px solid #e2e7ef;
            border-radius: 18px;
            padding: 25px;
            overflow-x: auto;
        }

        .compare-table {
            min-width: 750px;
            width: 100%;
            border-collapse: collapse;
        }

        .compare-table th,
        .compare-table td {
            border-bottom: 1px solid #edf0f4;
            padding: 15px 12px;
            text-align: center;
            font-size: 9px;
        }

        .compare-table th {
            color: #101828;
            font-weight: 800;
            background: #f8fafc;
        }

        .compare-table td:first-child,
        .compare-table th:first-child {
            text-align: left;
            width: 180px;
        }

        .product-header {
            padding: 10px;
        }

        .phone-image {
            width: 85px;
            height: 125px;
            margin: 0 auto 12px;
            border-radius: 13px;
            background: linear-gradient(145deg, #eef4ff, #dce8ff);
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .phone-shape {
            width: 43px;
            height: 82px;
            border-radius: 9px;
            border: 4px solid #20242d;
            background: linear-gradient(145deg, #78adff, #2856a3);
            position: relative;
        }

        .phone-shape:before {
            content: "";
            position: absolute;
            width: 15px;
            height: 4px;
            border-radius: 10px;
            background: #20242d;
            top: 5px;
            left: 50%;
            transform: translateX(-50%);
        }

        .product-name {
            font-size: 10px;
            font-weight: 800;
            color: #101828;
            margin-bottom: 5px;
        }

        .product-price {
            color: #2563eb;
            font-size: 10px;
            font-weight: 800;
        }

        .spec-name {
            color: #52627a;
            font-weight: 600;
        }

        .spec-value {
            color: #7b8799;
        }

        .rating {
            color: #f5a623;
        }

        .compare-btn {
            background: #2563eb;
            border: none;
            color: white;
            padding: 8px 14px;
            border-radius: 7px;
            font-size: 8px;
            font-weight: 700;
            text-decoration: none;
            display: inline-block;
        }

        .compare-btn:hover {
            color: white;
            background: #1d4ed8;
        }

        .remove-btn {
            background: #fff1f2;
            color: #e11d48;
            border: none;
            padding: 7px 10px;
            border-radius: 6px;
            font-size: 8px;
            font-weight: 700;
        }

        .empty-compare {
            background: white;
            border: 1px solid #e2e7ef;
            border-radius: 18px;
            text-align: center;
            padding: 60px 20px;
            display: none;
        }

        .empty-icon {
            width: 65px;
            height: 65px;
            border-radius: 50%;
            background: #edf3ff;
            color: #2563eb;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 15px;
            font-size: 24px;
        }

        .empty-compare h2 {
            font-size: 17px;
            font-weight: 800;
            color: #101828;
        }

        .empty-compare p {
            color: #8993a4;
            font-size: 9px;
            margin-bottom: 18px;
        }

        .browse-btn {
            display: inline-block;
            background: #2563eb;
            color: white;
            padding: 9px 18px;
            border-radius: 7px;
            text-decoration: none;
            font-size: 9px;
            font-weight: 700;
        }

        .browse-btn:hover {
            color: white;
        }

        @media(max-width: 575px) {

            .compare-heading h1 {
                font-size: 24px;
            }

            .compare-card {
                padding: 15px;
            }

        }

    </style>

</head>


<body>

<form id="compareForm" runat="server">


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


    <!-- ================= COMPARE ================= -->

    <section class="compare-page">

        <div class="container">


            <div class="compare-heading">

                <h1>
                    Compare Mobiles
                </h1>

                <p>
                    Compare smartphones and choose the right one for you.
                </p>

            </div>


            <div class="compare-card">


                <table class="compare-table">


                    <!-- PRODUCT HEADER -->

                    <thead>

                        <tr>

                            <th>
                                Specifications
                            </th>


                            <th>

                                <div class="product-header">

                                    <div class="phone-image">

                                        <div class="phone-shape"></div>

                                    </div>

                                    <div class="product-name">
                                        Galaxy S24
                                    </div>

                                    <div class="product-price">
                                        ₹74,999
                                    </div>

                                </div>

                            </th>


                            <th>

                                <div class="product-header">

                                    <div class="phone-image">

                                        <div class="phone-shape"></div>

                                    </div>

                                    <div class="product-name">
                                        iPhone 15
                                    </div>

                                    <div class="product-price">
                                        ₹69,999
                                    </div>

                                </div>

                            </th>


                            <th>

                                <div class="product-header">

                                    <div class="phone-image">

                                        <div class="phone-shape"></div>

                                    </div>

                                    <div class="product-name">
                                        Pixel 8
                                    </div>

                                    <div class="product-price">
                                        ₹59,999
                                    </div>

                                </div>

                            </th>

                        </tr>

                    </thead>


                    <tbody>


                        <!-- BRAND -->

                        <tr>

                            <td class="spec-name">
                                Brand
                            </td>

                            <td class="spec-value">
                                Samsung
                            </td>

                            <td class="spec-value">
                                Apple
                            </td>

                            <td class="spec-value">
                                Google
                            </td>

                        </tr>


                        <!-- DISPLAY -->

                        <tr>

                            <td class="spec-name">
                                Display
                            </td>

                            <td class="spec-value">
                                6.2 inch AMOLED
                            </td>

                            <td class="spec-value">
                                6.1 inch OLED
                            </td>

                            <td class="spec-value">
                                6.2 inch OLED
                            </td>

                        </tr>


                        <!-- PROCESSOR -->

                        <tr>

                            <td class="spec-name">
                                Processor
                            </td>

                            <td class="spec-value">
                                Snapdragon 8 Gen 3
                            </td>

                            <td class="spec-value">
                                A16 Bionic
                            </td>

                            <td class="spec-value">
                                Google Tensor G3
                            </td>

                        </tr>


                        <!-- RAM -->

                        <tr>

                            <td class="spec-name">
                                RAM
                            </td>

                            <td class="spec-value">
                                8 GB
                            </td>

                            <td class="spec-value">
                                6 GB
                            </td>

                            <td class="spec-value">
                                8 GB
                            </td>

                        </tr>


                        <!-- STORAGE -->

                        <tr>

                            <td class="spec-name">
                                Storage
                            </td>

                            <td class="spec-value">
                                256 GB
                            </td>

                            <td class="spec-value">
                                128 GB
                            </td>

                            <td class="spec-value">
                                128 GB
                            </td>

                        </tr>


                        <!-- CAMERA -->

                        <tr>

                            <td class="spec-name">
                                Main Camera
                            </td>

                            <td class="spec-value">
                                50 MP
                            </td>

                            <td class="spec-value">
                                48 MP
                            </td>

                            <td class="spec-value">
                                50 MP
                            </td>

                        </tr>


                        <!-- BATTERY -->

                        <tr>

                            <td class="spec-name">
                                Battery
                            </td>

                            <td class="spec-value">
                                4000 mAh
                            </td>

                            <td class="spec-value">
                                3349 mAh
                            </td>

                            <td class="spec-value">
                                4575 mAh
                            </td>

                        </tr>


                        <!-- OS -->

                        <tr>

                            <td class="spec-name">
                                Operating System
                            </td>

                            <td class="spec-value">
                                Android
                            </td>

                            <td class="spec-value">
                                iOS
                            </td>

                            <td class="spec-value">
                                Android
                            </td>

                        </tr>


                        <!-- RATING -->

                        <tr>

                            <td class="spec-name">
                                Rating
                            </td>

                            <td class="spec-value rating">
                                ★★★★★
                            </td>

                            <td class="spec-value rating">
                                ★★★★☆
                            </td>

                            <td class="spec-value rating">
                                ★★★★☆
                            </td>

                        </tr>


                        <!-- ACTION -->

                        <tr>

                            <td class="spec-name">
                                Action
                            </td>


                            <td>

                                <a href="product-details.aspx"
                                   class="compare-btn">

                                    View Product

                                </a>

                            </td>


                            <td>

                                <a href="product-details.aspx"
                                   class="compare-btn">

                                    View Product

                                </a>

                            </td>


                            <td>

                                <a href="product-details.aspx"
                                   class="compare-btn">

                                    View Product

                                </a>

                            </td>

                        </tr>


                        <!-- REMOVE -->

                        <tr>

                            <td class="spec-name">
                                Compare List
                            </td>


                            <td>

                                <button type="button"
                                        class="remove-btn">

                                    <i class="fa-solid fa-xmark"></i>
                                    Remove

                                </button>

                            </td>


                            <td>

                                <button type="button"
                                        class="remove-btn">

                                    <i class="fa-solid fa-xmark"></i>
                                    Remove

                                </button>

                            </td>


                            <td>

                                <button type="button"
                                        class="remove-btn">

                                    <i class="fa-solid fa-xmark"></i>
                                    Remove

                                </button>

                            </td>

                        </tr>


                    </tbody>


                </table>


            </div>


            <!-- EMPTY COMPARE -->

            <div class="empty-compare">

                <div class="empty-icon">

                    <i class="fa-solid fa-code-compare"></i>

                </div>


                <h2>
                    No Products to Compare
                </h2>


                <p>
                    Add mobile phones to your compare list
                    to see their specifications side by side.
                </p>


                <a href="all-mobiles.aspx"
                   class="browse-btn">

                    Browse Mobiles

                </a>

            </div>


        </div>

    </section>


</form>

</body>

</html>