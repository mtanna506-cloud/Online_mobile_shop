<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">

    <meta charset="utf-8" />

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0" />

    <title>Success | MobileHub</title>

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
            padding: 40px 20px;
        }

        .success-box {
            background: white;
            border: 1px solid #e2e7ef;
            border-radius: 18px;
            width: 100%;
            max-width: 560px;
            text-align: center;
            padding: 45px 30px;
            box-shadow: 0 8px 30px rgba(16,24,40,.05);
        }

        .success-icon {
            width: 85px;
            height: 85px;
            background: #eaf8ef;
            color: #16a34a;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 20px;
            font-size: 38px;
        }

        .success-box h1 {
            color: #101828;
            font-size: 23px;
            font-weight: 800;
            margin-bottom: 8px;
        }

        .success-box .message {
            color: #8993a4;
            font-size: 9px;
            line-height: 1.8;
            max-width: 400px;
            margin: 0 auto 22px;
        }

        .order-box {
            background: #f8fafc;
            border: 1px solid #edf0f4;
            border-radius: 10px;
            padding: 14px;
            margin-bottom: 22px;
        }

        .order-box span {
            color: #8993a4;
            font-size: 8px;
        }

        .order-box strong {
            display: block;
            color: #101828;
            font-size: 12px;
            margin-top: 4px;
        }

        .home-btn {
            display: inline-block;
            background: #2563eb;
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 7px;
            font-size: 9px;
            font-weight: 700;
            margin-right: 5px;
        }

        .home-btn:hover {
            background: #1d4ed8;
            color: white;
        }

        .shop-btn {
            display: inline-block;
            background: white;
            color: #667085;
            border: 1px solid #d0d5dd;
            text-decoration: none;
            padding: 9px 20px;
            border-radius: 7px;
            font-size: 9px;
            font-weight: 700;
        }

        .shop-btn:hover {
            color: #2563eb;
            border-color: #2563eb;
        }

        .bottom-text {
            margin-top: 22px;
            color: #98a1b1;
            font-size: 7px;
        }

    </style>

</head>


<body>

<form id="successForm" runat="server">


    <!-- NAVBAR -->

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


    <!-- SUCCESS -->

    <section class="success-page">

        <div class="success-box">


            <div class="success-icon">

                <i class="fa-solid fa-check"></i>

            </div>


            <h1>
                Order Successful!
            </h1>


            <p class="message">

                Thank you for shopping with MobileHub.
                Your order has been successfully placed.
                We will process your order shortly.

            </p>


            <div class="order-box">

                <span>
                    Order Reference
                </span>

                <strong>
                    #MH20260001
                </strong>

            </div>


            <a href="index.aspx"
               class="home-btn">

                <i class="fa-solid fa-house"></i>

                &nbsp; Back to Home

            </a>


            <a href="all-mobiles.aspx"
               class="shop-btn">

                Continue Shopping

            </a>


            <div class="bottom-text">

                A confirmation message will be available
                after your order is processed.

            </div>


        </div>

    </section>


</form>

</body>

</html>