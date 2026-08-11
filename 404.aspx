<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">

    <meta charset="utf-8" />

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0" />

    <title>Page Not Found | MobileHub</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

    <link href="css/style.css" rel="stylesheet">


    <style>

        .error-page {
            min-height: calc(100vh - 75px);
            background: #f5f7fb;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 50px 20px;
        }

        .error-box {
            background: white;
            border: 1px solid #e2e7ef;
            border-radius: 18px;
            padding: 50px 30px;
            text-align: center;
            max-width: 600px;
            width: 100%;
            box-shadow: 0 8px 30px rgba(16,24,40,.04);
        }

        .error-number {
            font-size: 85px;
            line-height: 1;
            font-weight: 800;
            color: #2563eb;
            margin-bottom: 15px;
        }

        .error-icon {
            width: 70px;
            height: 70px;
            background: #f1f5ff;
            color: #2563eb;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 20px;
            font-size: 28px;
        }

        .error-box h1 {
            color: #101828;
            font-size: 22px;
            font-weight: 800;
            margin-bottom: 8px;
        }

        .error-box p {
            color: #8993a4;
            font-size: 9px;
            line-height: 1.8;
            max-width: 430px;
            margin: 0 auto 22px;
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
            margin-right: 6px;
        }

        .home-btn:hover {
            background: #1d4ed8;
            color: white;
        }

        .back-btn {
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

        .back-btn:hover {
            color: #2563eb;
            border-color: #2563eb;
        }

        .quick-links {
            border-top: 1px solid #edf0f4;
            margin-top: 30px;
            padding-top: 20px;
        }

        .quick-links span {
            display: block;
            color: #8993a4;
            font-size: 8px;
            margin-bottom: 10px;
        }

        .quick-links a {
            color: #667085;
            text-decoration: none;
            font-size: 8px;
            margin: 0 8px;
        }

        .quick-links a:hover {
            color: #2563eb;
        }

    </style>

</head>


<body>

<form id="errorForm" runat="server">


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


    <!-- 404 CONTENT -->

    <section class="error-page">

        <div class="error-box">


            <div class="error-icon">

                <i class="fa-solid fa-triangle-exclamation"></i>

            </div>


            <div class="error-number">
                404
            </div>


            <h1>
                Page Not Found
            </h1>


            <p>
                Sorry, the page you are looking for doesn't exist
                or may have been moved. Don't worry, you can return
                to MobileHub and continue exploring our products.
            </p>


            <a href="index.aspx"
               class="home-btn">

                <i class="fa-solid fa-house"></i>

                &nbsp; Go to Home

            </a>


            <a href="all-mobiles.aspx"
               class="back-btn">

                Browse Mobiles

            </a>


            <div class="quick-links">

                <span>
                    Quick Links
                </span>


                <a href="index.aspx">
                    Home
                </a>


                <a href="all-mobiles.aspx">
                    Mobiles
                </a>


                <a href="brands.aspx">
                    Brands
                </a>


                <a href="offers.aspx">
                    Offers
                </a>

            </div>


        </div>

    </section>


</form>

</body>

</html>