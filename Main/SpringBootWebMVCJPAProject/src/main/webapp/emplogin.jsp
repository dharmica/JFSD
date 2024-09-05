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
    </style>
</head>
<body>
 <jsp:include page="navbar.jsp" />
    <div class="centered-content">

       

        <br>

        <span class="blink">
            <h3 align=center style="color:red">${message} </h3>
        </span>

        <h3 align=center><u>User Login</u></h3>

        <br>

        <form method="post" action="checkemplogin">
            <label for="email">Email ID</label>
            <input type="email" id="email" name="email" required/>

            <label for="pwd">Password</label>
            <input type="password" id="pwd" name="pwd" required/>

            <br><br>

            <input type="submit" value="Login" class="button">
        </form>

        <br>

        <h3 align="center">
            New Registration? <a href="empreg">Click Here</a>
        </h3>

    </div>

</body>
</html>
