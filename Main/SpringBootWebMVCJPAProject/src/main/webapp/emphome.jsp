<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 

<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <style>
        body {
            margin: 0;
            padding: 0;
            overflow: hidden; /* Hide scrollbars caused by video */
            color: #333; /* Set default text color */
            background-color: #fff3fe; /* Set background color */
        }

        video {
            position: fixed;
            top: 50%;
            left: 50%;
            min-width: 50%; /* Adjust the width as needed */
            min-height: 50%; /* Adjust the height as needed */
            z-index: -1; /* Place the video behind other elements */
            transform: translate(-50%, -50%);
        }

        .content-container {
            position: absolute;
            top: 20%;
            left: 15%;
            transform: translate(-50%, -50%);
            text-align: left;
            padding: 20px;
        }

        h2 {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

<%@ include file="empnavbar.jsp" %>

<video autoplay loop muted>
    <source src="css/images/empvedio1.mp4" type="video/mp4" >
    <!-- Add additional source elements for other video formats if needed -->
</video>

<div class="content-container">
    <h2>Hi,</h2>
    <h2>${ename} !!</h2>
    <!-- Add more content here if needed -->
</div>

</body>
</html>