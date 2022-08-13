<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.flyaway.classes.*" %><%--
  Created by IntelliJ IDEA.
  User: joseph
  Date: 8/13/2022
  Time: 1:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    StaticTexts sts = new StaticTexts();
    String username = (String) session.getAttribute(sts.username);
    ArrayList<BookFlight> flData = new ArrayList<>();
    if( username == null) {
        request.getSession().setAttribute("pageError", "Please login as Admin to access Booked Flights");
        response.sendRedirect( sts.jspLogin + "?errmsg=fl");
    } else {
        BookFlight fl = new BookFlight();
        flData = fl.getAll();
    }
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>FlyAway | Booked Flights List</title>
</head>
<body>
<%@include file="parts/header.jsp"%>
<div class="container">
    <main class="box-wrapper">
        <div class="box-container w-100" style="max-width: initial;">
            <div class="box-title">
                Booked Flights List
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
                        <th>Passengers</th>
                        <th>Amount</th>
                    </tr>
                    </thead>
                    <tbody>
                    <% if (flData.size() > 0) { %>
                    <% for (BookFlight flight : flData) { %>
                    <tr>
                        <td>
                            <%= flight.getAirlineName() %>
                        </td>
                        <td>
                            <%= flight.getFlightNo() %>
                        </td>
                        <td>
                            <%= flight.getSource() %>
                        </td>
                        <td>
                            <%= flight.getDestination() %>
                        </td>
                        <td>
                            <%= flight.getDeparture() %>
                        </td>
                        <td>
                            <%= flight.getPassengers() + " (" + flight.getUsername() + ")" %>
                        </td>
                        <td>
                            ₹ <%= flight.getAmount() %>
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
