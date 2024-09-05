<!DOCTYPE html>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <title>Diet Chart for Overweight</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
        }

        h1 {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 10px;
        }

        .content {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0px 0px 5px #aaa;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #333;
            color: #fff;
        }
    </style>
</head>
<body>
    <%@ include file="empnavbar.jsp" %>
    <h1>Diet Chart for Overweight</h1>
    <div class="content">
        <h2>Morning</h2>
        <table>
            <tr>
                <th>Food</th>
                <th>Quantity</th>
            </tr>
            <tr>
                <td>Oatmeal</td>
                <td>1 bowl</td>
            </tr>
            <tr>
                <td>Fresh fruits</td>
                <td>1 serving</td>
            </tr>
            <tr>
                <td>Low-fat yogurt</td>
                <td>1 cup</td>
            </tr>
        </table>

        <h2>Lunch</h2>
        <table>
            <tr>
                <th>Food</th>
                <th>Quantity</th>
            </tr>
            <tr>
                <td>Grilled chicken breast</td>
                <td>4 oz</td>
            </tr>
            <tr>
                <td>Steamed vegetables</td>
                <td>1 serving</td>
            </tr>
            <tr>
                <td>Brown rice</td>
                <td>1/2 cup</td>
            </tr>
        </table>

        <h2>Evening Snack</h2>
        <table>
            <tr>
                <th>Food</th>
                <th>Quantity</th>
            </tr>
            <tr>
                <td>Almonds</td>
                <td>1 handful</td>
            </tr>
            <tr>
                <td>Carrot sticks</td>
                <td>1 serving</td>
            </tr>
        </table>

        <h2>Dinner</h2>
        <table>
            <tr>
                <th>Food</th>
                <th>Quantity</th>
            </tr>
            <tr>
                <td>Baked salmon</td>
                <td>4 oz</td>
            </tr>
            <tr>
                <td>Quinoa</td>
                <td>1/2 cup</td>
            </tr>
            <tr>
                <td>Steamed broccoli</td>
                <td>1 serving</td>
            </tr>
        </table>
    </div>
</body>
</html>
