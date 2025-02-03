<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Trip App</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
        }
        .about-section {
            padding: 50px 0;
            background-color: #ffffff;
        }
        .about-header {
            text-align: center;
            margin-bottom: 30px;
        }
        .about-content {
            text-align: center;
            font-size: 18px;
        }
        .about-content p {
            font-size: 16px;
            line-height: 1.6;
        }
        .btn-custom {
            background-color: #007bff;
            border: none;
            color: white;
            font-size: 18px;
        }
        .btn-custom:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="about-section">
        <div class="about-header">
            <h2>About Us</h2>
            <p class="text-muted">We are dedicated to providing the best travel experiences for you!</p>
        </div>

        <div class="about-content">
            <h4>Our Mission</h4>
            <p>
                At Trip App, our mission is to make travel easy, accessible, and enjoyable for everyone.
                We believe in providing high-quality services that ensure a seamless and unforgettable experience.
            </p>

            <h4>Our Vision</h4>
            <p>
                Our vision is to be the leading platform that connects travelers with the best trips, packages, and services.
                We strive to innovate and exceed expectations to create memorable travel experiences.
            </p>

            <h4>Our Values</h4>
            <p>
                Integrity, commitment to customer satisfaction, and continuous improvement form the core of our values.
                We are passionate about creating value for our customers, partners, and communities.
            </p>

            <a href="index.jsp" class="btn btn-custom mt-4">Explore More</a>
        </div>
    </div>
</div>

<!-- Bootstrap JS (Optional) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
