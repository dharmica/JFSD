<%@page import="com.klef.jfsd.springboot.controller.ClientController"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <title>Health and Nutrition Management System - Process Appointment</title>
    <!-- Include styles from empnavbar.jsp -->
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 50%;
            margin: auto;
            background-color: #fff;
            padding: 20px;
            margin-top: 50px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        p {
            text-align: center;
            color: #4caf50;
            font-weight: bold;
        }
      /* Add these styles to center-align the button */
.green-button {
    background-color: #4caf50; /* Green color */
    color: white;
    border: none;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    display: block; /* Change to block to center-align */
    font-size: 16px;
    margin: 0 auto; /* Center horizontally */
    cursor: pointer;
    border-radius: 5px;
}

.green-button:hover {
    background-color: #45a049; /* Darker green on hover */
}


    </style>
</head>
<body>
    <!-- Include the navigation bar from empnavbar.jsp -->
    <%@ include file="empnavbar.jsp" %>

    <div class="container">
        <h2>Process Appointment</h2>

        <%-- Retrieve form data from request --%>
        <% String name = request.getParameter("name");
           String email = request.getParameter("email");
           String phone = request.getParameter("phone");
           String date = request.getParameter("date");
           String time = request.getParameter("time");
           
          
           // In a real application, you would typically save this data to a database.
           // For simplicity, we'll just display the information here.
        %>

        <p>Appointment booked successfully!</p>
        <p>Name: <%= name %></p>
        <p>Email: <%= email %></p>
        <p>Phone: <%= phone %></p>
        <p>Date: <%= date %></p>
        <p>Time: <%= time %></p>
       


    </div>
    
    <div>
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d121857.44261169726!2d78.3922670390625!3d17.3615636!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bcb978a6e1a939b%3A0xcb5a69e4aaf113fb!2sCharminar!5e0!3m2!1sen!2sin!4v1699143942471!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>
</body>
</html>
