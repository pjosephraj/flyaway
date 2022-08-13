<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.example.flyaway.classes.*" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: joseph
  Date: 8/13/2022
  Time: 1:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    StaticTexts sts = new StaticTexts();
    String flightId = request.getParameter(sts.flightId);
    String flightDate = request.getParameter(sts.flightDate);
    String passengers = request.getParameter(sts.passengers);
    ArrayList<Flight> fldata = new FlightList().getFlight(flightId);
    Flight fl = fldata.get(0);
    Integer totalAmount = fl.getPrice() * Integer.parseInt(passengers);
%>
<html>
<head>
    <%@include file="parts/head.jsp"%>
    <title>FlyAway | Review</title>
    <style>
      .form-control {
        width: 46%;
        pointer-events: none;
      }

      form {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
      }

      .box-container {
        width: 600px;
      }

      .form-control label {
        opacity: .8;
      }

      .form-control label:after {
        padding-left: 2px;
        content: ":"
      }

      .form-control input {
        border: none;
        padding: 0;
        font-weight: bold;
      }

      @media screen and (max-width: 530px) {
        .form-control {
          width: 100%;
        }
      }
    </style>

</head>
<body>
<%@include file="parts/header.jsp" %>
<div class="container">
    <main class="box-wrapper">
        <div class="box-container">
            <div class="box-title">
                Review
            </div>
            <form action="book-flight" method="post">
                <div class="form-control">
                    <label for="fullname">Fullname</label>
                    <input type="text" id="fullname" name="fullname" value="<%= request.getParameter("fullname") %>">
                </div>
                <div class="form-control">
                    <label for="username">Email</label>
                    <input type="email" id="username" name="username" value="<%= request.getParameter("username") %>">
                </div>
                <div class="form-control d-none">
                    <label for="age">Age</label>
                    <input type="number" id="age" name="age" value="<%= request.getParameter("age") %>">
                </div>
                <div class="form-control d-none">
                    <label for="mobile">Mobile</label>
                    <input type="text" id="mobile" name="mobile"  value="<%= request.getParameter("mobile") %>">
                </div>
                <div class="form-control d-none">
                    <label for="identity-type">Identity Type</label>
                    <input type="text" id="identity-type" name="identityType" value="<%= request.getParameter("identityType") %>">
                </div>
                <div class="form-control d-none">
                    <label for="identity-value">Identity Detail</label>
                    <input type="text" id="identity-value" name="identityValue"  value="<%= request.getParameter("identityValue") %>">
                </div>
                <div class="form-control w-100 d-none">
                    <label for="address">Address</label>
                    <input type="text" id="address" name="address"  value="<%= request.getParameter("address") %>">
                </div>
                <div class="form-control d-none">
                    <label for="country">Country</label>
                    <input type="text" id="country" name="country"  value="<%= request.getParameter("country") %>">
                </div>
                <div class="form-control d-none">
                    <label for="flightId">Airline</label>
                    <input type="text" id="flightId" name="flightId" value="<%= flightId %>">
                </div>
                <div class="form-control">
                    <label for="airlineName">Airline</label>
                    <input type="text" id="airlineName" name="airlineName" value="<%= fl.getAirlineName() %>">
                </div>
                <div class="form-control">
                    <label for="flightNo">Flight No.</label>
                    <input type="text" id="flightNo" name="flightNo" value="<%= fl.getFlightNo() %>">
                </div>
                <div class="form-control">
                    <label for="sourceCity">Source City</label>
                    <input type="text" id="sourceCity" name="sourceCity" value="<%= fl.getSourceCity() %>">
                </div>
                <div class="form-control">
                    <label for="destinationCity">Destination City</label>
                    <input type="text" id="destinationCity" name="destinationCity" value="<%= fl.getDestinationCity() %>">
                </div>
                <div class="form-control">
                    <label for="departure">Departure</label>
                    <input type="text" id="departure" name="departure" value="<%= flightDate + ":" + fl.getDeparture() %>">
                </div>
                <div class="form-control">
                    <label for="arrival">Arrival</label>
                    <input type="text" id="arrival" name="arrival" value="<%= flightDate + ":" + fl.getArrival() %>">
                </div>
                <div class="form-control d-none">
                    <label for="flightDate">Flight Date</label>
                    <input type="text" id="flightDate" name="flightDate" value="<%= flightDate %>">
                </div>
                <div class="form-control">
                    <label for="passengers">Passengers</label>
                    <input type="text" id="passengers" name="passengers" value="<%= passengers %>">
                </div>
                <div class="form-control d-none">
                    <label for="amount">Total Amount</label>
                    <input type="text" id="amount" name="amount" value="<%= totalAmount %>">
                </div>
                <div class="form-btns w-100">
                    <button class="btn w-100" type="submit">Pay ₹<%= totalAmount %></button>
                </div>
            </form>
        </div>
    </main>
</div>
<%@ include file="parts/footer.jsp" %>
</body>
</html>
