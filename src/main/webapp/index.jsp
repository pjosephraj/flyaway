<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    StaticTexts sts = new StaticTexts();
    session.removeAttribute(sts.username);
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <%@include file="parts/head.jsp"%>
    <title>FlyAway Booking</title>
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