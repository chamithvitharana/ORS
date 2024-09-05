<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crave Admin Dashboard</title>
    <link rel="icon" href="../images/logoblack.png">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <!-- Custom CSS -->
    <style>
        body {
            display: flex;
            min-height: 100vh;
            font-family: 'Roboto', sans-serif;
            background-color: #f4f6f9;
            margin: 0;
        }

        /* Sidebar styles */
        .sidebar {
            width: 280px;
            background-color: #343a40;
            padding: 30px 15px;
            display: flex;
            flex-direction: column;
            height: 100vh;
            position: fixed;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
        }

        .sidebar a {
            color: #cfd8dc;
            padding: 12px 20px;
            margin-bottom: 10px;
            border-radius: 5px;
            text-decoration: none;
            display: flex;
            align-items: center;
            font-size: 18px;
            font-weight: 500;
            transition: background-color 0.3s;
        }

        .sidebar a:hover {
            background-color: #495057;
            color: #fff;
        }

        .sidebar a.active {
            background-color: #0d5fb6;
            color: #fff;
        }

        .sidebar i {
            margin-right: 15px;
        }

        .sidebar .logout {
            margin-top: auto;
            background-color: #dc3545;
            color: #fff !important;
        }

        /* Topbar styles */
        .topbar {
            width: calc(100% - 280px);
            background-color: #0d5fb6;
            color: #fff;
            padding: 20px 30px;
            position: fixed;
            left: 280px;
            top: 0;
            z-index: 1000;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .topbar h2 {
            margin: 0;
            font-size: 28px;
            font-weight: 600;
        }

        .topbar .user-profile {
            display: flex;
            align-items: center;
        }

        .topbar .user-profile img {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            margin-right: 10px;
        }

        /* Main content styles */
        .main-content {
            margin-top: 70px;
            margin-left: 280px;
            padding: 30px;
            width: calc(100% - 280px);
        }

        .card {
            border-radius: 8px;
            border: none;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
            background-color: #ffffff;
            transition: transform 0.3s;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card h5 {
            margin: 0;
            padding: 15px;
            background-color: #0d5fb6;
            color: #ffffff;
            border-radius: 8px 8px 0 0;
            font-weight: 600;
        }

        .card-body {
            padding: 20px;
        }

        /* Custom content styles */
        .content-section {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
        }

        .content-section h3 {
            font-size: 24px;
            color: #0d5fb6;
            margin-bottom: 15px;
        }

        .content-section p {
            font-size: 16px;
            line-height: 1.6;
            color: #555;
        }

        .content-section img {
            max-width: 100%;
            border-radius: 8px;
            margin-top: 20px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar">
        <a href="dashboard.jsp" class="active"><i class="fas fa-tachometer-alt"></i> Dashboard</a>
        <a href="orders.jsp"><i class="fas fa-shopping-cart"></i> Orders</a>
        <a href="reservations.jsp"><i class="fas fa-calendar-alt"></i> Reservations</a>
        <a href="users.jsp"><i class="fas fa-users"></i> Manage Users</a>
        <a href="branches.jsp"><i class="fas fa-store"></i> Restaurant Branches</a>
        <a href="foodItems.jsp"><i class="fas fa-utensils"></i> Food Items</a>
    </div>

    <!-- Topbar -->
    <div class="topbar">
        <h2>Crave Admin Dashboard</h2>
        <div class="user-profile">
            <img src="../images/logo2.png" alt="Admin Profile">
            <span>Admin Name</span>
        </div>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <div class="container-fluid">
            <!-- Introduction Section -->
            <div class="content-section text-center">
                <h3>Welcome to the Crave Admin Dashboard</h3>
                <p>The Crave Admin Dashboard is designed to give you full control over the restaurant's daily operations. From managing orders and reservations to overseeing user roles and restaurant branches, the dashboard provides a streamlined interface for seamless administration. Whether you are a Delivery Coordinator, Restaurant Manager, or Receptionist, this dashboard equips you with the tools you need to efficiently manage and monitor all aspects of Crave's services.</p>
                <img style="height: 200px;" src="../images/logoblack.png" alt="Dashboard Overview">
            </div>

            <!-- Mission Statement Section -->
            <div class="content-section">
                <h3>Our Mission</h3>
                <p>At Crave, our mission is to deliver exceptional dining experiences to our customers while ensuring smooth and efficient operations behind the scenes. The admin panel is a vital part of our commitment to maintaining the highest standards of service, allowing our team to coordinate efforts, manage resources, and provide top-notch customer service. Every feature within this dashboard is built with the intent to support our staff in delivering the best possible experience to our patrons.</p>
            </div>

            <!-- Vision Section -->
            <div class="content-section">
                <h3>Our Vision</h3>
                <p>We envision Crave as a leading name in the restaurant industry, renowned for its quality, service, and customer satisfaction. The admin panel is a reflection of our dedication to excellence, providing a robust platform that supports our growth and adaptability in a dynamic market. With features tailored to meet the demands of modern restaurant management, we aim to set new standards in hospitality through innovation and efficiency.</p>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../js/script.js"></script>
</body>
</html>
