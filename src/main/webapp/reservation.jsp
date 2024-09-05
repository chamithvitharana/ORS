<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crave - Table Reservation</title>
    <link rel="icon" href="images/logoblack.png">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<style>
    /* Enhanced Reservation Section Styles */
    .reservation-form-section {
        padding: 60px 20px;
        background-color: #ffffff;
        border-radius: 12px;
        max-width: 900px;
        margin: 30px auto;
        box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
    }

    .reservation-form-section h3 {
        text-align: center;
        margin-bottom: 40px;
        font-size: 32px;
        font-weight: 700;
        color: #095764;
    }

    .form-container {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
        gap: 20px;
    }

    .form-group {
        flex: 1;
        min-width: 45%;
        margin-bottom: 20px;
    }

    .form-group label {
        font-size: 16px;
        color: #333;
        font-weight: 600;
        margin-bottom: 10px;
        display: block;
    }

    .form-group div {
        width: 100%;
        padding: 12px 15px;
        font-size: 14px;
        border: 1px solid #ccc;
        border-radius: 6px;
        background-color: #f9f9f9;
        display: flex;
        align-items: center;
        justify-content: space-between;
    }

    .form-group div select,
    .form-group div input {
        width: calc(100% - 20px);
        border: none;
        background: none;
    }

    .form-group div input {
        border-radius: 6px;
        padding: 12px;
    }

    .form-group div select {
        border-radius: 6px;
        padding: 12px;
    }

    .btn {
        display: inline-block;
        padding: 14px 28px;
        background-color: #333;
        color: #fff;
        border: none;
        border-radius: 4px;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.3s ease;
        text-align: center;
        width: 100%;
        max-width: 200px;
        margin: 0 auto;
    }

    .btn:hover {
        font-weight: bold;
        color: black;
        background-color: gold;
        transform: scale(1.02);
    }

    .btn:active {
        transform: scale(0.98);
    }

    /* Responsive Layout */
    @media (max-width: 768px) {
        .form-container {
            flex-direction: column;
        }

        .form-group {
            min-width: 100%;
        }
    }

    /* Footer Styles */
    footer {
        background-color: #333;
        color: #fff;
        padding: 20px 0;
    }

    .footer-content {
        display: flex;
        justify-content: space-between;
        flex-wrap: wrap;
    }

    .footer-logo {
        flex: 1;
        text-align: center;
    }

    .footer-logo img {
        max-width: 150px;
    }

    .footer-links,
    .footer-contact,
    .footer-social {
        flex: 1;
        margin: 0 20px;
    }

    .footer-links ul {
        list-style-type: none;
        padding: 0;
    }

    .footer-links li {
        margin: 10px 0;
    }

    .footer-links a {
        color: #fff;
        text-decoration: none;
    }

    .footer-contact p,
    .footer-social a {
        margin: 5px 0;
    }

    .footer-social a {
        margin: 0 10px;
        color: #fff;
        text-decoration: none;
    }
</style>
<body>
    <!-- header -->
    <header style="background: url('images/reserve2.png') center center/cover no-repeat;">
        <div id="navbar">
            <img src="images/logo1.png" alt="logo" id="logo" style="margin-top: 20px;">
            <nav>
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="index.jsp#about-content">About</a></li>
                    <li><a href="index.jsp#menu-section">Menu</a></li>
                    <li><a href="index.jsp#contact">Contact</a></li>
                    <li id="user-link"><a href="login.jsp">Login</a></li>
                </ul>
            </nav>
        </div>
        <div class="content">
            <h1>Welcome to
                <span class="primary-text"> Crave</span> Reservations
            </h1>
            <p><span class="primary-text">Make</span> Your Reservation with Us.</p>
            <p>Experience the finest Sri Lankan cuisine in the heart of Colombo.</p>
            <div class="row">

                <a href="#reservation-section" class="btn btn-secondary ">Reserve Now</a>

            </div>
        </div>

        </div>
    </header>

    <!-- Reservation Section Start -->
    <section class="reservation-form-section" id="reservation-section">
        <div class="container">
            <h3>Reserve Your Table</h3>
            <div class="form-container">
                <div class="form-group">
                    <label for="location">Restaurant Location:</label>
                    <div>
                        <select id="location">
                            <option value="0">Select Restaurant</option>
                            <option value="Colombo">Colombo</option>
                            <option value="Matara">Matara</option>
                            <option value="Kandy">Kandy</option>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label for="date">Date:</label>
                    <div>
                        <input type="date" id="date">
                    </div>
                </div>

                <div class="form-group">
                    <label for="time">Time:</label>
                    <div>
                        <input type="time" id="time">
                    </div>
                </div>

                <div class="form-group">
                    <label for="guests">Number of Guests:</label>
                    <div>
                        <input type="number" id="guests" placeholder="Number of Guests">
                    </div>
                </div>
            </div>
            <button type="button" class="btn">Reserve Now</button>
        </div>
    </section>
    <!-- Reservation Section End -->

    <!-- Footer Start -->
    <footer>
        <div class="container">
            <div class="footer-content">
                <div class="footer-logo">
                    <img src="images/logo1.png" alt="Crave Logo">
                    <p>&copy; 2024 Crave Restaurant. All rights reserved.</p>
                </div>
                <div class="footer-links">
                    <h3>Quick Links</h3>
                    <ul>
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="index.jsp#about-content">About</a></li>
                        <li><a href="index.jsp#menu-section">Menu</a></li>
                        <li><a href="reservation.jsp">Reservation</a></li>
                        <li><a href="index.jsp#contact">Contact</a></li>
                    </ul>
                </div>
                <div class="footer-contact">
                    <h3>Contact Us</h3>
                    <p><i class="fa-solid fa-location-dot"></i> 123 Food Street, Colombo, Sri Lanka</p>
                    <p><i class="fa-solid fa-phone"></i> +94 112 345 678</p>
                    <p><i class="fa-solid fa-envelope"></i> info@craverestaurant.lk</p>
                </div>
                <div class="footer-social">
                    <h3>Follow Us</h3>
                    <a href="https://www.facebook.com/CraveRestaurant" target="_blank"><i class="fa-brands fa-facebook"></i></a>
                    <a href="https://twitter.com/CraveRestaurant" target="_blank"><i class="fa-brands fa-twitter"></i></a>
                    <a href="https://www.instagram.com/CraveRestaurant" target="_blank"><i class="fa-brands fa-instagram"></i></a>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer End -->

    <script src="js/script.js"></script>
</body>
</html>
