<%@ page import="com.cm.trip_app.model.User" %><%--
  Created by IntelliJ IDEA.
  User: chandumanga
  Date: 02/02/25
  Time: 14:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Bookings</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./resources/css/style.css" />
    <style>
        .bd {
            background-color: #f8f9fa;
        }
        .navbar {
            background-color: #343a40;
        }
        .navbar-brand, .navbar-nav .nav-link {
            color: #ffffff !important;
        }
        .container {
            margin-top: 20px;
        }
        .card {
            border: none;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .card-header {
            background-color: #28a745;
            color: #ffffff;
            border-radius: 10px 10px 0 0;
        }
        .table {
            margin-top: 20px;
        }
        .btn-success {
            background-color: #28a745;
            border: none;
        }
        .btn-success:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
<!-- Navigation Bar -->
<!-- Bookings Table -->
<div class="container bd">
    <div class="card">
        <div class="card-header text-center">
            <h3>My Bookings</h3>
        </div>
        <div class="card-body">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>Package Name</th>
                    <th>Booking Date</th>
                    <th>Trip Date</th>
                    <th>Status</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="booking" items="${bookings}">
                    <tr>
                        <td>${booking.packageName}</td>
                        <td>${booking.bookingDate}</td>
                        <td>${booking.tripDate}</td>
                        <td>${booking.status}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <a href="BookingPage.jsp" class="btn btn-success btn-block">Book Another Trip</a>
            <button type="button" class="btn btn-secondary btn-block" onclick="window.location.href='index.jsp'">
                <i class="fas fa-times"></i> Cancel
            </button>
        </div>
    </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="./resources/js/script.js"></script>
</body>
</html>
