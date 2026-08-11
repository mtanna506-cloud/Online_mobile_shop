<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">

    <meta charset="utf-8" />

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0" />

    <title>Contact Us | MobileHub</title>

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

        .contact-page {
            background: #f5f7fb;
            min-height: 100vh;
            padding: 35px 0 70px;
        }

        .page-heading {
            text-align: center;
            margin-bottom: 35px;
        }

        .page-heading h1 {
            font-size: 30px;
            font-weight: 800;
            color: #101828;
            margin-bottom: 7px;
        }

        .page-heading p {
            color: #7b8799;
            font-size: 10px;
            margin: 0;
        }

        .contact-card {
            background: white;
            border: 1px solid #e2e7ef;
            border-radius: 18px;
            padding: 28px;
            height: 100%;
        }

        .card-title {
            font-size: 17px;
            font-weight: 800;
            color: #101828;
            margin-bottom: 8px;
        }

        .card-subtitle {
            color: #8993a4;
            font-size: 9px;
            line-height: 1.7;
            margin-bottom: 22px;
        }

        .form-label {
            font-size: 9px;
            font-weight: 700;
            color: #344054;
            margin-bottom: 7px;
        }

        .form-control {
            height: 43px;
            border: 1px solid #dfe4ec;
            border-radius: 8px;
            font-family: 'Poppins', sans-serif;
            font-size: 9px;
            box-shadow: none !important;
        }

        .form-control:focus {
            border-color: #2563eb;
        }

        textarea.form-control {
            height: 120px;
            padding-top: 10px;
            resize: none;
        }

        .send-btn {
            height: 43px;
            border: none;
            border-radius: 8px;
            background: #2563eb;
            color: white;
            padding: 0 22px;
            font-family: 'Poppins', sans-serif;
            font-size: 9px;
            font-weight: 700;
            cursor: pointer;
        }

        .send-btn:hover {
            background: #1551d0;
        }

        /* CONTACT INFO */

        .info-item {
            display: flex;
            align-items: flex-start;
            gap: 13px;
            padding: 15px 0;
            border-bottom: 1px solid #edf0f4;
        }

        .info-item:last-child {
            border-bottom: none;
        }

        .info-icon {
            width: 40px;
            height: 40px;
            border-radius: 10px;
            background: #edf3ff;
            color: #2563eb;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-shrink: 0;
        }

        .info-item h3 {
            font-size: 10px;
            font-weight: 800;
            color: #101828;
            margin: 2px 0 5px;
        }

        .info-item p {
            color: #8993a4;
            font-size: 8px;
            line-height: 1.7;
            margin: 0;
        }

        /* SOCIAL */

        .social-title {
            font-size: 11px;
            font-weight: 800;
            color: #101828;
            margin: 22px 0 12px;
        }

        .social-links {
            display: flex;
            gap: 8px;
        }

        .social-links a {
            width: 35px;
            height: 35px;
            border: 1px solid #dfe4ec;
            border-radius: 8px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #667085;
            text-decoration: none;
            font-size: 11px;
        }

        .social-links a:hover {
            color: #2563eb;
            border-color: #2563eb;
        }

        /* FAQ */

        .faq-section {
            margin-top: 25px;
        }

        .faq-title {
            text-align: center;
            font-size: 20px;
            font-weight: 800;
            color: #101828;
            margin-bottom: 20px;
        }

        .faq-item {
            background: white;
            border: 1px solid #e2e7ef;
            border-radius: 10px;
            margin-bottom: 9px;
            overflow: hidden;
        }

        .faq-question {
            width: 100%;
            border: none;
            background: white;
            padding: 15px 18px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            text-align: left;
            font-family: 'Poppins', sans-serif;
            font-size: 9px;
            font-weight: 700;
            color: #344054;
            cursor: pointer;
        }

        .faq-answer {
            display: none;
            padding: 0 18px 15px;
            color: #8993a4;
            font-size: 8px;
            line-height: 1.8;
        }

        @media(max-width: 767px) {

            .contact-card {
                padding: 20px;
            }

        }

    </style>

</head>


<body>

<form id="contactForm" runat="server">


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


    <!-- ================= CONTACT ================= -->

    <section class="contact-page">

        <div class="container">


            <div class="page-heading">

                <h1>
                    Contact Us
                </h1>

                <p>
                    Have a question? We're here to help you.
                </p>

            </div>


            <div class="row g-4">


                <!-- CONTACT FORM -->

                <div class="col-lg-7">

                    <div class="contact-card">

                        <div class="card-title">
                            Send Us a Message
                        </div>

                        <div class="card-subtitle">

                            Fill out the form below and our support team
                            will get back to you as soon as possible.

                        </div>


                        <div class="row g-3">


                            <div class="col-md-6">

                                <label class="form-label">
                                    Your Name
                                </label>

                                <input type="text"
                                       id="name"
                                       class="form-control"
                                       placeholder="Enter your name" />

                            </div>


                            <div class="col-md-6">

                                <label class="form-label">
                                    Email Address
                                </label>

                                <input type="email"
                                       id="email"
                                       class="form-control"
                                       placeholder="Enter your email" />

                            </div>


                            <div class="col-12">

                                <label class="form-label">
                                    Subject
                                </label>

                                <select id="subject"
                                        class="form-select form-control">

                                    <option value="">
                                        Select a subject
                                    </option>

                                    <option>
                                        Order Related
                                    </option>

                                    <option>
                                        Product Information
                                    </option>

                                    <option>
                                        Payment Issue
                                    </option>

                                    <option>
                                        Delivery Issue
                                    </option>

                                    <option>
                                        Other
                                    </option>

                                </select>

                            </div>


                            <div class="col-12">

                                <label class="form-label">
                                    Message
                                </label>

                                <textarea id="message"
                                          class="form-control"
                                          placeholder="Write your message..."></textarea>

                            </div>


                            <div class="col-12">

                                <button type="button"
                                        class="send-btn"
                                        onclick="sendMessage()">

                                    <i class="fa-solid fa-paper-plane"></i>

                                    Send Message

                                </button>

                            </div>


                        </div>

                    </div>

                </div>


                <!-- CONTACT INFORMATION -->

                <div class="col-lg-5">

                    <div class="contact-card">

                        <div class="card-title">
                            Get In Touch
                        </div>

                        <div class="card-subtitle">

                            Our customer support team is available
                            to assist you with your queries.

                        </div>


                        <!-- ADDRESS -->

                        <div class="info-item">

                            <div class="info-icon">

                                <i class="fa-solid fa-location-dot"></i>

                            </div>

                            <div>

                                <h3>
                                    Our Address
                                </h3>

                                <p>
                                    MobileHub Office,<br>
                                    Main Market Road,<br>
                                    Gondal, Gujarat - 360311
                                </p>

                            </div>

                        </div>


                        <!-- PHONE -->

                        <div class="info-item">

                            <div class="info-icon">

                                <i class="fa-solid fa-phone"></i>

                            </div>

                            <div>

                                <h3>
                                    Phone
                                </h3>

                                <p>
                                    +91 1800 123 4567<br>
                                    Mon - Sat, 9:00 AM - 6:00 PM
                                </p>

                            </div>

                        </div>


                        <!-- EMAIL -->

                        <div class="info-item">

                            <div class="info-icon">

                                <i class="fa-solid fa-envelope"></i>

                            </div>

                            <div>

                                <h3>
                                    Email
                                </h3>

                                <p>
                                    support@mobilehub.com<br>
                                    We'll reply within 24 hours.
                                </p>

                            </div>

                        </div>


                        <!-- HOURS -->

                        <div class="info-item">

                            <div class="info-icon">

                                <i class="fa-solid fa-clock"></i>

                            </div>

                            <div>

                                <h3>
                                    Working Hours
                                </h3>

                                <p>
                                    Monday - Saturday<br>
                                    9:00 AM - 6:00 PM
                                </p>

                            </div>

                        </div>


                        <!-- SOCIAL -->

                        <div class="social-title">
                            Follow Us
                        </div>


                        <div class="social-links">

                            <a href="#"
                               aria-label="Facebook">

                                <i class="fa-brands fa-facebook-f"></i>

                            </a>


                            <a href="#"
                               aria-label="Instagram">

                                <i class="fa-brands fa-instagram"></i>

                            </a>


                            <a href="#"
                               aria-label="Twitter">

                                <i class="fa-brands fa-x-twitter"></i>

                            </a>


                            <a href="#"
                               aria-label="YouTube">

                                <i class="fa-brands fa-youtube"></i>

                            </a>

                        </div>

                    </div>

                </div>


            </div>


            <!-- ================= FAQ ================= -->

            <div class="faq-section">


                <div class="faq-title">
                    Frequently Asked Questions
                </div>


                <div class="faq-item">

                    <button type="button"
                            class="faq-question"
                            onclick="toggleFaq(this)">

                        How can I track my order?

                        <i class="fa-solid fa-plus"></i>

                    </button>

                    <div class="faq-answer">

                        You can track your order by opening
                        the My Orders section from your account.

                    </div>

                </div>


                <div class="faq-item">

                    <button type="button"
                            class="faq-question"
                            onclick="toggleFaq(this)">

                        What payment methods are available?

                        <i class="fa-solid fa-plus"></i>

                    </button>

                    <div class="faq-answer">

                        MobileHub supports UPI, credit cards,
                        debit cards and Cash on Delivery.

                    </div>

                </div>


                <div class="faq-item">

                    <button type="button"
                            class="faq-question"
                            onclick="toggleFaq(this)">

                        How long does delivery take?

                        <i class="fa-solid fa-plus"></i>

                    </button>

                    <div class="faq-answer">

                        Standard delivery generally takes
                        3 to 5 business days.

                    </div>

                </div>


                <div class="faq-item">

                    <button type="button"
                            class="faq-question"
                            onclick="toggleFaq(this)">

                        How can I contact customer support?

                        <i class="fa-solid fa-plus"></i>

                    </button>

                    <div class="faq-answer">

                        You can use the contact form above
                        or call our customer support number.

                    </div>

                </div>


            </div>


        </div>

    </section>


</form>


<script>

    function sendMessage() {

        var name =
            document.getElementById("name").value.trim();

        var email =
            document.getElementById("email").value.trim();

        var subject =
            document.getElementById("subject").value;

        var message =
            document.getElementById("message").value.trim();


        if (name === "") {

            alert("Please enter your name.");

            return;

        }


        if (email === "") {

            alert("Please enter your email.");

            return;

        }


        if (subject === "") {

            alert("Please select a subject.");

            return;

        }


        if (message === "") {

            alert("Please enter your message.");

            return;

        }


        alert(
            "Thank you, " +
            name +
            "!\n\n" +
            "Your message has been submitted successfully."
        );


        document.getElementById("name").value = "";

        document.getElementById("email").value = "";

        document.getElementById("subject").value = "";

        document.getElementById("message").value = "";

    }


    function toggleFaq(button) {

        var answer =
            button.nextElementSibling;

        var icon =
            button.querySelector("i");


        if (answer.style.display === "block") {

            answer.style.display = "none";

            icon.className =
                "fa-solid fa-plus";

        }

        else {

            answer.style.display = "block";

            icon.className =
                "fa-solid fa-minus";

        }

    }

</script>


</body>

</html>