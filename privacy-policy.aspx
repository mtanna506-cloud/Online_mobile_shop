<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">

    <meta charset="utf-8" />

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0" />

    <title>Privacy Policy | MobileHub</title>

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

        .policy-page {
            background: #f5f7fb;
            min-height: 100vh;
            padding: 35px 0 70px;
        }

        .policy-heading {
            text-align: center;
            margin-bottom: 30px;
        }

        .policy-heading h1 {
            font-size: 30px;
            font-weight: 800;
            color: #101828;
            margin-bottom: 7px;
        }

        .policy-heading p {
            font-size: 10px;
            color: #8993a4;
            margin: 0;
        }

        .policy-card {
            background: white;
            border: 1px solid #e2e7ef;
            border-radius: 18px;
            padding: 30px;
        }

        .policy-intro {
            background: #edf3ff;
            border-radius: 12px;
            padding: 18px;
            margin-bottom: 25px;
        }

        .policy-intro p {
            margin: 0;
            color: #52627a;
            font-size: 9px;
            line-height: 1.8;
        }

        .policy-section {
            padding: 20px 0;
            border-bottom: 1px solid #edf0f4;
        }

        .policy-section:last-child {
            border-bottom: none;
        }

        .policy-section h2 {
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 15px;
            font-weight: 800;
            color: #101828;
            margin-bottom: 10px;
        }

        .policy-section h2 i {
            color: #2563eb;
            font-size: 14px;
        }

        .policy-section p {
            color: #7b8799;
            font-size: 9px;
            line-height: 1.9;
            margin-bottom: 8px;
        }

        .policy-section ul {
            padding-left: 18px;
            margin-bottom: 0;
        }

        .policy-section li {
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

            .policy-card {
                padding: 20px;
            }

            .policy-heading h1 {
                font-size: 24px;
            }

        }

    </style>

</head>


<body>

<form id="privacyForm" runat="server">


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


    <!-- ================= PRIVACY POLICY ================= -->

    <section class="policy-page">

        <div class="container">


            <div class="policy-heading">

                <h1>
                    Privacy Policy
                </h1>

                <p>
                    Your privacy and security are important to us.
                </p>

            </div>


            <div class="policy-card">


                <!-- INTRO -->

                <div class="policy-intro">

                    <p>

                        At MobileHub, we respect your privacy and are
                        committed to protecting the information you share
                        with us while using our website and services.

                    </p>

                </div>


                <!-- 1 -->

                <div class="policy-section">

                    <h2>

                        <i class="fa-solid fa-circle-info"></i>

                        1. Information We Collect

                    </h2>


                    <p>
                        When you use MobileHub, we may collect information
                        that you provide while creating an account,
                        placing an order or contacting our support team.
                    </p>


                    <ul>

                        <li>
                            Name and contact information
                        </li>

                        <li>
                            Email address and phone number
                        </li>

                        <li>
                            Delivery and billing information
                        </li>

                        <li>
                            Order and transaction information
                        </li>

                    </ul>

                </div>


                <!-- 2 -->

                <div class="policy-section">

                    <h2>

                        <i class="fa-solid fa-user-shield"></i>

                        2. How We Use Your Information

                    </h2>


                    <p>
                        The information collected may be used to provide
                        and improve our services.
                    </p>


                    <ul>

                        <li>
                            Process and deliver your orders
                        </li>

                        <li>
                            Provide customer support
                        </li>

                        <li>
                            Improve website functionality
                        </li>

                        <li>
                            Send important order notifications
                        </li>

                    </ul>

                </div>


                <!-- 3 -->

                <div class="policy-section">

                    <h2>

                        <i class="fa-solid fa-lock"></i>

                        3. Data Security

                    </h2>


                    <p>
                        We take reasonable measures to protect your
                        personal information from unauthorized access,
                        modification or disclosure.
                    </p>

                    <p>
                        Payment information is handled through secure
                        payment processes and is not intentionally stored
                        in plain text by MobileHub.
                    </p>

                </div>


                <!-- 4 -->

                <div class="policy-section">

                    <h2>

                        <i class="fa-solid fa-cookie-bite"></i>

                        4. Cookies

                    </h2>


                    <p>
                        MobileHub may use cookies and similar technologies
                        to remember preferences, improve navigation and
                        understand how visitors use the website.
                    </p>

                </div>


                <!-- 5 -->

                <div class="policy-section">

                    <h2>

                        <i class="fa-solid fa-share-nodes"></i>

                        5. Information Sharing

                    </h2>


                    <p>
                        We do not intend to sell your personal information.
                        Information may be shared with trusted service
                        providers when necessary to provide services such
                        as payment processing and order delivery.
                    </p>

                </div>


                <!-- 6 -->

                <div class="policy-section">

                    <h2>

                        <i class="fa-solid fa-user-check"></i>

                        6. Your Choices

                    </h2>


                    <p>
                        You may review or update certain account
                        information through your profile. You can also
                        contact our support team regarding privacy-related
                        questions.
                    </p>

                </div>


                <!-- 7 -->

                <div class="policy-section">

                    <h2>

                        <i class="fa-solid fa-child"></i>

                        7. Children's Privacy

                    </h2>


                    <p>
                        MobileHub is designed as an online shopping
                        service. We do not knowingly request unnecessary
                        personal information from children.
                    </p>

                </div>


                <!-- 8 -->

                <div class="policy-section">

                    <h2>

                        <i class="fa-solid fa-rotate"></i>

                        8. Policy Updates

                    </h2>


                    <p>
                        This privacy policy may be updated from time to
                        time to reflect changes in our services or
                        applicable requirements.
                    </p>

                </div>


                <!-- 9 -->

                <div class="policy-section">

                    <h2>

                        <i class="fa-solid fa-envelope"></i>

                        9. Contact Us

                    </h2>


                    <p>
                        If you have any questions about this Privacy
                        Policy, please contact our support team.
                    </p>


                    <p>

                        <strong>
                            Email:
                        </strong>

                        support@mobilehub.com

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