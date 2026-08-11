<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="register.aspx.cs"
    Inherits="mobilehub.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta charset="utf-8" />

    <meta name="viewport"
        content="width=device-width, initial-scale=1.0" />

    <title>Create Account | MobileHub</title>


    <!-- Google Font -->
    <link rel="preconnect"
        href="https://fonts.googleapis.com" />

    <link rel="preconnect"
        href="https://fonts.gstatic.com"
        crossorigin="anonymous" />

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800&display=swap"
        rel="stylesheet" />


    <!-- Font Awesome -->
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />


    <style>

        /* =====================================================
           BASIC RESET
        ===================================================== */

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }


        html,
        body {
            width: 100%;
            min-height: 100%;
        }


        body {
            font-family: 'Poppins', sans-serif;
            background: #f5f7fb;
            color: #101828;
            overflow-x: hidden;
        }


        /* =====================================================
           NAVBAR
        ===================================================== */

        .mh-navbar {
            width: 100%;
            height: 80px;

            background: #ffffff;

            border-bottom: 1px solid #e7eaf0;

            display: flex;
            align-items: center;
        }


        .mh-nav-inner {
            width: 100%;

            padding: 0 30px;

            display: flex;
            align-items: center;

            gap: 28px;
        }


        .mh-logo {
            color: #111a2e;

            font-size: 27px;

            font-weight: 800;

            text-decoration: none;

            white-space: nowrap;
        }


        .mh-logo span {
            color: #2165ed;
        }


        .mh-logo b {
            color: #f6a900;
        }


        /* SEARCH */

        .mh-search {
            width: 32%;
            height: 45px;

            border: 1px solid #dce1ea;

            border-radius: 25px;

            background: #fafbfd;

            display: flex;
            align-items: center;

            padding: 0 17px;
        }


        .mh-search i {
            color: #8c98ad;

            margin-right: 12px;
        }


        .mh-search input {
            width: 100%;

            border: none;
            outline: none;

            background: transparent;

            font-family: 'Poppins', sans-serif;

            font-size: 14px;
        }


        /* MENU */

        .mh-menu {
            margin-left: auto;

            display: flex;
            align-items: center;

            gap: 27px;
        }


        .mh-menu a {
            color: #182238;

            font-size: 14px;

            font-weight: 600;

            text-decoration: none;

            white-space: nowrap;
        }


        .mh-menu a:hover {
            color: #2165ed;
        }


        /* ICONS */

        .mh-icons {
            display: flex;

            align-items: center;

            gap: 20px;
        }


        .mh-icons a {
            color: #101828;

            font-size: 19px;

            text-decoration: none;
        }


        /* =====================================================
           PAGE BACKGROUND
        ===================================================== */

        .mh-page {
            width: 100%;

            min-height: calc(100vh - 80px);

            padding: 42px 20px;

            display: flex;

            justify-content: center;

            align-items: flex-start;

            background:
                radial-gradient(
                    circle at top left,
                    rgba(37, 99, 235, .13),
                    transparent 35%
                ),
                #f5f7fb;
        }


        /* =====================================================
           MAIN REGISTER CARD
        ===================================================== */

        .mh-card {
            width: 100%;

            max-width: 1100px;

            min-height: 650px;

            background: #ffffff;

            border-radius: 25px;

            overflow: hidden;

            display: grid;

            grid-template-columns: 35% 65%;

            box-shadow:
                0 20px 60px rgba(15, 31, 61, .12);
        }


        /* =====================================================
           LEFT SIDE
        ===================================================== */

        .mh-left {
            position: relative;

            background:
                linear-gradient(
                    145deg,
                    #101827,
                    #1d3970
                );

            color: #ffffff;

            padding: 55px 45px;

            overflow: hidden;
        }


        .mh-left::after {
            content: "";

            position: absolute;

            width: 300px;
            height: 300px;

            border-radius: 50%;

            background: rgba(37, 99, 235, .18);

            right: -130px;

            bottom: -110px;
        }


        .mh-left-logo {
            position: relative;

            z-index: 2;

            font-size: 28px;

            font-weight: 800;

            color: #ffffff;

            margin-bottom: 60px;
        }


        .mh-left-logo span {
            color: #4e8bff;
        }


        .mh-left-logo b {
            color: #f5a800;
        }


        .mh-left-title {
            position: relative;

            z-index: 2;

            font-size: 38px;

            line-height: 1.2;

            font-weight: 800;

            margin-bottom: 20px;
        }


        .mh-left-title span {
            color: #65a2ff;
        }


        .mh-left-text {
            position: relative;

            z-index: 2;

            max-width: 270px;

            color: #bfc8d9;

            font-size: 14px;

            line-height: 1.7;
        }


        /* FEATURES */

        .mh-features {
            position: relative;

            z-index: 2;

            margin-top: 35px;
        }


        .mh-feature {
            display: flex;

            align-items: center;

            gap: 13px;

            margin-bottom: 20px;

            font-size: 14px;
        }


        .mh-feature-icon {
            width: 35px;
            height: 35px;

            min-width: 35px;

            border-radius: 10px;

            background: rgba(255,255,255,.1);

            display: flex;

            align-items: center;

            justify-content: center;

            color: #ffb000;
        }


        /* =====================================================
           RIGHT SIDE
        ===================================================== */

        .mh-right {
            width: 100%;

            padding: 48px 55px;

            background: #ffffff;
        }


        /* =====================================================
           HEADING
        ===================================================== */

        .mh-heading {
            width: 100%;

            margin-bottom: 25px;
        }


        .mh-heading h2 {
            color: #101828;

            font-size: 28px;

            line-height: 1.3;

            font-weight: 800;

            margin-bottom: 7px;
        }


        .mh-heading p {
            color: #7b8799;

            font-size: 13px;
        }


        /* =====================================================
           FORM ROW
        ===================================================== */

        .mh-row {
            width: 100%;

            display: grid;

            grid-template-columns: 1fr 1fr;

            column-gap: 18px;

            row-gap: 0;
        }


        /* =====================================================
           FORM FIELD
        ===================================================== */

        .mh-field {
            width: 100%;

            margin-bottom: 17px;
        }


        .mh-field label {
            display: block;

            width: 100%;

            color: #202a3d;

            font-size: 13px;

            font-weight: 600;

            margin-bottom: 7px;
        }


        /* =====================================================
           ASP.NET TEXTBOX
        ===================================================== */

        .mh-input {
            display: block;

            width: 100% !important;

            height: 46px !important;

            padding: 0 14px !important;

            border: 1px solid #dfe4ec !important;

            border-radius: 10px !important;

            outline: none !important;

            background: #fbfcfe !important;

            color: #202a3d !important;

            font-family: 'Poppins', sans-serif !important;

            font-size: 13px !important;
        }


        .mh-input::placeholder {
            color: #9aa4b5;
        }


        .mh-input:focus {
            border-color: #2563eb !important;

            background: #ffffff !important;

            box-shadow:
                0 0 0 3px rgba(37, 99, 235, .08) !important;
        }


        /* =====================================================
           TERMS
        ===================================================== */

        .mh-terms {
            width: 100%;

            display: flex;

            align-items: flex-start;

            gap: 9px;

            margin: 4px 0 20px;

            color: #737f91;

            font-size: 11px;

            line-height: 1.6;
        }


        .mh-terms input {
            width: 16px;

            height: 16px;

            min-width: 16px;

            margin-top: 2px;
        }


        .mh-terms-text {
            color: #737f91;

            font-size: 11px;

            line-height: 1.6;
        }


        .mh-terms-text a {
            color: #2563eb;

            font-weight: 600;

            text-decoration: none;
        }


        /* =====================================================
           REGISTER BUTTON
        ===================================================== */

        .mh-register-btn {
            width: 100% !important;

            height: 49px !important;

            border: none !important;

            border-radius: 11px !important;

            background: #2563eb !important;

            color: #ffffff !important;

            font-family: 'Poppins', sans-serif !important;

            font-size: 14px !important;

            font-weight: 700 !important;

            cursor: pointer;

            transition: .2s;
        }


        .mh-register-btn:hover {
            background: #1551d0 !important;
        }


        /* =====================================================
           DIVIDER
        ===================================================== */

        .mh-divider {
            width: 100%;

            display: flex;

            align-items: center;

            gap: 12px;

            margin: 20px 0;

            color: #a0a9b7;

            font-size: 10px;

            white-space: nowrap;
        }


        .mh-divider::before,
        .mh-divider::after {
            content: "";

            height: 1px;

            background: #e7eaf0;

            flex: 1;
        }


        /* =====================================================
           SOCIAL BUTTONS
        ===================================================== */

        .mh-social {
            width: 100%;

            display: grid;

            grid-template-columns: 1fr 1fr;

            gap: 12px;
        }


        .mh-social a {
            height: 42px;

            border: 1px solid #e1e5ec;

            border-radius: 10px;

            display: flex;

            align-items: center;

            justify-content: center;

            gap: 8px;

            color: #303a4c;

            font-size: 12px;

            font-weight: 600;

            text-decoration: none;
        }


        .mh-social a:hover {
            background: #f5f7fb;
        }


        /* =====================================================
           LOGIN LINK
        ===================================================== */

        .mh-login {
            text-align: center;

            margin-top: 18px;

            color: #7b8799;

            font-size: 13px;
        }


        .mh-login a {
            color: #2563eb;

            font-weight: 700;

            text-decoration: none;
        }


        /* =====================================================
           TABLET
        ===================================================== */

        @media (max-width: 1000px) {

            .mh-card {
                grid-template-columns: 38% 62%;
            }

            .mh-left {
                padding: 45px 30px;
            }

            .mh-right {
                padding: 40px 35px;
            }

            .mh-left-title {
                font-size: 32px;
            }

            .mh-menu {
                gap: 15px;
            }

        }


        /* =====================================================
           SMALL TABLET
        ===================================================== */

        @media (max-width: 850px) {

            .mh-card {
                grid-template-columns: 1fr;
            }

            .mh-left {
                display: none;
            }

            .mh-right {
                padding: 40px 35px;
            }

            .mh-menu {
                display: none;
            }

            .mh-search {
                width: 45%;
            }

        }


        /* =====================================================
           MOBILE
        ===================================================== */

        @media (max-width: 600px) {

            .mh-navbar {
                height: 70px;
            }

            .mh-nav-inner {
                padding: 0 15px;

                gap: 15px;
            }

            .mh-search {
                display: none;
            }

            .mh-icons {
                margin-left: auto;
            }

            .mh-page {
                padding: 20px 12px;
            }

            .mh-card {
                border-radius: 18px;
            }

            .mh-right {
                padding: 30px 20px;
            }

            .mh-heading h2 {
                font-size: 24px;
            }

            .mh-row {
                grid-template-columns: 1fr;
            }

            .mh-social {
                grid-template-columns: 1fr;
            }

        }


        /* =====================================================
           VERY SMALL MOBILE
        ===================================================== */

        @media (max-width: 400px) {

            .mh-right {
                padding: 25px 15px;
            }

            .mh-heading h2 {
                font-size: 22px;
            }

        }

        .register-button {}

    </style>

</head>


<body>

<form id="form1" runat="server">


    <!-- =====================================================
         NAVBAR
    ===================================================== -->

    <nav class="mh-navbar">

        <div class="mh-nav-inner">


            <!-- LOGO -->

            <a href="index.aspx"
               class="mh-logo">

                Mobile<span>Hub</span><b>.</b>

            </a>


            <!-- SEARCH -->

            <div class="mh-search">

                <i class="fa-solid fa-magnifying-glass"></i>

                <input type="text"
                       placeholder="Search phones, brands, accessories..." />

            </div>


            <!-- MENU -->

            <div class="mh-menu">

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


            <!-- ICONS -->

            <div class="mh-icons">

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

    </nav>


    <!-- =====================================================
         REGISTER PAGE
    ===================================================== -->

    <section class="mh-page">


        <div class="mh-card">


            <!-- =================================================
                 LEFT SIDE
            ================================================= -->

            <div class="mh-left">


                <div class="mh-left-logo">

                    Mobile<span>Hub</span><b>.</b>

                </div>


                <h1 class="mh-left-title">

                    Join the<br />

                    <span>MobileHub</span><br />

                    family.

                </h1>


                <p class="mh-left-text">

                    Create your account and discover
                    smartphones, accessories and amazing
                    offers — all in one place.

                </p>


                <div class="mh-features">


                    <div class="mh-feature">

                        <div class="mh-feature-icon">

                            <i class="fa-solid fa-mobile-screen"></i>

                        </div>

                        <span>
                            Explore 180+ smartphone models
                        </span>

                    </div>


                    <div class="mh-feature">

                        <div class="mh-feature-icon">

                            <i class="fa-solid fa-tags"></i>

                        </div>

                        <span>
                            Get exclusive offers and deals
                        </span>

                    </div>


                    <div class="mh-feature">

                        <div class="mh-feature-icon">

                            <i class="fa-solid fa-truck-fast"></i>

                        </div>

                        <span>
                            Easy and fast order tracking
                        </span>

                    </div>


                    <div class="mh-feature">

                        <div class="mh-feature-icon">

                            <i class="fa-solid fa-shield-halved"></i>

                        </div>

                        <span>
                            Safe and secure shopping
                        </span>

                    </div>


                </div>


            </div>


            <!-- =================================================
                 RIGHT SIDE
            ================================================= -->

            <div class="mh-right">


                <!-- HEADING -->

                <div class="mh-heading">

                    <h2>
                        Create Account
                    </h2>

                    <p>
                        Fill in your details to get started.
                    </p>

                </div>


                <!-- =================================================
                     FIRST NAME + LAST NAME
                ================================================= -->

                <div class="mh-row">


                    <div class="mh-field">

                        <label>
                            First Name
                        </label>

                        <asp:TextBox
                            ID="txtFirstName"
                            runat="server"
                            CssClass="mh-input"
                            placeholder="Enter first name">
                        </asp:TextBox>

                    </div>


                    <div class="mh-field">

                        <label>
                            Last Name
                        </label>

                        <asp:TextBox
                            ID="txtLastName"
                            runat="server"
                            CssClass="mh-input"
                            placeholder="Enter last name">
                        </asp:TextBox>

                    </div>


                </div>


                <!-- =================================================
                     EMAIL + MOBILE
                ================================================= -->

                <div class="mh-row">


                    <div class="mh-field">

                        <label>
                            Email Address
                        </label>

                        <asp:TextBox
                            ID="txtEmail"
                            runat="server"
                            CssClass="mh-input"
                            TextMode="Email"
                            placeholder="Enter email address">
                        </asp:TextBox>

                    </div>


                    <div class="mh-field">

                        <label>
                            Mobile Number
                        </label>

                        <asp:TextBox
                            ID="txtPhone"
                            runat="server"
                            CssClass="mh-input"
                            MaxLength="10"
                            TextMode="Phone"
                            placeholder="Enter mobile number">
                        </asp:TextBox>

                    </div>


                </div>


                <!-- =================================================
                     PASSWORD + CONFIRM PASSWORD
                ================================================= -->

                <div class="mh-row">


                    <div class="mh-field">

                        <label>
                            Password
                        </label>

                        <asp:TextBox
                            ID="txtPassword"
                            runat="server"
                            CssClass="mh-input"
                            TextMode="Password"
                            placeholder="Create password">
                        </asp:TextBox>

                    </div>


                    <div class="mh-field">

                        <label>
                            Confirm Password
                        </label>

                        <asp:TextBox
                            ID="txtConfirmPassword"
                            runat="server"
                            CssClass="mh-input"
                            TextMode="Password"
                            placeholder="Confirm password">
                        </asp:TextBox>

                    </div>


                </div>


                <!-- =================================================
                     TERMS
                ================================================= -->

                <div class="mh-terms">

                    <asp:CheckBox
                        ID="chkTerms"
                        runat="server" />

                    <div class="mh-terms-text">

                        I agree to the

                        <a href="#">
                            Terms &amp; Conditions
                        </a>

                        and

                        <a href="#">
                            Privacy Policy
                        </a>.

                    </div>

                </div>


                <!-- =================================================
                     REGISTER BUTTON
                ================================================= -->

     <asp:ImageButton
    ID="registerbtn"
    runat="server"
    ImageUrl="~/Image/register.jpeg"
    CssClass="register-button"
    OnClick="registerbtn_Click"
    AlternateText="Create My Account" Height="84px" Width="281px" />


                <!-- =================================================
                     DIVIDER
                ================================================= -->

                <div class="mh-divider">

                    OR CONTINUE WITH

                </div>


                <!-- =================================================
                     SOCIAL BUTTONS
                ================================================= -->

                <div class="mh-social">


                    <a href="#">

                        <i class="fa-brands fa-google"></i>

                        Google

                    </a>


                    <a href="#">

                        <i class="fa-brands fa-facebook"></i>

                        Facebook

                    </a>


                </div>


                <!-- =================================================
                     LOGIN
                ================================================= -->

                <div class="mh-login">

                    Already have an account?

                    <a href="login.aspx">
                        Login
                    </a>

                </div>

                <asp:GridView
    ID="GridView1"
    runat="server"
    AutoGenerateColumns="False"
    CssClass="table table-bordered">

    <Columns>

        <asp:TemplateField HeaderText="First Name"></asp:TemplateField>
        <asp:TemplateField HeaderText="Last Name"></asp:TemplateField>
        <asp:TemplateField HeaderText="Email"></asp:TemplateField>
        <asp:TemplateField HeaderText="Mobile Number"></asp:TemplateField>
        <asp:TemplateField HeaderText="Password"></asp:TemplateField>
        <asp:TemplateField HeaderText="Confrim Password"></asp:TemplateField>

    </Columns>

</asp:GridView>


            </div>


        </div>

    </section>


</form>

</body>

</html>