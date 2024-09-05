<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <style>
        body {
            background-image: url('css/images/bimage.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            margin: 0;
            padding: 0;
        }

        .centered-content {
            text-align: center;
            padding: 50px;
        }

        form {
            display: inline-block;
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            margin-top: 20px; /* Add space between the navbar and the form */
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            box-sizing: border-box;
        }

        .button {
            background-color: #007BFF;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .button:hover {
            background-color: #0056b3;
        }

        /* About Us Styles */
        .about-us-content {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            margin-top: 20px;
            text-align: left;
        }
    </style>
</head>
<body>

    <%@ include file="navbar.jsp" %>

    <div class="centered-content">
   
        <div class="about-us-content">
            <h2>About Us - Health and Nutrition Management System</h2>
            <p>
                Welcome to our Health and Nutrition Management System! We are dedicated to providing you with the tools and resources needed to manage your health and nutrition effectively.
            </p>
            <p>
                Our system offers features such as personalized nutrition plans, fitness tracking, and health monitoring. Whether you're aiming to lose weight, build muscle, or simply maintain a healthy lifestyle, we have the tools to support you on your journey.
            </p>
            <p>
                To get started, sign up for an account and explore the features available. Track your meals, set fitness goals, and receive personalized recommendations based on your health and fitness objectives.
            </p>
            <p>
                Thank you for choosing our Health and Nutrition Management System. We're here to empower you on your path to better health and well-being.
            </p>
            <p>
                If you have any questions, feedback, or suggestions, please don't hesitate to contact us. Your health is our priority.
            </p>
        </div>
    </div>
</body>
</html>
