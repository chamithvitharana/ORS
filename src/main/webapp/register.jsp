<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crave - Register</title>
    <link rel="icon" href="images/logoblack.png">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<style>
    /* Register Page Styles */
    .auth-container {
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        background: url("images/register-bg.jpg") center center/cover no-repeat;
        padding: 20px;
    }

    .auth-form {
        background-color: #ffffff;
        padding: 40px;
        border-radius: 12px;
        box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
        max-width: 400px;
        width: 100%;
        text-align: center;
    }

    .auth-form img.logo {
        width: 150px;
        margin-bottom: 20px;
    }

    .auth-form h2 {
        margin-bottom: 30px;
        font-size: 28px;
        font-weight: 700;
        color: #095764;
    }

    .auth-form .form-group {
        margin-bottom: 20px;
        text-align: left;
    }

    .auth-form .form-group label {
        font-size: 16px;
        color: #333;
        font-weight: 600;
        margin-bottom: 8px;
        display: block;
    }

    .auth-form .form-group input {
        width: 100%;
        padding: 12px;
        font-size: 14px;
        border: 1px solid #ccc;
        border-radius: 6px;
        background-color: #f9f9f9;
    }

    .auth-form .form-group input:focus {
        border-color: #095764;
        outline: none;
    }

    .auth-form .btn {
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
    }

    .auth-form .btn:hover {
        background-color: gold;
        transform: scale(1.02);
    }

    .auth-form .btn:active {
        transform: scale(0.98);
    }

    .auth-form .link {
        margin-top: 15px;
    }

    .auth-form .link a {
        color: #095764;
        text-decoration: none;
        font-weight: bold;
    }

    .auth-form .link a:hover {
        text-decoration: underline;
    }
</style>
<body style="background: url('images/bg2.jpg') center center/cover no-repeat;">
    <div class="auth-container">
        <div class="auth-form">
            <a href="index.jsp"><img  src="images/logo2.png" alt="Crave Logo" class="logo"></a>
            <h2>Register</h2>

            <div class="form-group">
                <label for="firstName">First Name</label>
                <input type="text" id="firstName" contenteditable="true" placeholder="Enter your first name"/>
            </div>
            <div class="form-group">
                <label for="lastName">Last Name</label>
                <input type="text" id="lastName" contenteditable="true" placeholder="Enter your last name"/>
            </div>
            <div class="form-group">
                <label for="mobile">Mobile</label>
                <input type="number" id="mobile" contenteditable="true" placeholder="Enter your mobile"/>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" contenteditable="true" placeholder="Enter your password"/>
            </div>
            <div class="form-group">
                <label for="confirm-password">Confirm Password</label>
                <input type="password" id="confirm-password" contenteditable="true" placeholder="Confirm your password"/>
            </div>
            <button type="button" class="btn">Register</button>
            <div class="link">
                <p>Already have an account? <a href="login.jsp">Login here</a></p>
            </div>
        </div>
    </div>

    <script src="js/script.js"></script>
</body>
</html>
