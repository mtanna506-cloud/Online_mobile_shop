<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">

    <meta charset="utf-8" />

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0" />

    <title>FAQ | MobileHub</title>

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

        .faq-page {
            background: #f5f7fb;
            min-height: 100vh;
            padding: 35px 0 70px;
        }

        .faq-heading {
            text-align: center;
            margin-bottom: 30px;
        }

        .faq-heading h1 {
            font-size: 30px;
            font-weight: 800;
            color: #101828;
            margin-bottom: 7px;
        }

        .faq-heading p {
            color: #8993a4;
            font-size: 10px;
            margin: 0;
        }

        .faq-wrapper {
            max-width: 900px;
            margin: auto;
        }

        .faq-card {
            background: #fff;
            border: 1px solid #e2e7ef;
            border-radius: 15px;
            margin-bottom: 12px;
            overflow: hidden;
        }

        .faq-question {
            padding: 18px 20px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 15px;
            cursor: pointer;
        }

        .faq-question h3 {
            font-size: 11px;
            font-weight: 700;
            color: #101828;
            margin: 0;
        }

        .faq-question i {
            color: #2563eb;
            font-size: 11px;
        }

        .faq-answer {
            padding: 0 20px 18px;
            border-top: 1px solid #edf0f4;
        }

        .faq-answer p {
            color: #7b8799;
            font-size: 9px;
            line-height: 1.9;
            margin: 15px 0 0;
        }

        .faq-category {
            font-size: 13px;
            font-weight: 800;
            color: #101828;
            margin: 30px 0 12px;
        }

        .faq-category i {
            color: #2563eb;
            margin-right: 7px;
        }

        .faq-contact {
            background: #2563eb;
            border-radius: 16px;
            padding: 25px;
            margin-top: 30px;
            text-align: center;
        }

        .faq-contact h2 {
            color: white;
            font-size: 16px;
            font-weight: 800;
            margin-bottom: 7px;
        }

        .faq-contact p {
            color: rgba(255,255,255,.8);
            font-size: 9px;
            margin-bottom: 15px;
        }

        .faq-contact a {
            display: inline-block;
            background: white;
            color: #2563eb;
            padding: 9px 18px;
            border-radius: 7px;
            text-decoration: none;
            font-size: 9px;
            font-weight: 700;
        }

        @media(max-width: 575px) {

            .faq-heading h1 {
                font-size: 24px;
            }

            .faq-question {
                padding: 15px;
            }

            .faq-answer {
                padding: 0 15px 15px;
            }

        }

    </style>

</head>


<body>

<form id="faqForm" runat="server">


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


    <!-- ================= FAQ ================= -->

    <section class="faq-page">

        <div class="container">


            <div class="faq-heading">

                <h1>
                    Frequently Asked Questions
                </h1>

                <p>
                    Find answers to common questions about MobileHub.
                </p>

            </div>


            <div class="faq-wrapper">


                <!-- ================= ACCOUNT ================= -->

                <div class="faq-category">

                    <i class="fa-solid fa-user"></i>

                    Account & Shopping

                </div>


                <!-- FAQ 1 -->

                <div class="faq-card">

                    <div class="faq-question">

                        <h3>
                            How can I create a MobileHub account?
                        </h3>

                        <i class="fa-solid fa-chevron-down"></i>

                    </div>

                    <div class="faq-answer">

                        <p>
                            Click on the Register option in the navigation
                            menu and enter the required information to
                            create your account.
                        </p>

                    </div>

                </div>


                <!-- FAQ 2 -->

                <div class="faq-card">

                    <div class="faq-question">

                        <h3>
                            Do I need an account to place an order?
                        </h3>

                        <i class="fa-solid fa-chevron-down"></i>

                    </div>

                    <div class="faq-answer">

                        <p>
                            Creating an account helps you manage orders,
                            wishlist items and profile information easily.
                        </p>

                    </div>

                </div>


                <!-- FAQ 3 -->

                <div class="faq-card">

                    <div class="faq-question">

                        <h3>
                            How can I search for a mobile phone?
                        </h3>

                        <i class="fa-solid fa-chevron-down"></i>

                    </div>

                    <div class="faq-answer">

                        <p>
                            You can use the search bar at the top of the
                            website or browse products through categories
                            and brands.
                        </p>

                    </div>

                </div>


                <!-- ================= ORDERS ================= -->

                <div class="faq-category">

                    <i class="fa-solid fa-cart-shopping"></i>

                    Orders & Payment

                </div>


                <!-- FAQ 4 -->

                <div class="faq-card">

                    <div class="faq-question">

                        <h3>
                            How can I place an order?
                        </h3>

                        <i class="fa-solid fa-chevron-down"></i>

                    </div>

                    <div class="faq-answer">

                        <p>
                            Select your preferred product, add it to your
                            cart and proceed to checkout. Enter the required
                            delivery information and confirm your order.
                        </p>

                    </div>

                </div>


                <!-- FAQ 5 -->

                <div class="faq-card">

                    <div class="faq-question">

                        <h3>
                            What payment methods are available?
                        </h3>

                        <i class="fa-solid fa-chevron-down"></i>

                    </div>

                    <div class="faq-answer">

                        <p>
                            Available payment options can be displayed
                            during checkout depending on the configured
                            payment methods.
                        </p>

                    </div>

                </div>


                <!-- FAQ 6 -->

                <div class="faq-card">

                    <div class="faq-question">

                        <h3>
                            Can I cancel my order?
                        </h3>

                        <i class="fa-solid fa-chevron-down"></i>

                    </div>

                    <div class="faq-answer">

                        <p>
                            Order cancellation availability depends on
                            the current order status. Check your order
                            details or contact customer support.
                        </p>

                    </div>

                </div>


                <!-- ================= DELIVERY ================= -->

                <div class="faq-category">

                    <i class="fa-solid fa-truck"></i>

                    Delivery

                </div>


                <!-- FAQ 7 -->

                <div class="faq-card">

                    <div class="faq-question">

                        <h3>
                            How long does delivery take?
                        </h3>

                        <i class="fa-solid fa-chevron-down"></i>

                    </div>

                    <div class="faq-answer">

                        <p>
                            Standard delivery may take approximately
                            3 to 5 business days after dispatch.
                            Actual delivery time may vary by location.
                        </p>

                    </div>

                </div>


                <!-- FAQ 8 -->

                <div class="faq-card">

                    <div class="faq-question">

                        <h3>
                            Can I track my order?
                        </h3>

                        <i class="fa-solid fa-chevron-down"></i>

                    </div>

                    <div class="faq-answer">

                        <p>
                            Yes. When tracking information is available,
                            you can check your order status through the
                            My Orders section.
                        </p>

                    </div>

                </div>


                <!-- FAQ 9 -->

                <div class="faq-card">

                    <div class="faq-question">

                        <h3>
                            What should I do if my order is delayed?
                        </h3>

                        <i class="fa-solid fa-chevron-down"></i>

                    </div>

                    <div class="faq-answer">

                        <p>
                            Check your order tracking information first.
                            If the order remains delayed, contact our
                            customer support team.
                        </p>

                    </div>

                </div>


                <!-- ================= RETURNS ================= -->

                <div class="faq-category">

                    <i class="fa-solid fa-rotate-left"></i>

                    Returns & Refunds

                </div>


                <!-- FAQ 10 -->

                <div class="faq-card">

                    <div class="faq-question">

                        <h3>
                            Can I return a product?
                        </h3>

                        <i class="fa-solid fa-chevron-down"></i>

                    </div>

                    <div class="faq-answer">

                        <p>
                            Eligible products may be returned according
                            to the applicable return conditions and
                            return period.
                        </p>

                    </div>

                </div>


                <!-- FAQ 11 -->

                <div class="faq-card">

                    <div class="faq-question">

                        <h3>
                            When will I receive my refund?
                        </h3>

                        <i class="fa-solid fa-chevron-down"></i>

                    </div>

                    <div class="faq-answer">

                        <p>
                            After an approved refund is processed,
                            the time required for the amount to appear
                            may vary depending on the payment method
                            and payment provider.
                        </p>

                    </div>

                </div>


                <!-- FAQ 12 -->

                <div class="faq-card">

                    <div class="faq-question">

                        <h3>
                            What if I receive a damaged product?
                        </h3>

                        <i class="fa-solid fa-chevron-down"></i>

                    </div>

                    <div class="faq-answer">

                        <p>
                            Contact MobileHub support as soon as possible
                            and provide your order details. Additional
                            information may be requested to process the
                            issue.
                        </p>

                    </div>

                </div>


                <!-- ================= SUPPORT ================= -->

                <div class="faq-category">

                    <i class="fa-solid fa-headset"></i>

                    Customer Support

                </div>


                <!-- FAQ 13 -->

                <div class="faq-card">

                    <div class="faq-question">

                        <h3>
                            How can I contact MobileHub?
                        </h3>

                        <i class="fa-solid fa-chevron-down"></i>

                    </div>

                    <div class="faq-answer">

                        <p>
                            You can contact our support team through the
                            Contact Us page or use the support details
                            provided on the website.
                        </p>

                    </div>

                </div>


                <!-- FAQ 14 -->

                <div class="faq-card">

                    <div class="faq-question">

                        <h3>
                            What are the customer support hours?
                        </h3>

                        <i class="fa-solid fa-chevron-down"></i>

                    </div>

                    <div class="faq-answer">

                        <p>
                            Customer support is available Monday to
                            Saturday, from 9:00 AM to 6:00 PM.
                        </p>

                    </div>

                </div>


                <!-- CONTACT -->

                <div class="faq-contact">

                    <h2>
                        Still Have Questions?
                    </h2>

                    <p>
                        Our support team is ready to help you.
                    </p>

                    <a href="contact.aspx">

                        Contact Us

                        <i class="fa-solid fa-arrow-right"
                           style="margin-left:6px;">
                        </i>

                    </a>

                </div>


            </div>


        </div>

    </section>


</form>

</body>

</html>