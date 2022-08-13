<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.flyaway.classes.SearchFlights" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<%


%>
<head>
    <%@include file="parts/head.jsp"%>
    <title>FlyAway Booking</title>
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
                <p>Flight From Mumbai to New York on 12/08/23</p>
            </div>
            <div class="box-table">
                <table>
                    <thead>
                    <tr>
                        <th>Flight</th>
                        <th>Source</th>
                        <th>Destination</th>
                        <th>Date</th>
                        <th>Price</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>Air India</td>
                        <td>India</td>
                        <td>USA</td>
                        <td>2022-08-22</td>
                        <td>40000</td>
                        <td>
                            <div class="btn btn-sm">Book</div>
                        </td>
                    </tr>
                    <tr>
                        <td>Air India</td>
                        <td>India</td>
                        <td>USA</td>
                        <td>2022-08-22</td>
                        <td>40000</td>
                        <td>
                            <div class="btn btn-sm">Book</div>
                        </td>
                    </tr>
                    <tr>
                        <td>Air India</td>
                        <td>India</td>
                        <td>USA</td>
                        <td>2022-08-22</td>
                        <td>40000</td>
                        <td>
                            <div class="btn btn-sm">Book</div>
                        </td>
                    </tr>
                    <tr>
                        <td>Air India</td>
                        <td>India</td>
                        <td>USA</td>
                        <td>2022-08-22</td>
                        <td>40000</td>
                        <td>
                            <div class="btn btn-sm">Book</div>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </main>
</div>
<%@ include file="parts/footer.jsp" %>
<script>
  const form = document.querySelector('form');

</script>
</body>

</html>