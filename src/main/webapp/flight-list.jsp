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
    StaticTexts sts = new StaticTexts();
    String username = (String) session.getAttribute(sts.username);
    ArrayList<Flight> flData = new ArrayList<>();
    if( username == null || !username.equalsIgnoreCase(sts.adminUsername)) {
        request.getSession().setAttribute(sts.pageError, "Please login as Admin to access Flight List");
        response.sendRedirect( sts.jspLogin);
     } else {
        FlightList fl = new FlightList();
        flData = fl.getFlights(username);
    }
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <%@include file="parts/head.jsp"%>
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
<%@ include file="parts/footer.jsp" %>
</body>
</html>
