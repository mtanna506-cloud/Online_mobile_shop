<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">

    <meta charset="utf-8" />

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0" />

    <title>Product Details | MobileHub</title>

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

        .product-page {
            background: #f5f7fb;
            min-height: 100vh;
            padding: 35px 0 70px;
        }


        .breadcrumb-area {
            margin-bottom: 25px;
            font-size: 12px;
            color: #7b8799;
        }


        .breadcrumb-area a {
            color: #2563eb;
        }


        .product-box {
            background: white;
            border-radius: 22px;
            padding: 35px;
            border: 1px solid #e3e7ef;
        }


        /* PRODUCT IMAGE */

        .product-image-area {
            min-height: 500px;
            background: #f7f9fc;
            border-radius: 18px;
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
        }


        .product-badge {
            position: absolute;
            top: 20px;
            left: 20px;
            background: #2563eb;
            color: white;
            padding: 7px 13px;
            border-radius: 20px;
            font-size: 10px;
            font-weight: 700;
        }


        .product-heart {
            position: absolute;
            top: 18px;
            right: 18px;
            width: 42px;
            height: 42px;
            border-radius: 50%;
            border: 1px solid #e0e5ed;
            background: white;
            color: #6d788b;
            cursor: pointer;
        }


        .product-heart:hover {
            color: #ef4444;
        }


        /* PHONE */

        .big-phone {
            width: 190px;
            height: 370px;
            border: 8px solid #171b24;
            border-radius: 38px;
            background: linear-gradient(145deg,#6fa9ff,#203d7c);
            position: relative;
            box-shadow: 0 30px 50px rgba(0,0,0,.2);
        }


        .big-phone::before {
            content: "";
            position: absolute;
            width: 65px;
            height: 9px;
            background: #1c222c;
            border-radius: 10px;
            top: 10px;
            left: 50%;
            transform: translateX(-50%);
        }


        .camera {
            position: absolute;
            top: 25px;
            left: 20px;
            width: 62px;
            height: 62px;
            border-radius: 15px;
            background: rgba(0,0,0,.25);
        }


        .camera span {
            position: absolute;
            width: 19px;
            height: 19px;
            border-radius: 50%;
            background: #111827;
            border: 3px solid #6c7789;
        }


        .camera span:nth-child(1) {
            top: 10px;
            left: 10px;
        }


        .camera span:nth-child(2) {
            top: 10px;
            right: 10px;
        }


        .camera span:nth-child(3) {
            bottom: 10px;
            left: 10px;
        }


        /* DETAILS */

        .product-info {
            padding: 10px 15px 10px 35px;
        }


        .product-brand {
            color: #2563eb;
            font-size: 12px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: .5px;
        }


        .product-info h1 {
            font-size: 35px;
            font-weight: 800;
            color: #101828;
            margin: 8px 0 10px;
        }


        .product-rating {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-bottom: 20px;
        }


        .stars {
            color: #f5a800;
            font-size: 14px;
        }


        .rating-text {
            color: #7b8799;
            font-size: 11px;
        }


        .product-price {
            font-size: 30px;
            font-weight: 800;
            color: #101828;
        }


        .product-price del {
            font-size: 14px;
            color: #98a1b1;
            margin-left: 8px;
        }


        .discount {
            display: inline-block;
            margin-left: 8px;
            background: #e8f7ee;
            color: #18864b;
            padding: 5px 9px;
            border-radius: 6px;
            font-size: 10px;
            font-weight: 700;
        }


        .emi {
            color: #7b8799;
            font-size: 11px;
            margin: 5px 0 25px;
        }


        .info-line {
            height: 1px;
            background: #e9edf3;
            margin: 20px 0;
        }


        .option-title {
            font-size: 13px;
            font-weight: 700;
            margin-bottom: 10px;
        }


        .storage-options {
            display: flex;
            gap: 9px;
        }


        .storage {
            border: 1px solid #dfe4ec;
            background: white;
            border-radius: 8px;
            padding: 9px 15px;
            font-size: 11px;
            cursor: pointer;
        }


        .storage.active {
            border-color: #2563eb;
            color: #2563eb;
            background: #edf3ff;
            font-weight: 700;
        }


        .color-options {
            display: flex;
            gap: 10px;
        }


        .color {
            width: 30px;
            height: 30px;
            border-radius: 50%;
            border: 3px solid white;
            outline: 1px solid #d5dbe5;
            cursor: pointer;
        }


        .color.blue {
            background: #31558c;
        }


        .color.black {
            background: #171a20;
        }


        .color.silver {
            background: #c9ced5;
        }


        .action-buttons {
            display: flex;
            gap: 12px;
            margin-top: 28px;
        }


        .cart-btn,
        .buy-btn {
            flex: 1;
            height: 50px;
            border-radius: 10px;
            font-family: 'Poppins', sans-serif;
            font-size: 13px;
            font-weight: 700;
            cursor: pointer;
        }


        .cart-btn {
            background: white;
            border: 1px solid #2563eb;
            color: #2563eb;
        }


        .cart-btn:hover {
            background: #edf3ff;
        }


        .buy-btn {
            background: #2563eb;
            border: 1px solid #2563eb;
            color: white;
        }


        .buy-btn:hover {
            background: #1551d0;
        }


        /* FEATURES */

        .features-box {
            background: white;
            border-radius: 20px;
            border: 1px solid #e3e7ef;
            margin-top: 25px;
            padding: 28px;
        }


        .features-box h2 {
            font-size: 20px;
            font-weight: 800;
            margin-bottom: 22px;
        }


        .feature {
            display: flex;
            align-items: center;
            gap: 13px;
            padding: 15px 0;
            border-bottom: 1px solid #edf0f4;
        }


        .feature:last-child {
            border-bottom: none;
        }


        .feature-icon {
            width: 40px;
            height: 40px;
            border-radius: 10px;
            background: #edf3ff;
            color: #2563eb;
            display: flex;
            align-items: center;
            justify-content: center;
        }


        .feature strong {
            display: block;
            font-size: 12px;
        }


        .feature span {
            color: #7b8799;
            font-size: 10px;
        }


        /* SPECIFICATIONS */

        .spec-box {
            background: white;
            border-radius: 20px;
            border: 1px solid #e3e7ef;
            margin-top: 25px;
            padding: 28px;
        }


        .spec-box h2 {
            font-size: 20px;
            font-weight: 800;
            margin-bottom: 20px;
        }


        .spec-row {
            display: flex;
            padding: 13px 0;
            border-bottom: 1px solid #edf0f4;
            font-size: 12px;
        }


        .spec-row:last-child {
            border-bottom: none;
        }


        .spec-row strong {
            width: 35%;
            color: #667085;
        }


        .spec-row span {
            width: 65%;
            color: #202a3d;
            font-weight: 600;
        }


        @media(max-width: 991px) {

            .product-info {
                padding: 30px 5px 5px;
            }

        }


        @media(max-width: 575px) {

            .product-box {
                padding: 18px;
            }

            .product-image-area {
                min-height: 400px;
            }

            .big-phone {
                width: 155px;
                height: 300px;
            }

            .product-info h1 {
                font-size: 27px;
            }

            .product-price {
                font-size: 25px;
            }

            .action-buttons {
                flex-direction: column;
            }

        }

    </style>

</head>


<body>

<form id="productForm" runat="server">


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


    <!-- ================= PRODUCT PAGE ================= -->

    <section class="product-page">

        <div class="container-fluid px-4">


            <div class="breadcrumb-area">

                <a href="index.aspx">Home</a>

                &nbsp; / &nbsp;

                <a href="all-mobiles.aspx">Mobiles</a>

                &nbsp; / &nbsp;

                Samsung Galaxy S25 Ultra

            </div>


            <!-- PRODUCT -->

            <div class="product-box">

                <div class="row g-4">


                    <!-- IMAGE -->

                    <div class="col-lg-6">

                        <div class="product-image-area">

                            <span class="product-badge">
                                Bestseller
                            </span>


                            <button type="button"
                                    class="product-heart"
                                    onclick="toggleProductHeart()">

                                <i class="fa-regular fa-heart"
                                   id="heartIcon"></i>

                            </button>


                            <div class="big-phone">

                                <div class="camera">

                                    <span></span>
                                    <span></span>
                                    <span></span>

                                </div>

                            </div>

                        </div>

                    </div>


                    <!-- INFORMATION -->

                    <div class="col-lg-6">

                        <div class="product-info">


                            <div class="product-brand">
                                Samsung
                            </div>


                            <h1>
                                Galaxy S25 Ultra
                            </h1>


                            <div class="product-rating">

                                <span class="stars">
                                    ★★★★★
                                </span>

                                <span class="rating-text">
                                    4.8 &nbsp; | &nbsp; 245 Reviews
                                </span>

                            </div>


                            <div class="product-price">

                                ₹1,29,999

                                <del>
                                    ₹1,39,999
                                </del>

                                <span class="discount">
                                    7% OFF
                                </span>

                            </div>


                            <div class="emi">

                                EMI starting from ₹6,099/month

                            </div>


                            <div class="info-line"></div>


                            <!-- STORAGE -->

                            <div class="option-title">
                                Storage
                            </div>


                            <div class="storage-options">

                                <button type="button"
                                        class="storage active">
                                    256GB
                                </button>

                                <button type="button"
                                        class="storage">
                                    512GB
                                </button>

                                <button type="button"
                                        class="storage">
                                    1TB
                                </button>

                            </div>


                            <br />


                            <!-- COLOR -->

                            <div class="option-title">
                                Colour: Titanium Blue
                            </div>


                            <div class="color-options">

                                <button type="button"
                                        class="color blue">
                                </button>

                                <button type="button"
                                        class="color black">
                                </button>

                                <button type="button"
                                        class="color silver">
                                </button>

                            </div>


                            <!-- BUTTONS -->

                            <div class="action-buttons">

                                <button type="button"
                                        class="cart-btn"
                                        onclick="addToCart()">

                                    <i class="fa-solid fa-cart-shopping"></i>

                                    &nbsp; Add to Cart

                                </button>


                                <button type="button"
                                        class="buy-btn"
                                        onclick="buyNow()">

                                    <i class="fa-solid fa-bolt"></i>

                                    &nbsp; Buy Now

                                </button>

                            </div>


                        </div>

                    </div>


                </div>

            </div>


            <!-- FEATURES -->

            <div class="features-box">

                <h2>
                    Key Features
                </h2>


                <div class="row">


                    <div class="col-lg-3 col-md-6">

                        <div class="feature">

                            <div class="feature-icon">
                                <i class="fa-solid fa-microchip"></i>
                            </div>

                            <div>

                                <strong>
                                    Snapdragon 8 Elite
                                </strong>

                                <span>
                                    Powerful Performance
                                </span>

                            </div>

                        </div>

                    </div>


                    <div class="col-lg-3 col-md-6">

                        <div class="feature">

                            <div class="feature-icon">
                                <i class="fa-solid fa-camera"></i>
                            </div>

                            <div>

                                <strong>
                                    200MP Camera
                                </strong>

                                <span>
                                    Pro-grade Photography
                                </span>

                            </div>

                        </div>

                    </div>


                    <div class="col-lg-3 col-md-6">

                        <div class="feature">

                            <div class="feature-icon">
                                <i class="fa-solid fa-battery-full"></i>
                            </div>

                            <div>

                                <strong>
                                    5000 mAh
                                </strong>

                                <span>
                                    Long Battery Life
                                </span>

                            </div>

                        </div>

                    </div>


                    <div class="col-lg-3 col-md-6">

                        <div class="feature">

                            <div class="feature-icon">
                                <i class="fa-solid fa-display"></i>
                            </div>

                            <div>

                                <strong>
                                    6.9" AMOLED
                                </strong>

                                <span>
                                    120Hz Display
                                </span>

                            </div>

                        </div>

                    </div>


                </div>

            </div>


            <!-- SPECIFICATIONS -->

            <div class="spec-box">

                <h2>
                    Specifications
                </h2>


                <div class="spec-row">

                    <strong>
                        Brand
                    </strong>

                    <span>
                        Samsung
                    </span>

                </div>


                <div class="spec-row">

                    <strong>
                        Model
                    </strong>

                    <span>
                        Galaxy S25 Ultra
                    </span>

                </div>


                <div class="spec-row">

                    <strong>
                        Display
                    </strong>

                    <span>
                        6.9-inch Dynamic AMOLED 2X, 120Hz
                    </span>

                </div>


                <div class="spec-row">

                    <strong>
                        Processor
                    </strong>

                    <span>
                        Snapdragon 8 Elite
                    </span>

                </div>


                <div class="spec-row">

                    <strong>
                        RAM
                    </strong>

                    <span>
                        12GB
                    </span>

                </div>


                <div class="spec-row">

                    <strong>
                        Storage
                    </strong>

                    <span>
                        256GB / 512GB / 1TB
                    </span>

                </div>


                <div class="spec-row">

                    <strong>
                        Rear Camera
                    </strong>

                    <span>
                        200MP + 50MP + 50MP + 10MP
                    </span>

                </div>


                <div class="spec-row">

                    <strong>
                        Front Camera
                    </strong>

                    <span>
                        12MP
                    </span>

                </div>


                <div class="spec-row">

                    <strong>
                        Battery
                    </strong>

                    <span>
                        5000 mAh
                    </span>

                </div>


                <div class="spec-row">

                    <strong>
                        Network
                    </strong>

                    <span>
                        5G
                    </span>

                </div>


            </div>


        </div>

    </section>


</form>


<script>

    function toggleProductHeart() {

        var icon =
            document.getElementById("heartIcon");

        icon.classList.toggle("fa-regular");

        icon.classList.toggle("fa-solid");

    }


    document.querySelectorAll(".storage").forEach(function(button) {

        button.addEventListener("click", function() {

            document.querySelectorAll(".storage")
                .forEach(function(item) {

                    item.classList.remove("active");

                });

            this.classList.add("active");

        });

    });


    function addToCart() {

        alert("Samsung Galaxy S25 Ultra added to cart.");

    }


    function buyNow() {

        alert("Buy Now page will be connected later.");

    }

</script>


</body>

</html>