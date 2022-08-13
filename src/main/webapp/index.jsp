<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FlyAway Booking</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">
</head>

<body>
<%@ include file="parts/header.jsp"%>
<div class="container">
    <main class="jumbo-wrapper">
        <div class="jumbo-container">
            <a href="search-flights.jsp">
                <button class="jumbo-btn">Book Flight</button>
            </a>
            <a href="login.jsp">
                <button class="jumbo-btn">App Login</button>
            </a>
        </div>
    </main>
</div>
<%@ include file="parts/footer.jsp" %>
</body>

</html>