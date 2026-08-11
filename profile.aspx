<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">

    <meta charset="utf-8" />

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0" />

    <title>My Profile | MobileHub</title>

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

        .profile-page {
            background: #f5f7fb;
            min-height: 100vh;
            padding: 35px 0 70px;
        }


        .page-heading {
            margin-bottom: 28px;
        }


        .page-heading h1 {
            font-size: 30px;
            font-weight: 800;
            color: #101828;
            margin-bottom: 5px;
        }


        .page-heading p {
            color: #7b8799;
            font-size: 11px;
            margin: 0;
        }


        .profile-card {
            background: white;
            border: 1px solid #e2e7ef;
            border-radius: 18px;
            padding: 30px;
        }


        /* PROFILE HEADER */

        .profile-header {
            display: flex;
            align-items: center;
            gap: 20px;
            padding-bottom: 25px;
            border-bottom: 1px solid #edf0f4;
            margin-bottom: 25px;
        }


        .profile-avatar {
            width: 85px;
            height: 85px;
            border-radius: 50%;
            background: #edf3ff;
            color: #2563eb;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 32px;
            font-weight: 800;
            flex-shrink: 0;
        }


        .profile-header h2 {
            font-size: 20px;
            font-weight: 800;
            color: #101828;
            margin-bottom: 4px;
        }


        .profile-header p {
            color: #7b8799;
            font-size: 10px;
            margin-bottom: 8px;
        }


        .verified {
            display: inline-flex;
            align-items: center;
            gap: 5px;
            background: #eaf8f0;
            color: #18864b;
            padding: 5px 9px;
            border-radius: 15px;
            font-size: 8px;
            font-weight: 700;
        }


        /* FORM */

        .form-title {
            font-size: 16px;
            font-weight: 800;
            color: #101828;
            margin-bottom: 20px;
        }


        .form-label {
            font-size: 10px;
            font-weight: 700;
            color: #344054;
            margin-bottom: 7px;
        }


        .form-control {
            height: 43px;
            border: 1px solid #dfe4ec;
            border-radius: 8px;
            font-family: 'Poppins', sans-serif;
            font-size: 10px;
            box-shadow: none !important;
        }


        .form-control:focus {
            border-color: #2563eb;
        }


        textarea.form-control {
            height: 90px;
            padding-top: 10px;
        }


        .save-btn {
            height: 43px;
            border: none;
            border-radius: 8px;
            background: #2563eb;
            color: white;
            padding: 0 22px;
            font-family: 'Poppins', sans-serif;
            font-size: 10px;
            font-weight: 700;
            cursor: pointer;
        }


        .save-btn:hover {
            background: #1551d0;
        }


        /* SIDE MENU */

        .profile-menu {
            background: white;
            border: 1px solid #e2e7ef;
            border-radius: 18px;
            padding: 15px;
        }


        .menu-title {
            padding: 10px 12px 13px;
            font-size: 13px;
            font-weight: 800;
            color: #101828;
        }


        .profile-menu a {
            display: flex;
            align-items: center;
            gap: 11px;
            padding: 12px;
            border-radius: 9px;
            color: #667085;
            text-decoration: none;
            font-size: 10px;
            font-weight: 600;
            margin-bottom: 3px;
        }


        .profile-menu a i {
            width: 17px;
            text-align: center;
        }


        .profile-menu a:hover,
        .profile-menu a.active {
            background: #edf3ff;
            color: #2563eb;
        }


        .profile-menu a.logout {
            color: #ef4444;
        }


        .profile-menu a.logout:hover {
            background: #fff1f1;
        }


        /* ACCOUNT INFO */

        .account-box {
            background: #f7f9fc;
            border-radius: 12px;
            padding: 18px;
            margin-top: 25px;
        }


        .account-box h3 {
            font-size: 12px;
            font-weight: 800;
            margin-bottom: 13px;
        }


        .account-row {
            display: flex;
            justify-content: space-between;
            padding: 7px 0;
            font-size: 9px;
        }


        .account-row span:first-child {
            color: #8993a4;
        }


        .account-row span:last-child {
            color: #344054;
            font-weight: 600;
        }


        /* STATS */

        .stats-row {
            margin-top: 25px;
        }


        .stat-card {
            background: white;
            border: 1px solid #e2e7ef;
            border-radius: 14px;
            padding: 18px;
            text-align: center;
            height: 100%;
        }


        .stat-icon {
            width: 42px;
            height: 42px;
            border-radius: 11px;
            background: #edf3ff;
            color: #2563eb;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 9px;
        }


        .stat-card strong {
            display: block;
            font-size: 16px;
            color: #101828;
        }


        .stat-card span {
            color: #8993a4;
            font-size: 8px;
        }


        @media(max-width: 767px) {

            .profile-header {
                align-items: flex-start;
            }

            .profile-card {
                padding: 20px;
            }

        }

    </style>

</head>


<body>

<form id="profileForm" runat="server">


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

                    <a href="profile.aspx"
                       class="active">

                        <i class="fa-solid fa-user"></i>

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


    <!-- ================= PROFILE ================= -->

    <section class="profile-page">

        <div class="container-fluid px-4">


            <div class="page-heading">

                <h1>
                    My Profile
                </h1>

                <p>
                    Manage your personal information and account settings.
                </p>

            </div>


            <div class="row g-4">


                <!-- LEFT MENU -->

                <div class="col-lg-3">


                    <div class="profile-menu">


                        <div class="menu-title">
                            Account
                        </div>


                        <a href="profile.aspx"
                           class="active">

                            <i class="fa-solid fa-user"></i>

                            My Profile

                        </a>


                        <a href="#">

                            <i class="fa-solid fa-box"></i>

                            My Orders

                        </a>


                        <a href="wishlist.aspx">

                            <i class="fa-regular fa-heart"></i>

                            My Wishlist

                        </a>


                        <a href="cart.aspx">

                            <i class="fa-solid fa-cart-shopping"></i>

                            Shopping Cart

                        </a>


                        <a href="#">

                            <i class="fa-solid fa-location-dot"></i>

                            My Addresses

                        </a>


                        <a href="#">

                            <i class="fa-solid fa-lock"></i>

                            Change Password

                        </a>


                        <a href="#"
                           class="logout"
                           onclick="logoutUser()">

                            <i class="fa-solid fa-right-from-bracket"></i>

                            Logout

                        </a>


                    </div>


                </div>


                <!-- RIGHT CONTENT -->

                <div class="col-lg-9">


                    <div class="profile-card">


                        <!-- PROFILE HEADER -->

                        <div class="profile-header">


                            <div class="profile-avatar">

                                M

                            </div>


                            <div>

                                <h2>
                                    Mansi Tanna
                                </h2>

                                <p>
                                    mansi@example.com
                                </p>

                                <span class="verified">

                                    <i class="fa-solid fa-circle-check"></i>

                                    Verified Account

                                </span>

                            </div>


                        </div>


                        <!-- FORM -->

                        <div class="form-title">

                            Personal Information

                        </div>


                        <div class="row g-3">


                            <!-- FIRST NAME -->

                            <div class="col-md-6">

                                <label class="form-label">
                                    First Name
                                </label>

                                <input type="text"
                                       class="form-control"
                                       value="Mansi" />

                            </div>


                            <!-- LAST NAME -->

                            <div class="col-md-6">

                                <label class="form-label">
                                    Last Name
                                </label>

                                <input type="text"
                                       class="form-control"
                                       value="Tanna" />

                            </div>


                            <!-- EMAIL -->

                            <div class="col-md-6">

                                <label class="form-label">
                                    Email Address
                                </label>

                                <input type="email"
                                       class="form-control"
                                       value="mansi@example.com" />

                            </div>


                            <!-- PHONE -->

                            <div class="col-md-6">

                                <label class="form-label">
                                    Phone Number
                                </label>

                                <input type="text"
                                       class="form-control"
                                       value="+91 98765 43210" />

                            </div>


                            <!-- CITY -->

                            <div class="col-md-6">

                                <label class="form-label">
                                    City
                                </label>

                                <input type="text"
                                       class="form-control"
                                       value="Gondal" />

                            </div>


                            <!-- STATE -->

                            <div class="col-md-6">

                                <label class="form-label">
                                    State
                                </label>

                                <input type="text"
                                       class="form-control"
                                       value="Gujarat" />

                            </div>


                            <!-- ADDRESS -->

                            <div class="col-12">

                                <label class="form-label">
                                    Address
                                </label>

                                <textarea class="form-control">Gondal, Gujarat, India</textarea>

                            </div>


                            <!-- SAVE -->

                            <div class="col-12">

                                <button type="button"
                                        class="save-btn"
                                        onclick="saveProfile()">

                                    <i class="fa-solid fa-check"></i>

                                    Save Changes

                                </button>

                            </div>


                        </div>


                        <!-- ACCOUNT INFO -->

                        <div class="account-box">


                            <h3>
                                Account Information
                            </h3>


                            <div class="account-row">

                                <span>
                                    Member Since
                                </span>

                                <span>
                                    January 2026
                                </span>

                            </div>


                            <div class="account-row">

                                <span>
                                    Account Status
                                </span>

                                <span>
                                    Active
                                </span>

                            </div>


                            <div class="account-row">

                                <span>
                                    Email Status
                                </span>

                                <span>
                                    Verified
                                </span>

                            </div>


                        </div>


                    </div>


                    <!-- STATS -->

                    <div class="row g-3 stats-row">


                        <div class="col-md-4">

                            <div class="stat-card">

                                <div class="stat-icon">

                                    <i class="fa-solid fa-box"></i>

                                </div>

                                <strong>
                                    08
                                </strong>

                                <span>
                                    Total Orders
                                </span>

                            </div>

                        </div>


                        <div class="col-md-4">

                            <div class="stat-card">

                                <div class="stat-icon">

                                    <i class="fa-solid fa-heart"></i>

                                </div>

                                <strong>
                                    04
                                </strong>

                                <span>
                                    Wishlist Items
                                </span>

                            </div>

                        </div>


                        <div class="col-md-4">

                            <div class="stat-card">

                                <div class="stat-icon">

                                    <i class="fa-solid fa-star"></i>

                                </div>

                                <strong>
                                    12
                                </strong>

                                <span>
                                    Reviews Given
                                </span>

                            </div>

                        </div>


                    </div>


                </div>


            </div>


        </div>

    </section>


</form>


<script>

    function saveProfile() {

        alert(
            "Profile updated successfully!"
        );

    }


    function logoutUser() {

        var confirmLogout =
            confirm(
                "Are you sure you want to logout?"
            );


        if (confirmLogout) {

            window.location.href =
                "login.aspx";

        }

    }

</script>


</body>

</html>