<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">

    <meta charset="utf-8" />

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0" />

    <title>Terms & Conditions | MobileHub</title>

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

        .terms-page {
            background: #f5f7fb;
            min-height: 100vh;
            padding: 35px 0 70px;
        }

        .terms-heading {
            text-align: center;
            margin-bottom: 30px;
        }

        .terms-heading h1 {
            font-size: 30px;
            font-weight: 800;
            color: #101828;
            margin-bottom: 7px;
        }

        .terms-heading p {
            color: #8993a4;
            font-size: 10px;
            margin: 0;
        }

        .terms-card {
            background: white;
            border: 1px solid #e2e7ef;
            border-radius: 18px;
            padding: 30px;
        }

        .terms-intro {
            background: #edf3ff;
            border-radius: 12px;
            padding: 18px;
            margin-bottom: 25px;
        }

        .terms-intro p {
            color: #52627a;
            font-size: 9px;
            line-height: 1.8;
            margin: 0;
        }

        .terms-section {
            padding: 20px 0;
            border-bottom: 1px solid #edf0f4;
        }

        .terms-section:last-child {
            border-bottom: none;
        }

        .terms-section h2 {
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 15px;
            font-weight: 800;
            color: #101828;
            margin-bottom: 10px;
        }

        .terms-section h2 i {
            color: #2563eb;
            font-size: 14px;
        }

        .terms-section p {
            color: #7b8799;
            font-size: 9px;
            line-height: 1.9;
            margin-bottom: 8px;
        }

        .terms-section ul {
            padding-left: 18px;
            margin-bottom: 0;
        }

        .terms-section li {
            color: #7b8799;
            font-size: 9px;
            line-height: 2;
        }

        .last-updated {
            margin-top: 25px;
            text-align: center;
            color: #98a1b1;
            font-size: 8px;
        }

        @media(max-width: 575px) {

            .terms-card {
                padding: 20px;
            }

            .terms-heading h1 {
                font-size: 24px;
            }

        }

    </style>

</head>


<body>

<form id="termsForm" runat="server">


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


    <!-- ================= TERMS ================= -->

    <section class="terms-page">

        <div class="container">


            <div class="terms-heading">

                <h1>
                    Terms & Conditions
                </h1>

                <p>
                    Please read these terms before using MobileHub.
                </p>

            </div>


            <div class="terms-card">


                <!-- INTRO -->

                <div class="terms-intro">

                    <p>

                        By accessing or using MobileHub, you agree to
                        follow these Terms & Conditions. Please read
                        them carefully before using our website or
                        placing an order.

                    </p>

                </div>


                <!-- 1 -->

                <div class="terms-section">

                    <h2>

                        <i class="fa-solid fa-circle-info"></i>

                        1. Use of Website

                    </h2>


                    <p>
                        MobileHub provides an online platform for
                        browsing and purchasing smartphones,
                        tablets and mobile accessories.
                    </p>


                    <ul>

                        <li>
                            You agree to use the website for lawful purposes.
                        </li>

                        <li>
                            You must provide accurate information when required.
                        </li>

                        <li>
                            You should not misuse or attempt to damage the website.
                        </li>

                    </ul>

                </div>


                <!-- 2 -->

                <div class="terms-section">

                    <h2>

                        <i class="fa-solid fa-user"></i>

                        2. User Account

                    </h2>


                    <p>
                        Some features may require you to create an
                        account. You are responsible for maintaining
                        the accuracy of your account information.
                    </p>


                    <ul>

                        <li>
                            Keep your account information updated.
                        </li>

                        <li>
                            Keep your login credentials secure.
                        </li>

                        <li>
                            Notify support if you notice unusual account activity.
                        </li>

                    </ul>

                </div>


                <!-- 3 -->

                <div class="terms-section">

                    <h2>

                        <i class="fa-solid fa-cart-shopping"></i>

                        3. Orders

                    </h2>


                    <p>
                        When you place an order through MobileHub,
                        you agree to provide correct product,
                        delivery and contact information.
                    </p>


                    <p>
                        Orders may be subject to availability,
                        payment confirmation and other applicable
                        conditions.
                    </p>

                </div>


                <!-- 4 -->

                <div class="terms-section">

                    <h2>

                        <i class="fa-solid fa-indian-rupee-sign"></i>

                        4. Pricing and Payment

                    </h2>


                    <p>
                        Product prices displayed on the website may
                        change from time to time.
                    </p>


                    <ul>

                        <li>
                            Prices are displayed in Indian Rupees (₹).
                        </li>

                        <li>
                            Applicable offers may have separate conditions.
                        </li>

                        <li>
                            Payment must be successfully completed for prepaid orders.
                        </li>

                    </ul>

                </div>


                <!-- 5 -->

                <div class="terms-section">

                    <h2>

                        <i class="fa-solid fa-truck"></i>

                        5. Delivery

                    </h2>


                    <p>
                        Delivery times may vary depending on the
                        destination, product availability and
                        delivery partner.
                    </p>


                    <p>
                        Customers should provide a complete and
                        accurate delivery address to avoid delays.
                    </p>

                </div>


                <!-- 6 -->

                <div class="terms-section">

                    <h2>

                        <i class="fa-solid fa-rotate-left"></i>

                        6. Returns and Refunds

                    </h2>


                    <p>
                        Returns, replacements and refunds are subject
                        to the applicable return policy of MobileHub
                        and the product.
                    </p>


                    <ul>

                        <li>
                            Products may need to meet eligibility conditions.
                        </li>

                        <li>
                            Some products may have different return conditions.
                        </li>

                        <li>
                            Refund processing time may vary by payment method.
                        </li>

                    </ul>

                </div>


                <!-- 7 -->

                <div class="terms-section">

                    <h2>

                        <i class="fa-solid fa-copyright"></i>

                        7. Intellectual Property

                    </h2>


                    <p>
                        Website content including text, graphics,
                        logos, design elements and other materials
                        belongs to MobileHub or its respective
                        content providers unless otherwise stated.
                    </p>

                </div>


                <!-- 8 -->

                <div class="terms-section">

                    <h2>

                        <i class="fa-solid fa-ban"></i>

                        8. Prohibited Activities

                    </h2>


                    <p>
                        Users must not use the website for activities
                        that may harm the website, its users or its services.
                    </p>


                    <ul>

                        <li>
                            Attempting unauthorized access.
                        </li>

                        <li>
                            Uploading harmful or malicious content.
                        </li>

                        <li>
                            Using false information for fraudulent purposes.
                        </li>

                    </ul>

                </div>


                <!-- 9 -->

                <div class="terms-section">

                    <h2>

                        <i class="fa-solid fa-shield-halved"></i>

                        9. Limitation of Liability

                    </h2>


                    <p>
                        MobileHub aims to provide accurate product and
                        service information. However, information may
                        occasionally contain errors or require updates.
                    </p>

                </div>


                <!-- 10 -->

                <div class="terms-section">

                    <h2>

                        <i class="fa-solid fa-pen-to-square"></i>

                        10. Changes to Terms

                    </h2>


                    <p>
                        MobileHub may update these Terms & Conditions
                        from time to time. Updated terms will be
                        reflected on this page.
                    </p>

                </div>


                <!-- 11 -->

                <div class="terms-section">

                    <h2>

                        <i class="fa-solid fa-envelope"></i>

                        11. Contact Us

                    </h2>


                    <p>
                        If you have any questions regarding these
                        Terms & Conditions, please contact us.
                    </p>


                    <p>

                        <strong>
                            Email:
                        </strong>

                        support@mobilehub.com

                    </p>


                    <p>

                        <strong>
                            Phone:
                        </strong>

                        +91 1800 123 4567

                    </p>

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