<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.flyaway.classes.Flight" %>
<%--
  Created by IntelliJ IDEA.
  User: joseph
  Date: 8/12/2022
  Time: 10:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    StaticTexts sts = new StaticTexts();
    ArrayList<Flight> flData = (ArrayList<Flight>) request.getAttribute("flData");
    String flightDate = (String) request.getAttribute("flightDate");
    String sourceCity = (String) request.getAttribute("sourceCity");
    String destinationCity = (String) request.getAttribute("destinationCity");
    String passengers = (String) request.getAttribute("passengers");
    Integer flDataSize = flData.size();
%>
<html>
<head>
    <%@include file="parts/head.jsp"%>
    <title>FlyAway | Search Flight List</title>
</head>
<body>
<%@include file="parts/header.jsp" %>
<div class="container">
    <main class="box-wrapper">
        <div class="box-container w-100" style="max-width: initial;">
            <div class="box-title">
                Flights | Search Results
            </div>
            <div class="box-body">
                <p class="d-flex jc-between">
                    <span><b><%= flDataSize %></b> Flight<%=(flDataSize > 1 ? "s" : "")%> available From <b><%= sourceCity %></b> to <b><%= destinationCity %></b> on <b><%= flightDate %></b></span>
                    <span>No. of passengers: <b><%= passengers %></b></span>
                </p>
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
                    <% if (flDataSize > 0) { %>
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
                            <div class="btn btn-sm" onclick="bookFlight(<%= flight.getId() %>)">Book</div>
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
<script>
  const form = document.createElement('form');
  const flightIdInput = document.createElement('input');
  const flightDateInput = document.createElement('input');
  const passengersInput = document.createElement('input');
  form.action = "/register.jsp";
  form.method = 'post';
  form.hidden = true;
  flightDateInput.value = "<%= flightDate %>";
  flightDateInput.name = "<%= sts.flightDate %>";
  passengersInput.value = <%= passengers %>;
  passengersInput.name = "<%= sts.passengers %>";
  flightIdInput.name = "<%= sts.flightId %>";
  form.appendChild(flightIdInput);
  form.appendChild(flightDateInput);
  form.appendChild(passengersInput);
  document.body.appendChild(form);
  const bookFlight = (flightId) => {
    flightIdInput.value = flightId;
    form.submit();
  }
</script>
</body>
</html>
