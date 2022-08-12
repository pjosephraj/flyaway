<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.flyaway.classes.SearchFlights" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<%


%>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FlyAway Booking</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">
</head>

<body>
<%@include file="parts/header.jsp"%>
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
    <script src="assets/scripts/init-main.js"></script>
    <script>
        const form = document.querySelector('form');

    </script>
</body>

</html>