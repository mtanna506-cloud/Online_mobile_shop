<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">

    <meta charset="utf-8" />

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0" />

    <title>Track Order | MobileHub</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

    <link href="css/style.css" rel="stylesheet">

    <style>

        .track-page {
            background: #f5f7fb;
            min-height: 100vh;
            padding: 50px 0;
        }

        .track-box {
            max-width: 650px;
            margin: auto;
            background: #fff;
            border: 1px solid #e2e7ef;
            border-radius: 18px;
            padding: 35px;
        }

        .track-icon {
            width: 70px;
            height: 70px;
            background: #eef4ff;
            color: #2563eb;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 15px;
            font-size: 28px;
        }

        .track-title {
            text-align: center;
            margin-bottom: 25px;
        }

        .track-title h1 {
            font-size: 24px;
            font-weight: 800;
            color: #101828;
        }

        .track-title p {
            color: #8993a4;
            font-size: 12px;
        }

        .track-input {
            width: 100%;
            height: 45px;
            border: 1px solid #d0d5dd;
            border-radius: 8px;
            padding: 0 14px;
            outline: none;
        }

        .track-input:focus {
            border-color: #2563eb;
        }

        .track-btn {
            width: 100%;
            margin-top: 12px;
            border: none;
            background: #2563eb;
            color: white;
            padding: 11px;
            border-radius: 8px;
            font-weight: 700;
        }

        .track-btn:hover {
            background: #1d4ed8;
        }

        .example {
            text-align: center;
            color: #98a1b1;
            font-size: 11px;
            margin-top: 10px;
        }

        .status-box {
            display: none;
            margin-top: 30px;
            border-top: 1px solid #edf0f4;
            padding-top: 25px;
        }

        .status-title {
            font-size: 16px;
            font-weight: 800;
            color: #101828;
            margin-bottom: 20px;
        }

        .status-item {
            display: flex;
            gap: 15px;
            margin-bottom: 20px;
        }

        .status-icon {
            width: 38px;
            height: 38px;
            min-width: 38px;
            background: #eaf8ef;
            color: #16a34a;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .status-item h4 {
            font-size: 13px;
            font-weight: 800;
            color: #101828;
            margin-bottom: 3px;
        }

        .status-item p {
            font-size: 11px;
            color: #8993a4;
            margin: 0;
        }

    </style>

</head>

<body>

<form id="trackForm" runat="server">

    <!-- NAVBAR -->

    <nav class="main-navbar">

        <div class="container-fluid px-4">

            <div class="navbar-content">

                <a href="index.aspx" class="logo">
                    Mobile<span>Hub</span><b>.</b>
                </a>

                <div class="search-box">

                    <i class="fa-solid fa-magnifying-glass"></i>

                    <input type="text"
                           placeholder="Search phones, brands, accessories..." />

                </div>

                <div class="menu-links">

                    <a href="index.aspx">Home</a>

                    <a href="all-mobiles.aspx">All Mobiles</a>

                    <a href="categories.aspx">Categories</a>

                    <a href="brands.aspx">Brands</a>

                    <a href="offers.aspx">Offers</a>

                </div>

                <div class="nav-icons">

                    <a href="profile.aspx">
                        <i class="fa-regular fa-user"></i>
                    </a>

                    <a href="wishlist-empty.aspx">
                        <i class="fa-regular fa-heart"></i>
                    </a>

                    <a href="cart-empty.aspx">
                        <i class="fa-solid fa-bag-shopping"></i>
                    </a>

                </div>

            </div>

        </div>

    </nav>


    <!-- TRACK ORDER -->

    <section class="track-page">

        <div class="container">

            <div class="track-box">

                <div class="track-title">

                    <div class="track-icon">
                        <i class="fa-solid fa-truck-fast"></i>
                    </div>

                    <h1>
                        Track Your Order
                    </h1>

                    <p>
                        Enter your order ID to check your order status.
                    </p>

                </div>


                <input type="text"
                       id="orderId"
                       class="track-input"
                       placeholder="Enter Order ID e.g. MH20260001" />


                <button type="button"
                        class="track-btn"
                        onclick="showTracking()">

                    <i class="fa-solid fa-location-dot"></i>
                    &nbsp; Track Order

                </button>


                <div class="example">
                    Demo Order ID: MH20260001
                </div>


                <div class="status-box"
                     id="trackingResult">

                    <div class="status-title">
                        Order Status
                    </div>


                    <div class="status-item">

                        <div class="status-icon">
                            <i class="fa-solid fa-check"></i>
                        </div>

                        <div>

                            <h4>
                                Order Confirmed
                            </h4>

                            <p>
                                Your order has been successfully confirmed.
                            </p>

                        </div>

                    </div>


                    <div class="status-item">

                        <div class="status-icon">
                            <i class="fa-solid fa-box"></i>
                        </div>

                        <div>

                            <h4>
                                Order Shipped
                            </h4>

                            <p>
                                Your package has been shipped.
                            </p>

                        </div>

                    </div>


                    <div class="status-item">

                        <div class="status-icon">
                            <i class="fa-solid fa-truck"></i>
                        </div>

                        <div>

                            <h4>
                                Out for Delivery
                            </h4>

                            <p>
                                Your order is on the way.
                            </p>

                        </div>

                    </div>


                    <div class="status-item">

                        <div class="status-icon">
                            <i class="fa-solid fa-house"></i>
                        </div>

                        <div>

                            <h4>
                                Expected Delivery
                            </h4>

                            <p>
                                Your order will be delivered soon.
                            </p>

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </section>

</form>


<script>

    function showTracking() {

        var orderId = document.getElementById("orderId").value;

        if (orderId.trim() === "") {

            alert("Please enter your Order ID.");

            return;
        }

        document.getElementById("trackingResult").style.display = "block";

    }

</script>

</body>

</html>