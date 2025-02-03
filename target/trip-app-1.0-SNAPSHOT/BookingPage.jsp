<%@ page import="com.cm.trip_app.model.User" %><%--
  Created by IntelliJ IDEA.
  User: chandumanga
  Date: 02/02/25
  Time: 14:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Trip App - Book Trip</title>
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
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
    .card {
      border: none;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    .card-header {
      background-color: #007bff;
      color: #ffffff;
      border-radius: 10px 10px 0 0;
    }
    .btn-primary {
      background-color: #007bff;
      border: none;
    }
    .btn-primary:hover {
      background-color: #0056b3;
    }
  </style>
</head>
<body>
<!-- Navigation Bar -->
<!-- Booking Form -->
<div class="container bd mt-4">
  <div class="row justify-content-center mt-5">
    <div class="col-md-6">
      <div class="card">
        <div class="card-header text-center">
          <h3><i class="fas fa-calendar-alt"></i> Book Your Trip</h3>
        </div>
        <div class="card-body">
          <form action="book" method="post">
            <div class="form-group">
              <label for="package"><i class="fas fa-suitcase"></i> Package</label>
              <select class="form-control" id="package" name="package" required>
                <option value="Mount Kailash">Mount Kailash</option>
                <option value="Other Pilgrimage">Other Pilgrimage</option>
              </select>
            </div>
            <div class="form-group">
              <label for="tripDate"><i class="fas fa-calendar-day"></i> Trip Date</label>
              <input type="date" class="form-control" id="tripDate" name="tripDate" required>
            </div>
            <button type="submit" class="btn btn-primary btn-block"><i class="fas fa-book"></i> Book Now</button>
            <button type="button" class="btn btn-secondary btn-block" onclick="window.location.href='index.jsp'">
              <i class="fas fa-times"></i> Back
            </button>          </form>
        </div>
      </div>
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