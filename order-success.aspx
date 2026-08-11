<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">

    <meta charset="utf-8" />

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0" />

    <title>Order Successful | MobileHub</title>

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

        .success-page {
            min-height: calc(100vh - 75px);
            background: #f5f7fb;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 50px 20px;
        }


        .success-card {
            width: 100%;
            max-width: 650px;
            background: white;
            border: 1px solid #e2e7ef;
            border-radius: 22px;
            padding: 50px 40px;
            text-align: center;
            box-shadow: 0 15px 45px rgba(15,31,61,.07);
        }


        .success-icon {
            width: 90px;
            height: 90px;
            border-radius: 50%;
            background: #eaf8f0;
            color: #18864b;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 25px;
            font-size: 38px;
        }


        .success-card h1 {
            font-size: 28px;
            font-weight: 800;
            color: #101828;
            margin-bottom: 10px;
        }


        .success-card > p {
            color: #7b8799;
            font-size: 11px;
            line-height: 1.8;
            margin-bottom: 25px;
        }


        .order-info {
            background: #f7f9fc;
            border-radius: 13px;
            padding: 18px 20px;
            margin-bottom: 25px;
        }


        .order-row {
            display: flex;
            justify-content: space-between;
            padding: 8px 0;
            font-size: 10px;
            border-bottom: 1px solid #e9edf3;
        }


        .order-row:last-child {
            border-bottom: none;
        }


        .order-row span:first-child {
            color: #8993a4;
        }


        .order-row span:last-child {
            color: #101828;
            font-weight: 700;
        }


        .order-id {
            color: #2563eb !important;
        }


        .delivery-box {
            display: flex;
            align-items: center;
            gap: 12px;
            text-align: left;
            background: #f7faff;
            border: 1px solid #dce8ff;
            border-radius: 12px;
            padding: 15px;
            margin-bottom: 25px;
        }


        .delivery-icon {
            width: 40px;
            height: 40px;
            border-radius: 10px;
            background: #edf3ff;
            color: #2563eb;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-shrink: 0;
        }


        .delivery-box strong {
            display: block;
            font-size: 10px;
            color: #101828;
            margin-bottom: 3px;
        }


        .delivery-box span {
            color: #8993a4;
            font-size: 8px;
        }


        .action-buttons {
            display: flex;
            gap: 10px;
            justify-content: center;
        }


        .btn-home,
        .btn-orders {
            height: 43px;
            padding: 0 20px;
            border-radius: 8px;
            text-decoration: none;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 7px;
            font-size: 10px;
            font-weight: 700;
        }


        .btn-home {
            background: #2563eb;
            color: white;
        }


        .btn-home:hover {
            background: #1551d0;
            color: white;
        }


        .btn-orders {
            border: 1px solid #dfe4ec;
            color: #344054;
            background: white;
        }


        .btn-orders:hover {
            border-color: #2563eb;
            color: #2563eb;
        }


        .thank-you {
            margin-top: 25px;
            color: #98a1b1;
            font-size: 9px;
        }


        @media(max-width: 575px) {

            .success-card {
                padding: 35px 20px;
            }

            .success-card h1 {
                font-size: 23px;
            }

            .action-buttons {
                flex-direction: column;
            }

            .btn-home,
            .btn-orders {
                width: 100%;
            }

        }

    </style>

</head>


<body>

<form id="successForm" runat="server">


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


    <!-- ================= SUCCESS ================= -->

    <section class="success-page">


        <div class="success-card">


            <!-- SUCCESS ICON -->

            <div class="success-icon">

                <i class="fa-solid fa-check"></i>

            </div>


            <h1>
                Order Placed Successfully!
            </h1>


            <p>

                Thank you for shopping with MobileHub.
                Your order has been successfully placed
                and will be processed shortly.

            </p>


            <!-- ORDER INFORMATION -->

            <div class="order-info">


                <div class="order-row">

                    <span>
                        Order ID
                    </span>

                    <span class="order-id">
                        #MH20260808
                    </span>

                </div>


                <div class="order-row">

                    <span>
                        Order Date
                    </span>

                    <span>
                        08 August 2026
                    </span>

                </div>


                <div class="order-row">

                    <span>
                        Payment Method
                    </span>

                    <span>
                        UPI
                    </span>

                </div>


                <div class="order-row">

                    <span>
                        Total Amount
                    </span>

                    <span>
                        ₹2,04,998
                    </span>

                </div>


            </div>


            <!-- DELIVERY -->

            <div class="delivery-box">


                <div class="delivery-icon">

                    <i class="fa-solid fa-truck"></i>

                </div>


                <div>

                    <strong>
                        Estimated Delivery
                    </strong>

                    <span>
                        Your order will arrive within 3–5 business days.
                    </span>

                </div>


            </div>


            <!-- BUTTONS -->

            <div class="action-buttons">


                <a href="index.aspx"
                   class="btn-home">

                    <i class="fa-solid fa-house"></i>

                    Continue Shopping

                </a>


                <a href="profile.aspx"
                   class="btn-orders">

                    <i class="fa-solid fa-box"></i>

                    View My Orders

                </a>


            </div>


            <div class="thank-you">

                <i class="fa-regular fa-heart"></i>

                We appreciate your trust in MobileHub.

            </div>


        </div>


    </section>


</form>

</body>

</html>