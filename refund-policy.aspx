<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">

    <meta charset="utf-8" />

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0" />

    <title>Refund Policy | MobileHub</title>

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

        .refund-page {
            background: #f5f7fb;
            min-height: 100vh;
            padding: 35px 0 70px;
        }

        .refund-heading {
            text-align: center;
            margin-bottom: 30px;
        }

        .refund-heading h1 {
            font-size: 30px;
            font-weight: 800;
            color: #101828;
            margin-bottom: 7px;
        }

        .refund-heading p {
            font-size: 10px;
            color: #8993a4;
            margin: 0;
        }

        .refund-card {
            background: #fff;
            border: 1px solid #e2e7ef;
            border-radius: 18px;
            padding: 30px;
        }

        .refund-intro {
            background: #edf3ff;
            border-radius: 12px;
            padding: 18px;
            margin-bottom: 25px;
        }

        .refund-intro p {
            color: #52627a;
            font-size: 9px;
            line-height: 1.8;
            margin: 0;
        }

        .refund-section {
            padding: 20px 0;
            border-bottom: 1px solid #edf0f4;
        }

        .refund-section:last-child {
            border-bottom: none;
        }

        .refund-section h2 {
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 15px;
            font-weight: 800;
            color: #101828;
            margin-bottom: 10px;
        }

        .refund-section h2 i {
            color: #2563eb;
            font-size: 14px;
        }

        .refund-section p {
            color: #7b8799;
            font-size: 9px;
            line-height: 1.9;
            margin-bottom: 8px;
        }

        .refund-section ul {
            padding-left: 18px;
            margin-bottom: 0;
        }

        .refund-section li {
            color: #7b8799;
            font-size: 9px;
            line-height: 2;
        }

        .highlight-box {
            background: #f8fafc;
            border-left: 3px solid #2563eb;
            border-radius: 7px;
            padding: 12px 15px;
            margin-top: 12px;
        }

        .highlight-box p {
            margin: 0;
        }

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

        @media(max-width: 575px) {

            .refund-card {
                padding: 20px;
            }

            .refund-heading h1 {
                font-size: 24px;
            }

        }

    </style>

</head>


<body>

<form id="refundForm" runat="server">


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


    <!-- ================= REFUND POLICY ================= -->

    <section class="refund-page">

        <div class="container">


            <div class="refund-heading">

                <h1>
                    Refund & Return Policy
                </h1>

                <p>
                    Everything you need to know about returns and refunds.
                </p>

            </div>


            <div class="refund-card">


                <!-- INTRO -->

                <div class="refund-intro">

                    <p>

                        At MobileHub, we want you to have a smooth
                        shopping experience. If there is a problem with
                        your order or product, you can contact our support
                        team to understand the available return,
                        replacement or refund options.

                    </p>

                </div>


                <!-- 1 -->

                <div class="refund-section">

                    <h2>

                        <i class="fa-solid fa-rotate-left"></i>

                        1. Return Eligibility

                    </h2>


                    <p>
                        Products may be eligible for return or replacement
                        when they meet the applicable return conditions.
                    </p>


                    <ul>

                        <li>
                            The product should be in acceptable condition.
                        </li>

                        <li>
                            Original accessories and packaging may be required.
                        </li>

                        <li>
                            Proof of purchase may be requested.
                        </li>

                    </ul>

                </div>


                <!-- 2 -->

                <div class="refund-section">

                    <h2>

                        <i class="fa-solid fa-calendar-days"></i>

                        2. Return Period

                    </h2>


                    <p>
                        Return requests should normally be submitted
                        within the return period mentioned for the
                        specific product or order.
                    </p>


                    <div class="highlight-box">

                        <p>
                            Please check the product's return information
                            before submitting a request.
                        </p>

                    </div>

                </div>


                <!-- 3 -->

                <div class="refund-section">

                    <h2>

                        <i class="fa-solid fa-box-open"></i>

                        3. Damaged or Incorrect Product

                    </h2>


                    <p>
                        If you receive a damaged, defective or incorrect
                        product, contact MobileHub support as soon as
                        possible.
                    </p>


                    <ul>

                        <li>
                            Keep the product and original packaging safely.
                        </li>

                        <li>
                            Provide your order details when contacting support.
                        </li>

                        <li>
                            Additional information or photographs may be requested.
                        </li>

                    </ul>

                </div>


                <!-- 4 -->

                <div class="refund-section">

                    <h2>

                        <i class="fa-solid fa-money-bill-transfer"></i>

                        4. Refund Process

                    </h2>


                    <p>
                        Once a return or refund request is reviewed and
                        approved, the refund process will begin according
                        to the applicable payment method.
                    </p>


                    <p>
                        The time required for the amount to appear in
                        your account may vary depending on the payment
                        provider or bank.
                    </p>

                </div>


                <!-- 5 -->

                <div class="refund-section">

                    <h2>

                        <i class="fa-solid fa-credit-card"></i>

                        5. Payment Refunds

                    </h2>


                    <p>
                        For prepaid orders, approved refunds may be
                        processed through the original payment method
                        wherever applicable.
                    </p>


                    <ul>

                        <li>
                            UPI refunds may take time depending on the payment provider.
                        </li>

                        <li>
                            Card refunds may require additional processing time.
                        </li>

                    </ul>

                </div>


                <!-- 6 -->

                <div class="refund-section">

                    <h2>

                        <i class="fa-solid fa-ban"></i>

                        6. Non-Returnable Situations

                    </h2>


                    <p>
                        Certain products or situations may not qualify
                        for return or refund depending on the product
                        category and applicable conditions.
                    </p>


                    <ul>

                        <li>
                            Products damaged due to improper use.
                        </li>

                        <li>
                            Products returned without required accessories.
                        </li>

                        <li>
                            Requests submitted outside the applicable return period.
                        </li>

                    </ul>

                </div>


                <!-- 7 -->

                <div class="refund-section">

                    <h2>

                        <i class="fa-solid fa-truck-fast"></i>

                        7. Replacement

                    </h2>


                    <p>
                        If an eligible product has a manufacturing issue
                        or another qualifying problem, a replacement may
                        be offered depending on product availability.
                    </p>

                </div>


                <!-- 8 -->

                <div class="refund-section">

                    <h2>

                        <i class="fa-solid fa-headset"></i>

                        8. Contact Support

                    </h2>


                    <p>
                        To request a return, replacement or refund,
                        contact the MobileHub support team with your
                        order details.
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