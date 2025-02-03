<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Booking Failed</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
        }
        .error-container {
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
    <div class="error-container">
        <img src="https://cdn-icons-png.flaticon.com/512/25/25210.png" alt="Error" width="100">
        <h2 class="text-danger mt-3">Oops! Something Went Wrong</h2>
        <p>There was an issue with your booking. Please try again later.</p>

        <div class="alert alert-danger">
            <strong>Error Details:</strong><br>
            <!-- Using EL to display error message -->
            <c:out value="${errorMessage}" />
        </div>

        <a href="index.jsp" class="btn btn-primary btn-custom">Go to Homepage</a>
        <a href="BookingPage.jsp.jsp" class="btn btn-danger btn-custom mt-2">Try Again</a>
    </div>
</div>

<!-- Bootstrap JS (Optional) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
