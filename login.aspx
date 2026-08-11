<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">

    <meta charset="utf-8" />

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0" />

    <title>Login | MobileHub</title>

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

    <link href="css/style.css"
          rel="stylesheet">


    <style>

        .login-page {
            min-height: calc(100vh - 80px);

            display: flex;

            align-items: center;

            justify-content: center;

            padding: 50px 20px;

            background:
                radial-gradient(circle at top right,
                rgba(37,99,235,.12),
                transparent 35%),
                #f5f7fb;
        }


        .login-container {
            width: 100%;

            max-width: 950px;

            min-height: 560px;

            background: white;

            border-radius: 25px;

            overflow: hidden;

            box-shadow:
                0 20px 60px rgba(15,31,61,.12);

            display: grid;

            grid-template-columns: 48% 52%;
        }


        /* LEFT */

        .login-left {
            background:
                linear-gradient(145deg,
                #101827,
                #1d3970);

            color: white;

            padding: 55px 45px;

            display: flex;

            flex-direction: column;

            justify-content: center;

            position: relative;

            overflow: hidden;
        }


        .login-left::before {
            content: "";

            position: absolute;

            width: 350px;

            height: 350px;

            border-radius: 50%;

            background: rgba(37,99,235,.16);

            right: -170px;

            top: -100px;
        }


        .login-left::after {
            content: "";

            position: absolute;

            width: 250px;

            height: 250px;

            border-radius: 50%;

            background: rgba(245,168,0,.08);

            left: -130px;

            bottom: -100px;
        }


        .login-logo {
            position: relative;

            z-index: 2;

            font-size: 28px;

            font-weight: 800;

            margin-bottom: 50px;
        }


        .login-logo span {
            color: #4e8bff;
        }


        .login-logo b {
            color: #f5a800;
        }


        .login-left h1 {
            position: relative;

            z-index: 2;

            font-size: 42px;

            line-height: 1.15;

            font-weight: 800;

            margin-bottom: 20px;
        }


        .login-left h1 span {
            color: #64a1ff;
        }


        .login-left p {
            position: relative;

            z-index: 2;

            color: #bcc6d8;

            font-size: 14px;

            line-height: 1.7;

            max-width: 370px;
        }


        .login-benefits {
            position: relative;

            z-index: 2;

            margin-top: 30px;
        }


        .login-benefit {
            display: flex;

            align-items: center;

            gap: 12px;

            margin-bottom: 17px;

            font-size: 13px;
        }


        .login-benefit i {
            width: 34px;

            height: 34px;

            border-radius: 9px;

            background: rgba(255,255,255,.1);

            display: flex;

            align-items: center;

            justify-content: center;

            color: #ffb000;
        }


        /* RIGHT */

        .login-right {
            padding: 55px 60px;

            display: flex;

            flex-direction: column;

            justify-content: center;
        }


        .login-heading {
            margin-bottom: 30px;
        }


        .login-heading h2 {
            font-size: 29px;

            font-weight: 800;

            margin-bottom: 7px;

            color: #101828;
        }


        .login-heading p {
            color: #7b8799;

            font-size: 13px;
        }


        /* FORM */

        .login-form-group {
            margin-bottom: 20px;
        }


        .login-form-group label {
            display: block;

            font-size: 13px;

            font-weight: 600;

            color: #202a3d;

            margin-bottom: 8px;
        }


        .login-input-wrapper {
            position: relative;
        }


        .login-input-wrapper > i {
            position: absolute;

            left: 15px;

            top: 50%;

            transform: translateY(-50%);

            color: #8d98aa;

            font-size: 14px;

            z-index: 2;
        }


        .login-input {
            width: 100%;

            height: 49px;

            border: 1px solid #dfe4ec;

            border-radius: 11px;

            outline: none;

            padding: 0 45px;

            font-family: 'Poppins', sans-serif;

            font-size: 13px;

            background: #fbfcfe;

            transition: .2s;
        }


        .login-input:focus {
            border-color: #2563eb;

            background: white;

            box-shadow:
                0 0 0 3px rgba(37,99,235,.08);
        }


        .password-eye {
            position: absolute;

            right: 15px;

            top: 50%;

            transform: translateY(-50%);

            color: #8d98aa;

            cursor: pointer;

            z-index: 3;
        }


        .login-options {
            display: flex;

            align-items: center;

            justify-content: space-between;

            margin: 3px 0 22px;

            font-size: 11px;
        }


        .remember {
            display: flex;

            align-items: center;

            gap: 7px;

            color: #707c8f;
        }


        .remember input {
            accent-color: #2563eb;
        }


        .forgot-link {
            color: #2563eb;

            font-weight: 600;
        }


        /* BUTTON */

        .login-button {
            width: 100%;

            height: 49px;

            border: none;

            border-radius: 11px;

            background: #2563eb;

            color: white;

            font-family: 'Poppins', sans-serif;

            font-size: 14px;

            font-weight: 700;

            cursor: pointer;

            transition: .3s;
        }


        .login-button:hover {
            background: #1551d0;

            transform: translateY(-1px);

            box-shadow:
                0 8px 20px rgba(37,99,235,.2);
        }


        /* DIVIDER */

        .login-divider {
            display: flex;

            align-items: center;

            gap: 12px;

            margin: 24px 0;

            color: #a0a9b7;

            font-size: 10px;

            font-weight: 600;
        }


        .login-divider::before,
        .login-divider::after {
            content: "";

            height: 1px;

            background: #e7eaf0;

            flex: 1;
        }


        /* SOCIAL */

        .login-social {
            display: flex;

            gap: 12px;
        }


        .login-social a {
            flex: 1;

            height: 43px;

            border: 1px solid #e1e5ec;

            border-radius: 10px;

            display: flex;

            align-items: center;

            justify-content: center;

            gap: 8px;

            color: #303a4c;

            font-size: 12px;

            font-weight: 600;
        }


        .login-social a:hover {
            background: #f5f7fb;
        }


        /* REGISTER */

        .create-account {
            text-align: center;

            margin-top: 25px;

            font-size: 13px;

            color: #7b8799;
        }


        .create-account a {
            color: #2563eb;

            font-weight: 700;
        }


        @media(max-width: 850px) {

            .login-container {
                grid-template-columns: 1fr;
            }

            .login-left {
                display: none;
            }

            .login-right {
                padding: 45px 35px;
            }
        }


        @media(max-width: 500px) {

            .login-right {
                padding: 35px 22px;
            }

            .login-social {
                flex-direction: column;
            }

        }

    </style>

</head>


<body>

<form id="loginForm" runat="server">


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


    <!-- ================= LOGIN PAGE ================= -->

    <section class="login-page">


        <div class="login-container">


            <!-- LEFT -->

            <div class="login-left">


                <div class="login-logo">

                    Mobile<span>Hub</span><b>.</b>

                </div>


                <h1>

                    Welcome<br />

                    <span>back.</span>

                </h1>


                <p>

                    Login to your MobileHub account to
                    manage your orders, wishlist and
                    discover the latest smartphone deals.

                </p>


                <div class="login-benefits">


                    <div class="login-benefit">

                        <i class="fa-solid fa-bag-shopping"></i>

                        <span>
                            Track all your orders
                        </span>

                    </div>


                    <div class="login-benefit">

                        <i class="fa-regular fa-heart"></i>

                        <span>
                            Save your favourite phones
                        </span>

                    </div>


                    <div class="login-benefit">

                        <i class="fa-solid fa-tags"></i>

                        <span>
                            Get members-only offers
                        </span>

                    </div>


                    <div class="login-benefit">

                        <i class="fa-solid fa-shield-halved"></i>

                        <span>
                            Secure shopping experience
                        </span>

                    </div>


                </div>

            </div>


            <!-- RIGHT -->

            <div class="login-right">


                <div class="login-heading">

                    <h2>
                        Welcome Back!
                    </h2>

                    <p>
                        Login to continue to MobileHub.
                    </p>

                </div>


                <!-- EMAIL -->

                <div class="login-form-group">

                    <label>
                        Email Address
                    </label>


                    <div class="login-input-wrapper">

                        <i class="fa-regular fa-envelope"></i>

                        <input type="email"
                               id="loginEmail"
                               class="login-input"
                               placeholder="Enter your email address" />

                    </div>

                </div>


                <!-- PASSWORD -->

                <div class="login-form-group">

                    <label>
                        Password
                    </label>


                    <div class="login-input-wrapper">

                        <i class="fa-solid fa-lock"></i>


                        <input type="password"
                               id="loginPassword"
                               class="login-input"
                               placeholder="Enter your password" />


                        <i class="fa-regular fa-eye password-eye"
                           onclick="toggleLoginPassword()">
                        </i>

                    </div>

                </div>


                <!-- OPTIONS -->

                <div class="login-options">


                    <label class="remember">

                        <input type="checkbox">

                        Remember me

                    </label>


                    <a href="forgot-password.aspx"
                       class="forgot-link">

                        Forgot Password?

                    </a>


                </div>


                <!-- LOGIN BUTTON -->

                <button type="button"
                        class="login-button"
                        onclick="loginUser()">

                    <i class="fa-solid fa-right-to-bracket"></i>

                    &nbsp; Login to Account

                </button>


                <!-- DIVIDER -->

                <div class="login-divider">

                    OR CONTINUE WITH

                </div>


                <!-- SOCIAL -->

                <div class="login-social">


                    <a href="#">

                        <i class="fa-brands fa-google"></i>

                        Google

                    </a>


                    <a href="#">

                        <i class="fa-brands fa-facebook"></i>

                        Facebook

                    </a>


                </div>


                <!-- CREATE ACCOUNT -->

                <div class="create-account">

                    Don't have an account?

                    <a href="register.aspx">
                        Create Account
                    </a>

                </div>


            </div>


        </div>


    </section>


</form>


<script>

    function toggleLoginPassword() {

        var input =
            document.getElementById("loginPassword");

        var icon =
            document.querySelector(".password-eye");


        if (input.type === "password") {

            input.type = "text";

            icon.classList.remove("fa-eye");

            icon.classList.add("fa-eye-slash");

        }
        else {

            input.type = "password";

            icon.classList.remove("fa-eye-slash");

            icon.classList.add("fa-eye");

        }

    }


    function loginUser() {

        var email =
            document.getElementById("loginEmail").value.trim();

        var password =
            document.getElementById("loginPassword").value.trim();


        if (email === "") {

            alert("Please enter your email address.");

            return;

        }


        if (password === "") {

            alert("Please enter your password.");

            return;

        }


        alert("Login page is ready. Backend will be connected later.");

    }

</script>


</body>

</html>