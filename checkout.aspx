<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">

    <meta charset="utf-8" />

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0" />

    <title>Checkout | MobileHub</title>

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

        .checkout-page {
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


        .checkout-card {
            background: white;
            border: 1px solid #e2e7ef;
            border-radius: 18px;
            padding: 25px;
            margin-bottom: 20px;
        }


        .section-title {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-bottom: 22px;
        }


        .section-number {
            width: 30px;
            height: 30px;
            border-radius: 50%;
            background: #2563eb;
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 11px;
            font-weight: 700;
        }


        .section-title h2 {
            font-size: 16px;
            font-weight: 800;
            color: #101828;
            margin: 0;
        }


        .form-label {
            font-size: 10px;
            font-weight: 700;
            color: #344054;
            margin-bottom: 7px;
        }


        .form-control,
        .form-select {
            height: 43px;
            border: 1px solid #dfe4ec;
            border-radius: 8px;
            font-family: 'Poppins', sans-serif;
            font-size: 10px;
            box-shadow: none !important;
        }


        .form-control:focus,
        .form-select:focus {
            border-color: #2563eb;
        }


        textarea.form-control {
            height: 85px;
            padding-top: 10px;
        }


        .address-option {
            border: 1px solid #dfe4ec;
            border-radius: 10px;
            padding: 14px;
            margin-bottom: 10px;
            cursor: pointer;
            transition: .2s;
        }


        .address-option:hover,
        .address-option.selected {
            border-color: #2563eb;
            background: #f7faff;
        }


        .address-option label {
            cursor: pointer;
            width: 100%;
        }


        .address-name {
            font-size: 11px;
            font-weight: 700;
            color: #101828;
        }


        .address-text {
            display: block;
            color: #667085;
            font-size: 9px;
            line-height: 1.7;
            margin-top: 5px;
        }


        .payment-option {
            border: 1px solid #dfe4ec;
            border-radius: 10px;
            padding: 15px;
            margin-bottom: 10px;
            cursor: pointer;
        }


        .payment-option:hover,
        .payment-option.selected {
            border-color: #2563eb;
            background: #f7faff;
        }


        .payment-option label {
            cursor: pointer;
            width: 100%;
        }


        .payment-icon {
            width: 34px;
            height: 34px;
            background: #edf3ff;
            color: #2563eb;
            border-radius: 8px;
            display: flex;
            align-items: center;
            justify-content: center;
            float: left;
            margin-right: 12px;
        }


        .payment-name {
            display: block;
            font-size: 10px;
            font-weight: 700;
            color: #101828;
            padding-top: 2px;
        }


        .payment-desc {
            display: block;
            font-size: 8px;
            color: #8993a4;
            margin-top: 3px;
        }


        .card-fields {
            display: none;
            margin-top: 15px;
            padding-top: 15px;
            border-top: 1px solid #edf0f4;
        }


        /* ORDER SUMMARY */

        .summary-card {
            background: white;
            border: 1px solid #e2e7ef;
            border-radius: 18px;
            padding: 25px;
            position: sticky;
            top: 20px;
        }


        .summary-card h2 {
            font-size: 18px;
            font-weight: 800;
            color: #101828;
            margin-bottom: 20px;
        }


        .summary-product {
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 12px 0;
            border-bottom: 1px solid #edf0f4;
        }


        .summary-phone {
            width: 48px;
            height: 60px;
            background: linear-gradient(145deg,#6fa9ff,#203d7c);
            border: 2px solid #171b24;
            border-radius: 9px;
            flex-shrink: 0;
        }


        .summary-product h4 {
            font-size: 10px;
            font-weight: 700;
            margin: 0 0 3px;
        }


        .summary-product p {
            color: #8993a4;
            font-size: 8px;
            margin: 0;
        }


        .summary-price {
            margin-left: auto;
            font-size: 10px;
            font-weight: 700;
            color: #101828;
        }


        .summary-row {
            display: flex;
            justify-content: space-between;
            margin-top: 14px;
            font-size: 10px;
            color: #667085;
        }


        .summary-row strong {
            color: #101828;
        }


        .discount {
            color: #18864b !important;
        }


        .summary-line {
            height: 1px;
            background: #e9edf3;
            margin: 18px 0;
        }


        .total-row {
            display: flex;
            justify-content: space-between;
            font-size: 16px;
            font-weight: 800;
            color: #101828;
            margin-bottom: 20px;
        }


        .place-order {
            width: 100%;
            height: 48px;
            border: none;
            border-radius: 9px;
            background: #2563eb;
            color: white;
            font-family: 'Poppins', sans-serif;
            font-size: 11px;
            font-weight: 700;
            cursor: pointer;
        }


        .place-order:hover {
            background: #1551d0;
        }


        .secure {
            text-align: center;
            color: #8993a4;
            font-size: 8px;
            margin-top: 15px;
        }


        .secure i {
            color: #18864b;
        }


        .success-box {
            display: none;
            background: white;
            border: 1px solid #d9f0e2;
            border-radius: 18px;
            padding: 60px 20px;
            text-align: center;
        }


        .success-icon {
            width: 75px;
            height: 75px;
            background: #eaf8f0;
            color: #18864b;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 20px;
            font-size: 30px;
        }


        .success-box h2 {
            font-size: 22px;
            font-weight: 800;
            color: #101828;
        }


        .success-box p {
            color: #7b8799;
            font-size: 10px;
        }


        .home-btn {
            display: inline-block;
            background: #2563eb;
            color: white;
            text-decoration: none;
            padding: 11px 20px;
            border-radius: 8px;
            font-size: 10px;
            font-weight: 700;
            margin-top: 10px;
        }

    </style>

</head>


<body>

<form id="checkoutForm" runat="server">


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

                    <a href="cart.aspx"
                       class="active">

                        <i class="fa-solid fa-bag-shopping"></i>

                    </a>

                </div>


            </div>

        </div>

    </nav>


    <!-- ================= CHECKOUT ================= -->

    <section class="checkout-page"
             id="checkoutSection">

        <div class="container-fluid px-4">


            <div class="page-heading">

                <h1>
                    Checkout
                </h1>

                <p>
                    Complete your order by providing delivery and payment details.
                </p>

            </div>


            <div class="row g-4">


                <!-- ================= LEFT ================= -->

                <div class="col-lg-8">


                    <!-- DELIVERY ADDRESS -->

                    <div class="checkout-card">


                        <div class="section-title">

                            <div class="section-number">
                                1
                            </div>

                            <h2>
                                Delivery Address
                            </h2>

                        </div>


                        <div class="address-option selected">

                            <label>

                                <input type="radio"
                                       name="address"
                                       checked />

                                <span class="address-name">
                                    Mansi Tanna
                                </span>

                                <span class="address-text">

                                    Gondal, Gujarat - 360311<br />

                                    +91 98765 43210

                                </span>

                            </label>

                        </div>


                        <div class="address-option">

                            <label>

                                <input type="radio"
                                       name="address" />

                                <span class="address-name">
                                    Add New Address
                                </span>

                                <span class="address-text">
                                    Enter a new delivery address
                                </span>

                            </label>

                        </div>


                        <div class="row g-3 mt-1">


                            <div class="col-md-6">

                                <label class="form-label">
                                    Full Name
                                </label>

                                <input type="text"
                                       class="form-control"
                                       value="Mansi Tanna" />

                            </div>


                            <div class="col-md-6">

                                <label class="form-label">
                                    Mobile Number
                                </label>

                                <input type="text"
                                       class="form-control"
                                       value="+91 98765 43210" />

                            </div>


                            <div class="col-12">

                                <label class="form-label">
                                    Address
                                </label>

                                <textarea class="form-control">Gondal, Gujarat, India</textarea>

                            </div>


                            <div class="col-md-4">

                                <label class="form-label">
                                    City
                                </label>

                                <input type="text"
                                       class="form-control"
                                       value="Gondal" />

                            </div>


                            <div class="col-md-4">

                                <label class="form-label">
                                    State
                                </label>

                                <select class="form-select">

                                    <option>
                                        Gujarat
                                    </option>

                                    <option>
                                        Maharashtra
                                    </option>

                                    <option>
                                        Rajasthan
                                    </option>

                                </select>

                            </div>


                            <div class="col-md-4">

                                <label class="form-label">
                                    PIN Code
                                </label>

                                <input type="text"
                                       class="form-control"
                                       value="360311" />

                            </div>


                        </div>


                    </div>


                    <!-- PAYMENT -->

                    <div class="checkout-card">


                        <div class="section-title">

                            <div class="section-number">
                                2
                            </div>

                            <h2>
                                Payment Method
                            </h2>

                        </div>


                        <!-- UPI -->

                        <div class="payment-option selected">

                            <label>

                                <input type="radio"
                                       name="payment"
                                       value="upi"
                                       checked
                                       onchange="paymentChanged()" />

                                <span class="payment-icon">

                                    <i class="fa-solid fa-mobile-screen-button"></i>

                                </span>

                                <span class="payment-name">
                                    UPI
                                </span>

                                <span class="payment-desc">
                                    Pay using Google Pay, PhonePe or other UPI apps
                                </span>

                            </label>

                        </div>


                        <!-- CARD -->

                        <div class="payment-option">

                            <label>

                                <input type="radio"
                                       name="payment"
                                       value="card"
                                       onchange="paymentChanged()" />

                                <span class="payment-icon">

                                    <i class="fa-regular fa-credit-card"></i>

                                </span>

                                <span class="payment-name">
                                    Credit / Debit Card
                                </span>

                                <span class="payment-desc">
                                    Visa, Mastercard, RuPay and more
                                </span>

                            </label>


                            <div class="card-fields"
                                 id="cardFields">


                                <div class="row g-3">


                                    <div class="col-12">

                                        <label class="form-label">
                                            Card Number
                                        </label>

                                        <input type="text"
                                               class="form-control"
                                               placeholder="XXXX XXXX XXXX XXXX" />

                                    </div>


                                    <div class="col-md-6">

                                        <label class="form-label">
                                            Expiry Date
                                        </label>

                                        <input type="text"
                                               class="form-control"
                                               placeholder="MM / YY" />

                                    </div>


                                    <div class="col-md-6">

                                        <label class="form-label">
                                            CVV
                                        </label>

                                        <input type="password"
                                               class="form-control"
                                               placeholder="XXX" />

                                    </div>


                                </div>


                            </div>

                        </div>


                        <!-- COD -->

                        <div class="payment-option">

                            <label>

                                <input type="radio"
                                       name="payment"
                                       value="cod"
                                       onchange="paymentChanged()" />

                                <span class="payment-icon">

                                    <i class="fa-solid fa-money-bill"></i>

                                </span>

                                <span class="payment-name">
                                    Cash on Delivery
                                </span>

                                <span class="payment-desc">
                                    Pay when your order is delivered
                                </span>

                            </label>

                        </div>


                    </div>


                    <!-- REVIEW -->

                    <div class="checkout-card">


                        <div class="section-title">

                            <div class="section-number">
                                3
                            </div>

                            <h2>
                                Review & Confirm
                            </h2>

                        </div>


                        <p style="font-size:10px;color:#667085;line-height:1.8;">

                            Please check your delivery address and payment method
                            before placing your order.

                        </p>


                        <label style="font-size:9px;color:#667085;">

                            <input type="checkbox"
                                   id="terms" />

                            I agree to the terms and conditions.

                        </label>


                    </div>


                </div>


                <!-- ================= RIGHT SUMMARY ================= -->

                <div class="col-lg-4">


                    <div class="summary-card">


                        <h2>
                            Order Summary
                        </h2>


                        <!-- PRODUCT -->

                        <div class="summary-product">


                            <div class="summary-phone"></div>


                            <div>

                                <h4>
                                    Samsung Galaxy S25 Ultra
                                </h4>

                                <p>
                                    12GB RAM | 256GB
                                </p>

                                <p>
                                    Quantity: 1
                                </p>

                            </div>


                            <div class="summary-price">
                                ₹1,29,999
                            </div>


                        </div>


                        <!-- PRODUCT -->

                        <div class="summary-product">


                            <div class="summary-phone"
                                 style="background:linear-gradient(145deg,#222,#777);">
                            </div>


                            <div>

                                <h4>
                                    iPhone 16
                                </h4>

                                <p>
                                    8GB RAM | 128GB
                                </p>

                                <p>
                                    Quantity: 1
                                </p>

                            </div>


                            <div class="summary-price">
                                ₹79,999
                            </div>


                        </div>


                        <div class="summary-row">

                            <span>
                                Subtotal
                            </span>

                            <strong>
                                ₹2,09,998
                            </strong>

                        </div>


                        <div class="summary-row">

                            <span>
                                Delivery
                            </span>

                            <strong>
                                FREE
                            </strong>

                        </div>


                        <div class="summary-row">

                            <span>
                                Discount
                            </span>

                            <strong class="discount">
                                - ₹5,000
                            </strong>

                        </div>


                        <div class="summary-line"></div>


                        <div class="total-row">

                            <span>
                                Total
                            </span>

                            <span>
                                ₹2,04,998
                            </span>

                        </div>


                        <button type="button"
                                class="place-order"
                                onclick="placeOrder()">

                            <i class="fa-solid fa-lock"></i>

                            Place Order

                        </button>


                        <div class="secure">

                            <i class="fa-solid fa-shield-halved"></i>

                            Secure & encrypted checkout

                        </div>


                    </div>


                </div>


            </div>


        </div>

    </section>


    <!-- ================= SUCCESS ================= -->

    <section class="checkout-page"
             id="successSection"
             style="display:none;">

        <div class="container">


            <div class="success-box"
                 style="display:block;">

                <div class="success-icon">

                    <i class="fa-solid fa-check"></i>

                </div>


                <h2>
                    Order Placed Successfully!
                </h2>


                <p>
                    Thank you for shopping with MobileHub.
                </p>


                <p>
                    Your order ID is <strong>#MH20260808</strong>
                </p>


                <a href="index.aspx"
                   class="home-btn">

                    Continue Shopping

                </a>


            </div>


        </div>

    </section>


</form>


<script>

    function paymentChanged() {

        var card =
            document.querySelector(
                'input[name="payment"][value="card"]'
            );


        var cardFields =
            document.getElementById("cardFields");


        if (card.checked) {

            cardFields.style.display =
                "block";

        }

        else {

            cardFields.style.display =
                "none";

        }

    }


    function placeOrder() {

        var terms =
            document.getElementById("terms");


        if (!terms.checked) {

            alert(
                "Please agree to the terms and conditions."
            );

            return;

        }


        document.getElementById("checkoutSection")
            .style.display = "none";


        document.getElementById("successSection")
            .style.display = "block";


        window.scrollTo(
            0,
            0
        );

    }

</script>


</body>

</html>