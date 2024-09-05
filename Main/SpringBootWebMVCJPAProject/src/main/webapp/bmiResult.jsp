<%@page import="java.text.DecimalFormatSymbols"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.DecimalFormat"%>
<%@ page import="java.util.Locale"%>

<%
    // Retrieve height and weight from the form
    double height = Double.parseDouble(request.getParameter("height"));
    double weight = Double.parseDouble(request.getParameter("weight"));

    // Calculate BMI
    double bmi = weight / ((height / 100) * (height / 100));

    // Format BMI to two decimal places
    DecimalFormat df = new DecimalFormat("#.##", new DecimalFormatSymbols(Locale.US));
    String formattedBMI = df.format(bmi);
%>

<!DOCTYPE html>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <meta charset="UTF-8">
    <title>BMI Result</title>
    <style>
        body {
            font-family: sans-serif;
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            margin-top: 50px;
        }

        p {
            text-align: center;
        }

        a {
            color: blue;
        }
        .card {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
<%@ include file="empnavbar.jsp" %>
<h2>BMI Result</h2>

<p>Your BMI is: <%= formattedBMI %></p>

<%-- Determine BMI category --%>
<%
    String category;

    if (bmi < 18.5) {
        category = "Underweight";
    } else if (bmi >= 18.5 && bmi < 24.9) {
        category = "Normal weight";
    } else if (bmi >= 25 && bmi < 29.9) {
        category = "Overweight";
    } else {
        category = "Obese";
    }
%>

<p>You are: <%= category %></p>

<%-- Add a link to view the diet chart for underweight if the category is underweight --%>
<%
    if (category.equals("Underweight")) {
%>
<p><a href="underweightDietChart.jsp">View Diet Chart</a></p>
<%
    } else if(category.equals("Overweight")){
%>
<p><a href="Overweight.jsp">View Diet Chart</a></p>
<%
    }
    else if(category.equals("Obese")){
    	%>
    	<p><a href="Obese.jsp">View Diet Chart</a></p>
    	<%
    	    }
%>

</body>
</html>
