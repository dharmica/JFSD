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
            margin: 0; /* Reset margin */
            padding: 0; /* Reset padding */
        }

        /* Center the content on the page */
        .centered-content {
            text-align: center;
            padding: 50px;
        }

        /* Style for the form container */
        form {
            display: inline-block;
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2); /* Light box shadow */
        }

        /* Style for form labels */
        label {
            display: block;
            margin-bottom: 10px;
        }

        /* Style for form inputs */
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            box-sizing: border-box;
        }

        /* Style for the login button */
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

        /* Hover effect for the login button */
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

        <h3 align=center><u>Admin Login</u></h3>

        <br>

        <form method="post" action="checkadminlogin">
            <label for="uname">Username</label>
            <input type="text" id="uname" name="uname" required/>

            <label for="pwd">Password</label>
            <input type="password" id="pwd" name="pwd" required/>

            <br><br>

            <input type="submit" value="Login" class="button">
        </form>

    </div>

</body>
</html>
