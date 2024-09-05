<!DOCTYPE html>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <title>Spring Boot MVC</title>
    <style>
        body {
            margin: 0;
            padding: 0;
           
        }

        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: black;
        }

        li {
            float: left;
            border-right: 1px solid blue;
        }

        a {
            display: block;
            color: white;
            font-size: 18px;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
        }

        /* Add space between Home and User */
        li:nth-child(10) a {
            margin-right: 20px;
        }

        a:hover {
            background-color: orange;
            color: white;
        }
    </style>
</head>
<body>
    <ul>
        <li><a href="/">Home</a></li>
        <li><a href="aboutus">About us</a>
         <li><a href="services">Services Provided</a>
        <li><a href="emplogin">User</a></li>
        <li><a href="adminhome">Admin</a></li>
         <li><a href="doctorhome">Doctor</a></li>
       
 
        
    </ul>
</body>
</html>
