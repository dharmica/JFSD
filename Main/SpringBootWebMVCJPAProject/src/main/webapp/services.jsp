<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <style>
        body {
            background-image: url('css/images/backi.jpg');
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

        /* Services Styles */
        .services-content {
            margin-top: 20px;
        }

        .service-box {
            background-color: #f0f0f0;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            margin-bottom: 20px;
        }

        .service-title {
            color: #007BFF;
            font-size: 20px;
            margin-bottom: 10px;
        }

        .service-description {
            font-size: 16px;
        }
    </style>
</head>
<body>

    <%@ include file="navbar.jsp" %>

    <div class="centered-content">

        <div class="services-content">
            <div class="service-box">
                <div class="service-title">Nutritionist Consultation</div>
                <div class="service-description">Personalized guidance from experienced nutritionists to help you achieve your health goals.</div>
            </div>

            <div class="service-box">
                <div class="service-title">BMI Weight Checking</div>
                <div class="service-description">Accurate measurement of your Body Mass Index (BMI) to assess your weight status.</div>
            </div>

            <div class="service-box">
                <div class="service-title">Diet Chart</div>
                <div class="service-description">Customized diet plans tailored to your individual needs and preferences.</div>
            </div>
        </div>
    </div>
</body>
</html>
