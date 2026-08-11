<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">

    <meta charset="utf-8" />

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0" />

    <title>Shipping Policy | MobileHub</title>

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

        .shipping-page {
            background: #f5f7fb;
            min-height: 100vh;
            padding: 35px 0 70px;
        }

        .shipping-heading {
            text-align: center;
            margin-bottom: 30px;
        }

        .shipping-heading h1 {
            font-size: 30px;
            font-weight: 800;
            color: #101828;
            margin-bottom: 7px;
        }

        .shipping-heading p {
            font-size: 10px;
            color: #8993a4;
            margin: 0;
        }

        .shipping-card {
            background: #fff;
            border: 1px solid #e2e7ef;
            border-radius: 18px;
            padding: 30px;
        }

        .shipping-intro {
            background: #edf3ff;
            border-radius: 12px;
            padding: 18px;
            margin-bottom: 25px;
        }

        .shipping-intro p {
            color: #52627a;
            font-size: 9px;
            line-height: 1.8;
            margin: 0;
        }

        .shipping-section {
            padding: 20px 0;
            border-bottom: 1px solid #edf0f4;
        }

        .shipping-section:last-child {
            border-bottom: none;
        }

        .shipping-section h2 {
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 15px;
            font-weight: 800;
            color: #101828;
            margin-bottom: 10px;
        }

        .shipping-section h2 i {
            color: #2563eb;
            font-size: 14px;
        }

        .shipping-section p {
            color: #7b8799;
            font-size: 9px;
            line-height: 1.9;
            margin-bottom: 8px;
        }

        .shipping-section ul {
            padding-left: 18px;
            margin-bottom: 0;
        }

        .shipping-section li {
            color: #7b8799;
            font-size: 9px;
            line-height: 2;
        }

        /* DELIVERY STEPS */

        .delivery-steps {
            display: flex;
            justify-content: space-between;
            position: relative;
            margin: 25px 0 5px;
        }

        .delivery-steps:before {
            content: "";
            position: absolute;
            left: 10%;
            right: 10%;
            top: 25px;
            height: 2px;
            background: #dfe4ec;
        }

        .delivery-step {
            width: 25%;
            text-align: center;
            position: relative;
            z-index: 1;
        }

        .step-icon {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            background: #edf3ff;
            color: #2563eb;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 10px;
            border: 4px solid white;
            box-shadow: 0 0 0 1px #dfe4ec;
        }

        .delivery-step h3 {
            font-size: 9px;
            font-weight: 800;
            color: #344054;
            margin-bottom: 4px;
        }

        .delivery-step p {
            font-size: 7px;
            color: #98a1b1;
            line-height: 1.5;
        }

        /* INFO BOX */

        .info-box {
            background: #f8fafc;
            border-left: 3px solid #2563eb;
            border-radius: 7px;
            padding: 13px 15px;
            margin-top: 12px;
        }

        .info-box p {
            margin: 0;
        }

        /* CONTACT */

        .contact-box {
            background: #101828;
            border-radius: 12px;
            padding: 20px;
            margin-top: 20px;
        }

        .contact-box h3 {
            color: white;
            font-size: 12px;
            font-weight: 800;
            margin-bottom: 7px;
        }

        .contact-box p {
            color: #b8c1d1;
            font-size: 8px;
            line-height: 1.8;
            margin: 0;
        }

        .last-updated {
            margin-top: 25px;
            text-align: center;
            color: #98a1b1;
            font-size: 8px;
        }

        @media(max-width: 600px) {

            .shipping-card {
                padding: 20px;
            }

            .shipping-heading h1 {
                font-size: 24px;
            }

            .delivery-steps {
                flex-direction: column;
                gap: 20px;
            }

            .delivery-steps:before {
                display: none;
            }

            .delivery-step {
                width: 100%;
                display: flex;
                align-items: center;
                text-align: left;
                gap: 12px;
            }

            .step-icon {
                margin: 0;
                flex-shrink: 0;
            }

        }

    </style>

</head>


<body>

<form id="shippingForm" runat="server">


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


    <!-- ================= SHIPPING POLICY ================= -->

    <section class="shipping-page">

        <div class="container">


            <div class="shipping-heading">

                <h1>
                    Shipping Policy
                </h1>

                <p>
                    Information about delivery, shipping and order tracking.
                </p>

            </div>


            <div class="shipping-card">


                <!-- INTRO -->

                <div class="shipping-intro">

                    <p>

                        MobileHub aims to provide a smooth and reliable
                        delivery experience. This page explains how
                        orders are processed, shipped and delivered.

                    </p>

                </div>


                <!-- DELIVERY PROCESS -->

                <div class="shipping-section">

                    <h2>

                        <i class="fa-solid fa-route"></i>

                        Delivery Process

                    </h2>


                    <div class="delivery-steps">


                        <div class="delivery-step">

                            <div class="step-icon">

                                <i class="fa-solid fa-cart-shopping"></i>

                            </div>

                            <div>

                                <h3>
                                    Order Placed
                                </h3>

                                <p>
                                    Your order is confirmed.
                                </p>

                            </div>

                        </div>


                        <div class="delivery-step">

                            <div class="step-icon">

                                <i class="fa-solid fa-box"></i>

                            </div>

                            <div>

                                <h3>
                                    Packed
                                </h3>

                                <p>
                                    Product is safely packed.
                                </p>

                            </div>

                        </div>


                        <div class="delivery-step">

                            <div class="step-icon">

                                <i class="fa-solid fa-truck"></i>

                            </div>

                            <div>

                                <h3>
                                    Shipped
                                </h3>

                                <p>
                                    Package leaves our facility.
                                </p>

                            </div>

                        </div>


                        <div class="delivery-step">

                            <div class="step-icon">

                                <i class="fa-solid fa-house"></i>

                            </div>

                            <div>

                                <h3>
                                    Delivered
                                </h3>

                                <p>
                                    Package reaches you.
                                </p>

                            </div>

                        </div>


                    </div>

                </div>


                <!-- 1 -->

                <div class="shipping-section">

                    <h2>

                        <i class="fa-solid fa-clock"></i>

                        1. Processing Time

                    </h2>


                    <p>

                        After an order is successfully placed and
                        confirmed, it is prepared for dispatch.

                    </p>


                    <ul>

                        <li>
                            Orders are generally processed during working days.
                        </li>

                        <li>
                            Processing time may vary depending on product availability.
                        </li>

                        <li>
                            Pre-order products may have a different delivery timeline.
                        </li>

                    </ul>

                </div>


                <!-- 2 -->

                <div class="shipping-section">

                    <h2>

                        <i class="fa-solid fa-truck-fast"></i>

                        2. Delivery Time

                    </h2>


                    <p>

                        Standard delivery generally takes approximately
                        3 to 5 business days after dispatch.

                    </p>


                    <div class="info-box">

                        <p>

                            Delivery time may vary based on your location,
                            courier availability, weather and other
                            circumstances.

                        </p>

                    </div>

                </div>


                <!-- 3 -->

                <div class="shipping-section">

                    <h2>

                        <i class="fa-solid fa-indian-rupee-sign"></i>

                        3. Shipping Charges

                    </h2>


                    <p>

                        Shipping charges, if applicable, will be displayed
                        during checkout before the order is confirmed.

                    </p>


                    <ul>

                        <li>
                            Some products may qualify for free delivery.
                        </li>

                        <li>
                            Delivery charges may vary by location or product.
                        </li>

                        <li>
                            Any applicable charges will be shown clearly at checkout.
                        </li>

                    </ul>

                </div>


                <!-- 4 -->

                <div class="shipping-section">

                    <h2>

                        <i class="fa-solid fa-location-dot"></i>

                        4. Delivery Address

                    </h2>


                    <p>

                        Customers are responsible for providing a complete
                        and accurate delivery address.

                    </p>


                    <ul>

                        <li>
                            Name and phone number should be correct.
                        </li>

                        <li>
                            Address should include relevant location details.
                        </li>

                        <li>
                            Incorrect addresses may cause delivery delays.
                        </li>

                    </ul>

                </div>


                <!-- 5 -->

                <div class="shipping-section">

                    <h2>

                        <i class="fa-solid fa-map-location-dot"></i>

                        5. Order Tracking

                    </h2>


                    <p>

                        Once your order has been shipped, tracking
                        information may be available through the
                        My Orders section.

                    </p>


                    <p>

                        You can use the tracking information to check
                        the current delivery status of your order.

                    </p>

                </div>


                <!-- 6 -->

                <div class="shipping-section">

                    <h2>

                        <i class="fa-solid fa-calendar-xmark"></i>

                        6. Delivery Delays

                    </h2>


                    <p>

                        Although we try to deliver orders within the
                        estimated time, unexpected delays may occur.

                    </p>


                    <ul>

                        <li>
                            Weather conditions
                        </li>

                        <li>
                            Courier or transportation issues
                        </li>

                        <li>
                            Public holidays
                        </li>

                        <li>
                            Incorrect or incomplete address
                        </li>

                        <li>
                            Other unforeseen circumstances
                        </li>

                    </ul>

                </div>


                <!-- 7 -->

                <div class="shipping-section">

                    <h2>

                        <i class="fa-solid fa-box-open"></i>

                        7. Package Delivery

                    </h2>


                    <p>

                        Please check the package condition when receiving
                        your order. If you notice a significant issue,
                        contact MobileHub support with your order details.

                    </p>

                </div>


                <!-- 8 -->

                <div class="shipping-section">

                    <h2>

                        <i class="fa-solid fa-headset"></i>

                        8. Need Help?

                    </h2>


                    <p>

                        If your order has not arrived within the expected
                        delivery period or you have another shipping-related
                        question, please contact our support team.

                    </p>


                    <div class="contact-box">

                        <h3>
                            MobileHub Customer Support
                        </h3>

                        <p>

                            Email: support@mobilehub.com<br>

                            Phone: +91 1800 123 4567<br>

                            Working Hours: Monday - Saturday,
                            9:00 AM - 6:00 PM

                        </p>

                    </div>

                </div>


                <div class="last-updated">

                    Last Updated: August 2026

                </div>


            </div>


        </div>

    </section>


</form>

</body>

</html>