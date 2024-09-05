<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calories</title>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <style>
        body {
            
            margin: 0;
            padding: 0; 
            background-color: #808080;
                   }

        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            align-items: flex-start;
            padding: 20px;
        }

        .card {
            flex: 0 0 calc(30% - 20px);
            margin: 10px;
            border: 1px solid #ddd;
            padding: 15px;
            border-radius: 5px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
           background-color: ##808080;
        }

        h2 {
            text-align: center;
        }

        img {
            max-width: 100%;
            height: auto;
            border-radius: 5px;
        }
         .card:nth-child(odd) {
            background-color: #FFB6C1; /* Light blue */
        }

        .card:nth-child(even) {
            background-color:#FFB6C1 ; /* Light orange */
        }
    </style>
</head>
<body>

<%@ include file="empnavbar.jsp" %>

<h2>Fruits</h2>

<div class="container">
    <div class="card">
        <img src="css/images/apple.jpg" alt="Apple">
        <h3>Apple</h3>
        <p>Calories: 52 kcal</p>
    </div>

    <div class="card">
        <img src="css/images/banana.jpg" alt="Banana">
        <h3>Banana</h3>
        <p>Calories: 105 kcal</p>
    </div>

    <div class="card">
        <img src="css/images/orange.jpg" alt="Orange">
        <h3>Orange</h3>
        <p>Calories: 62 kcal</p>
    </div>
</div>

<h2>Vegetables</h2>

<div class="container">
    <div class="card">
        <img src="css/images/carrot.jpg" alt="Carrot">
        <h3>Carrot</h3>
        <p>Calories: 41 kcal</p>
    </div>

    <div class="card">
        <img src="css/images/brocoli.jpg" alt="Broccoli">
        <h3>Broccoli</h3>
        <p>Calories: 55 kcal</p>
    </div>

    <div class="card">
        <img src="css/images/spinach.jpg" alt="Spinach">
        <h3>Spinach</h3>
        <p>Calories: 23 kcal</p>
    </div>
</div>

<h2>Curries</h2>

<div class="container">
    <div class="card">
        <img src="css/images/chicurry.jpg" alt="Chicken Curry">
        <h3>Chicken Curry</h3>
        <p>Calories: 280 kcal</p>
    </div>

    <div class="card">
        <img src="css/images/vegcurry.jpg" alt="Vegetable Curry">
        <h3>Vegetable Curry</h3>
        <p>Calories: 200 kcal</p>
    </div>

    <div class="card">
        <img src="css/images/pannercurry.jpg" alt="Paneer Curry">
        <h3>Paneer Curry</h3>
        <p>Calories: 230 kcal</p>
    </div>
</div>

</body>
</html>
