<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.flyaway.classes.Flight" %>
<%@ page import="com.example.flyaway.classes.FlightList" %>
<%--
  Created by IntelliJ IDEA.
  User: joseph
  Date: 8/12/2022
  Time: 5:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%
    String username = (String) request.getAttribute("username");

    if( username == null) {
        response.sendRedirect("login.jsp?errmsg=fl");
     }
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    FlightList fl = new FlightList();
    ArrayList<Flight> flData = fl.getFlights("admin@flyaway.com");
%>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>FlyAway | Flight List</title>
</head>
<body>
<%@include file="parts/header.jsp"%>
<div class="container">
    <main class="box-wrapper">
        <div class="box-container w-100" style="max-width: initial;">
            <div class="box-title">
                Flights List
            </div>
            <div class="box-body">
                <p>Total Flights: <%= flData.size() %></p>
            </div>
            <div class="box-table">
                <table>
                    <thead>
                    <tr>
                        <th>Airline</th>
                        <th>Flight No.</th>
                        <th>Source</th>
                        <th>Destination</th>
                        <th>Departure</th>
                        <th>Arrival</th>
                        <th>Price</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <% if (flData.size() > 0) { %>
                    <% for (Flight flight : flData) { %>
                    <tr>
                        <td>
                            <%= flight.getAirlineName() %>
                        </td>
                        <td>
                            <%= flight.getFlightNo() %>
                        </td>
                        <td>
                            <%= flight.getSourceCity() %>
                        </td>
                        <td>
                            <%= flight.getDestinationCity() %>
                        </td>
                        <td>
                            <%= flight.getDeparture() %>
                        </td>
                        <td>
                            <%= flight.getArrival() %>
                        </td>
                        <td>
                            ₹ <%= flight.getPrice() %>
                        </td>
                        <td>
                            <div class="btn btn-sm">Book</div>
                        </td>
                    </tr>
                    <% }%> <!-- End For-->
                    <% } else {%>
                    <tr>
                        <td class="ta-c" colspan="8"> No Flights available</td>
                    </tr>
                    <% }%><!-- End If -->
                    </tbody>
                </table>
            </div>
        </div>
    </main>
</div>
<script src="assets/scripts/init-main.js"></script>
</body>
</html>
