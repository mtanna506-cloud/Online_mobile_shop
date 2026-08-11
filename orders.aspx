<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">

    <meta charset="utf-8" />

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0" />

    <title>My Orders | MobileHub</title>

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

        .orders-page {
            background: #f5f7fb;
            min-height: 100vh;
            padding: 35px 0 70px;
        }


        .page-heading {
            margin-bottom: 28px;
        }


        .page-heading h1 {
            font-size: 30px;
            font-weight: 800;
            color: #101828;
            margin-bottom: 5px;
        }


        .page-heading p {
            color: #7b8799;
            font-size: 11px;
            margin: 0;
        }


        /* FILTER */

        .order-filter {
            background: white;
            border: 1px solid #e2e7ef;
            border-radius: 14px;
            padding: 15px;
            margin-bottom: 20px;
            display: flex;
            gap: 8px;
            flex-wrap: wrap;
        }


        .filter-btn {
            border: 1px solid #dfe4ec;
            background: white;
            color: #667085;
            padding: 8px 14px;
            border-radius: 7px;
            font-family: 'Poppins', sans-serif;
            font-size: 9px;
            font-weight: 600;
            cursor: pointer;
        }


        .filter-btn:hover,
        .filter-btn.active {
            background: #edf3ff;
            border-color: #2563eb;
            color: #2563eb;
        }


        /* ORDER CARD */

        .order-card {
            background: white;
            border: 1px solid #e2e7ef;
            border-radius: 16px;
            margin-bottom: 18px;
            overflow: hidden;
        }


        .order-header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 15px;
            padding: 17px 20px;
            background: #fafbfc;
            border-bottom: 1px solid #edf0f4;
        }


        .order-number {
            font-size: 10px;
            font-weight: 800;
            color: #101828;
        }


        .order-date {
            font-size: 8px;
            color: #8993a4;
            margin-top: 4px;
        }


        .status {
            padding: 6px 10px;
            border-radius: 15px;
            font-size: 8px;
            font-weight: 700;
        }


        .status-delivered {
            background: #eaf8f0;
            color: #18864b;
        }


        .status-shipped {
            background: #edf3ff;
            color: #2563eb;
        }


        .status-processing {
            background: #fff7e6;
            color: #b7791f;
        }


        .order-body {
            padding: 20px;
        }


        .order-product {
            display: flex;
            align-items: center;
            gap: 15px;
        }


        .product-image {
            width: 72px;
            height: 82px;
            background: #f3f6fb;
            border-radius: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-shrink: 0;
        }


        .mini-phone {
            width: 30px;
            height: 58px;
            background: linear-gradient(145deg,#6fa9ff,#203d7c);
            border: 3px solid #171b24;
            border-radius: 8px;
            position: relative;
        }


        .mini-phone::before {
            content: "";
            position: absolute;
            width: 12px;
            height: 3px;
            border-radius: 5px;
            background: #171b24;
            top: 4px;
            left: 50%;
            transform: translateX(-50%);
        }


        .product-info {
            flex: 1;
        }


        .product-info .brand {
            color: #2563eb;
            font-size: 8px;
            font-weight: 700;
            text-transform: uppercase;
            margin-bottom: 4px;
        }


        .product-info h3 {
            font-size: 12px;
            font-weight: 700;
            color: #101828;
            margin-bottom: 4px;
        }


        .product-info p {
            color: #8993a4;
            font-size: 8px;
            margin: 3px 0;
        }


        .product-price {
            font-size: 12px;
            font-weight: 800;
            color: #101828;
            text-align: right;
        }


        .order-footer {
            border-top: 1px solid #edf0f4;
            padding: 15px 20px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 10px;
        }


        .total-label {
            font-size: 9px;
            color: #8993a4;
        }


        .total-price {
            font-size: 14px;
            font-weight: 800;
            color: #101828;
            margin-left: 5px;
        }


        .order-actions {
            display: flex;
            gap: 8px;
        }


        .view-order,
        .buy-again {
            height: 35px;
            padding: 0 13px;
            border-radius: 7px;
            font-family: 'Poppins', sans-serif;
            font-size: 8px;
            font-weight: 700;
            text-decoration: none;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 5px;
        }


        .view-order {
            border: 1px solid #dfe4ec;
            color: #344054;
            background: white;
        }


        .view-order:hover {
            border-color: #2563eb;
            color: #2563eb;
        }


        .buy-again {
            border: none;
            background: #2563eb;
            color: white;
            cursor: pointer;
        }


        .buy-again:hover {
            background: #1551d0;
            color: white;
        }


        /* EMPTY */

        .empty-orders {
            display: none;
            background: white;
            border: 1px solid #e2e7ef;
            border-radius: 18px;
            padding: 65px 20px;
            text-align: center;
        }


        .empty-icon {
            width: 75px;
            height: 75px;
            border-radius: 50%;
            background: #edf3ff;
            color: #2563eb;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 18px;
            font-size: 28px;
        }


        .empty-orders h2 {
            font-size: 20px;
            font-weight: 800;
            color: #101828;
        }


        .empty-orders p {
            color: #8993a4;
            font-size: 10px;
            margin-bottom: 20px;
        }


        .shop-btn {
            display: inline-block;
            background: #2563eb;
            color: white;
            padding: 11px 20px;
            border-radius: 8px;
            text-decoration: none;
            font-size: 9px;
            font-weight: 700;
        }


        @media(max-width: 575px) {

            .order-header {
                align-items: flex-start;
            }

            .order-footer {
                align-items: flex-start;
                flex-direction: column;
            }

            .order-actions {
                width: 100%;
            }

            .view-order,
            .buy-again {
                flex: 1;
            }

        }

    </style>

</head>


<body>

<form id="ordersForm" runat="server">


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

                    <a href="profile.aspx"
                       class="active">

                        <i class="fa-solid fa-user"></i>

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


    <!-- ================= ORDERS ================= -->

    <section class="orders-page">

        <div class="container-fluid px-4">


            <div class="page-heading">

                <h1>
                    My Orders
                </h1>

                <p>
                    Track and manage all your MobileHub orders.
                </p>

            </div>


            <!-- FILTER -->

            <div class="order-filter">

                <button type="button"
                        class="filter-btn active"
                        onclick="filterOrders('all',this)">

                    All Orders

                </button>


                <button type="button"
                        class="filter-btn"
                        onclick="filterOrders('delivered',this)">

                    Delivered

                </button>


                <button type="button"
                        class="filter-btn"
                        onclick="filterOrders('shipped',this)">

                    Shipped

                </button>


                <button type="button"
                        class="filter-btn"
                        onclick="filterOrders('processing',this)">

                    Processing

                </button>

            </div>


            <!-- ================= ORDER 1 ================= -->

            <div class="order-card"
                 data-status="delivered">


                <div class="order-header">

                    <div>

                        <div class="order-number">
                            Order #MH20260808
                        </div>

                        <div class="order-date">
                            Ordered on 08 August 2026
                        </div>

                    </div>


                    <span class="status status-delivered">

                        <i class="fa-solid fa-circle-check"></i>

                        Delivered

                    </span>

                </div>


                <div class="order-body">


                    <div class="order-product">


                        <div class="product-image">

                            <div class="mini-phone"></div>

                        </div>


                        <div class="product-info">

                            <div class="brand">
                                Samsung
                            </div>

                            <h3>
                                Galaxy S25 Ultra
                            </h3>

                            <p>
                                12GB RAM | 256GB | Titanium Blue
                            </p>

                            <p>
                                Quantity: 1
                            </p>

                        </div>


                        <div class="product-price">

                            ₹1,29,999

                        </div>


                    </div>


                </div>


                <div class="order-footer">


                    <div>

                        <span class="total-label">
                            Total Amount:
                        </span>

                        <span class="total-price">
                            ₹1,29,999
                        </span>

                    </div>


                    <div class="order-actions">

                        <a href="#"
                           class="view-order">

                            <i class="fa-solid fa-eye"></i>

                            View Details

                        </a>


                        <button type="button"
                                class="buy-again"
                                onclick="buyAgain()">

                            <i class="fa-solid fa-cart-shopping"></i>

                            Buy Again

                        </button>

                    </div>


                </div>


            </div>


            <!-- ================= ORDER 2 ================= -->

            <div class="order-card"
                 data-status="shipped">


                <div class="order-header">

                    <div>

                        <div class="order-number">
                            Order #MH20260721
                        </div>

                        <div class="order-date">
                            Ordered on 21 July 2026
                        </div>

                    </div>


                    <span class="status status-shipped">

                        <i class="fa-solid fa-truck"></i>

                        Shipped

                    </span>

                </div>


                <div class="order-body">


                    <div class="order-product">


                        <div class="product-image">

                            <div class="mini-phone"
                                 style="background:linear-gradient(145deg,#222,#777);">
                            </div>

                        </div>


                        <div class="product-info">

                            <div class="brand">
                                Apple
                            </div>

                            <h3>
                                iPhone 16
                            </h3>

                            <p>
                                8GB RAM | 128GB | Black
                            </p>

                            <p>
                                Quantity: 1
                            </p>

                        </div>


                        <div class="product-price">

                            ₹79,999

                        </div>


                    </div>


                </div>


                <div class="order-footer">


                    <div>

                        <span class="total-label">
                            Total Amount:
                        </span>

                        <span class="total-price">
                            ₹79,999
                        </span>

                    </div>


                    <div class="order-actions">

                        <a href="#"
                           class="view-order">

                            <i class="fa-solid fa-eye"></i>

                            View Details

                        </a>


                        <button type="button"
                                class="buy-again"
                                onclick="buyAgain()">

                            <i class="fa-solid fa-cart-shopping"></i>

                            Buy Again

                        </button>

                    </div>


                </div>


            </div>


            <!-- ================= ORDER 3 ================= -->

            <div class="order-card"
                 data-status="processing">


                <div class="order-header">

                    <div>

                        <div class="order-number">
                            Order #MH20260710
                        </div>

                        <div class="order-date">
                            Ordered on 10 July 2026
                        </div>

                    </div>


                    <span class="status status-processing">

                        <i class="fa-solid fa-clock"></i>

                        Processing

                    </span>

                </div>


                <div class="order-body">


                    <div class="order-product">


                        <div class="product-image">

                            <div class="mini-phone"
                                 style="background:linear-gradient(145deg,#8cc5a5,#205c42);">
                            </div>

                        </div>


                        <div class="product-info">

                            <div class="brand">
                                OnePlus
                            </div>

                            <h3>
                                OnePlus 13
                            </h3>

                            <p>
                                12GB RAM | 256GB | Green
                            </p>

                            <p>
                                Quantity: 1
                            </p>

                        </div>


                        <div class="product-price">

                            ₹69,999

                        </div>


                    </div>


                </div>


                <div class="order-footer">


                    <div>

                        <span class="total-label">
                            Total Amount:
                        </span>

                        <span class="total-price">
                            ₹69,999
                        </span>

                    </div>


                    <div class="order-actions">

                        <a href="#"
                           class="view-order">

                            <i class="fa-solid fa-eye"></i>

                            View Details

                        </a>


                        <button type="button"
                                class="buy-again"
                                onclick="buyAgain()">

                            <i class="fa-solid fa-cart-shopping"></i>

                            Buy Again

                        </button>

                    </div>


                </div>


            </div>


            <!-- EMPTY -->

            <div class="empty-orders"
                 id="emptyOrders">

                <div class="empty-icon">

                    <i class="fa-solid fa-box-open"></i>

                </div>


                <h2>
                    No Orders Found
                </h2>


                <p>
                    You don't have any orders in this category.
                </p>


                <a href="all-mobiles.aspx"
                   class="shop-btn">

                    Start Shopping

                </a>

            </div>


        </div>

    </section>


</form>


<script>

    function filterOrders(status, button) {

        var buttons =
            document.querySelectorAll(".filter-btn");


        buttons.forEach(function(btn) {

            btn.classList.remove("active");

        });


        button.classList.add("active");


        var orders =
            document.querySelectorAll(".order-card");


        var visible = 0;


        orders.forEach(function(order) {

            var orderStatus =
                order.getAttribute("data-status");


            if (status === "all" ||
                orderStatus === status) {

                order.style.display = "block";

                visible++;

            }

            else {

                order.style.display = "none";

            }

        });


        if (visible === 0) {

            document.getElementById("emptyOrders")
                .style.display = "block";

        }

        else {

            document.getElementById("emptyOrders")
                .style.display = "none";

        }

    }


    function buyAgain() {

        alert(
            "Product added to cart!"
        );

        window.location.href =
            "cart.aspx";

    }

</script>


</body>

</html>