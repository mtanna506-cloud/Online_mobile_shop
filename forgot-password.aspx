<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">

    <meta charset="utf-8" />

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0" />

    <title>Forgot Password | MobileHub</title>

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

        .forgot-page {
            min-height: calc(100vh - 80px);

            display: flex;

            align-items: center;

            justify-content: center;

            padding: 50px 20px;

            background:
                radial-gradient(circle at top left,
                rgba(37,99,235,.12),
                transparent 35%),
                #f5f7fb;
        }


        .forgot-card {
            width: 100%;

            max-width: 480px;

            background: white;

            border-radius: 24px;

            padding: 45px 50px;

            box-shadow:
                0 20px 60px rgba(15,31,61,.12);

            text-align: center;
        }


        .forgot-icon {
            width: 75px;

            height: 75px;

            margin: 0 auto 25px;

            border-radius: 22px;

            background: #edf3ff;

            color: #2563eb;

            display: flex;

            align-items: center;

            justify-content: center;

            font-size: 29px;
        }


        .forgot-card h1 {
            font-size: 28px;

            font-weight: 800;

            color: #101828;

            margin-bottom: 10px;
        }


        .forgot-card > p {
            color: #7b8799;

            font-size: 13px;

            line-height: 1.7;

            margin-bottom: 30px;
        }


        .forgot-form {
            text-align: left;
        }


        .forgot-form label {
            display: block;

            font-size: 13px;

            font-weight: 600;

            color: #202a3d;

            margin-bottom: 8px;
        }


        .forgot-input-wrapper {
            position: relative;

            margin-bottom: 18px;
        }


        .forgot-input-wrapper > i {
            position: absolute;

            left: 15px;

            top: 50%;

            transform: translateY(-50%);

            color: #8d98aa;
        }


        .forgot-input {
            width: 100%;

            height: 49px;

            border: 1px solid #dfe4ec;

            border-radius: 11px;

            outline: none;

            padding: 0 15px 0 43px;

            font-family: 'Poppins', sans-serif;

            font-size: 13px;

            background: #fbfcfe;

            transition: .2s;
        }


        .forgot-input:focus {
            border-color: #2563eb;

            background: white;

            box-shadow:
                0 0 0 3px rgba(37,99,235,.08);
        }


        .send-button {
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


        .send-button:hover {
            background: #1551d0;

            transform: translateY(-1px);

            box-shadow:
                0 8px 20px rgba(37,99,235,.2);
        }


        .back-login {
            margin-top: 25px;

            font-size: 13px;

            color: #7b8799;
        }


        .back-login a {
            color: #2563eb;

            font-weight: 700;
        }


        .security-note {
            margin-top: 25px;

            padding: 13px;

            border-radius: 10px;

            background: #f7f9fc;

            color: #7b8799;

            font-size: 11px;

            line-height: 1.6;
        }


        .security-note i {
            color: #2563eb;

            margin-right: 5px;
        }


        @media(max-width: 500px) {

            .forgot-card {
                padding: 35px 22px;
            }

        }

    </style>

</head>


<body>

<form id="forgotForm" runat="server">


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


    <!-- ================= FORGOT PASSWORD ================= -->

    <section class="forgot-page">


        <div class="forgot-card">


            <div class="forgot-icon">

                <i class="fa-solid fa-key"></i>

            </div>


            <h1>
                Forgot Password?
            </h1>


            <p>

                No worries! Enter the email address
                associated with your MobileHub account
                and we'll help you reset your password.

            </p>


            <div class="forgot-form">


                <label>
                    Email Address
                </label>


                <div class="forgot-input-wrapper">

                    <i class="fa-regular fa-envelope"></i>

                    <input type="email"
                           id="forgotEmail"
                           class="forgot-input"
                           placeholder="Enter your email address" />

                </div>


                <button type="button"
                        class="send-button"
                        onclick="sendResetLink()">

                    <i class="fa-solid fa-paper-plane"></i>

                    &nbsp; Send Reset Link

                </button>


            </div>


            <div class="back-login">

                Remember your password?

                <a href="login.aspx">
                    Back to Login
                </a>

            </div>


            <div class="security-note">

                <i class="fa-solid fa-shield-halved"></i>

                Your account information is kept
                private and secure.

            </div>


        </div>


    </section>


</form>


<script>

    function sendResetLink() {

        var email =
            document.getElementById("forgotEmail").value.trim();


        if (email === "") {

            alert("Please enter your email address.");

            return;

        }


        alert(
            "Reset link request is ready. Email backend will be connected later."
        );

    }

</script>


</body>

</html>