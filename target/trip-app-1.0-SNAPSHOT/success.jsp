<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Booking Successful</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
        }
        .success-container {
            max-width: 600px;
            margin: 50px auto;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .btn-custom {
            width: 100%;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="success-container">
        <img src="https://cdn-icons-png.flaticon.com/512/148/148767.png" alt="Success" width="100">
        <h2 class="text-success mt-3">Booking Confirmed!</h2>
        <p>Your trip has been successfully booked. We look forward to serving you.</p>

        <!-- Display the trip details -->
        <c:if test="${not empty booking}">
            <div class="alert alert-info">
                <strong>Trip Details:</strong><br>
                Package Name: ${booking.packageName} <br>
                Trip Date: <c:out value="${booking.tripDate}" />
            </div>
        </c:if>

        <a href="index.jsp" class="btn btn-primary btn-custom">Go to Homepage</a>
        <a href="viewBookings.jsp" class="btn btn-success btn-custom mt-2">View My Bookings</a>
    </div>
</div>

<!-- Bootstrap JS (Optional) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
