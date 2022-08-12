<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.flyaway.classes.SearchFlights" %>
<%@ page import="com.example.flyaway.classes.FlightList" %>
<%@ page import="com.example.flyaway.classes.Flight" %>
<%@ page import="com.example.flyaway.classes.AdminUsername" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<%
    ArrayList<Flight> fldata = new FlightList().getFlights(new AdminUsername().value);
    ArrayList<String> sourceCities = new SearchFlights().getSourceCities(fldata);
    ArrayList<String> destinationCities = new SearchFlights().getDestinationCities(fldata);
%>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FlyAway | Flight Search</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">
</head>

<body>
<%@include file="parts/header.jsp" %>
<div class="container">
    <main class="box-wrapper">
        <div class="box-container">
            <div class="box-title">
                Search Flights
            </div>
            <form action="SearchFlightServlet" method="post">
                <div class="form-control">
                    <label class="required" for="date">Date</label>
                    <input type="date" name="flightDate" id="date" placeholder="Select Date" name="date">
                </div>
                <div class="form-control">
                    <label class="required" for="source">Source</label>
                    <select name="sourceCity" id="source">
                        <% for (String itm : sourceCities) { %>
                        <option value="<%= itm %>"><%= itm %>
                        </option>
                        <% } %>
                    </select>
                </div>
                <div class="form-control">
                    <label class="required" for="destination">Destination</label>
                    <select name="destinationCity" id="destination">
                        <% for (String itm : destinationCities) { %>
                        <option value="<%= itm %>"><%= itm %>
                        </option>
                        <% } %>
                    </select>
                </div>
                <div class="form-control">
                    <label class="required" for="passengers">No. of Passengers</label>
                    <select name="passengers" id="passengers">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                    </select>
                </div>
                <div class="form-message form-message--error">
                    Source and Destination should not be same city!
                </div>
                <div class="form-btns" style="margin-top: 2rem;">
                    <button class="btn w-100" type="submit">Submit</button>
                </div>
            </form>
        </div>
    </main>
</div>

<script src="assets/scripts/init-main.js"></script>
<script>
  const form = document.querySelector('form');
  const dateInput = form.querySelector('#date');
  const sourceCity = form.querySelector('#source');
  const destinationCity = form.querySelector('#destination');
  const submitBtn = form.querySelector('.btn[type="submit"]');
  const formMsg = form.querySelector('.form-message');
  submitBtn.classList.add('disabled');
  const date = new Date();
  const month = date.getMonth() + 1;
  const minDate = date.getFullYear() + '-' + (month > 9 ? month : ('0' + month)) + '-' + (date.getDate() + 1);
  dateInput.setAttribute('min', minDate);

  form.addEventListener('change', () => {
    if (sourceCity.value === destinationCity.value || !dateInput.value) {
      submitBtn.classList.add('disabled');
    } else {
      submitBtn.classList.remove('disabled');
    }
    if (sourceCity.value === destinationCity.value) {
      formMsg.classList.add('active');
    } else {
      formMsg.classList.remove('active');
    }
  });


</script>
</body>

</html>