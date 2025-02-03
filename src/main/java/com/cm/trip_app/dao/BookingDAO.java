package com.cm.trip_app.dao;

import com.cm.trip_app.model.Booking;
import com.cm.trip_app.util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookingDAO {
    public boolean bookTrip(Booking booking) {
        String query = "INSERT INTO bookings (user_id, package_name, booking_date, trip_date) VALUES (?, ?, ?, ?)";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setInt(1, booking.getUserId());
            ps.setString(2, booking.getPackageName());
            ps.setDate(3, new java.sql.Date(booking.getBookingDate().getTime()));
            ps.setDate(4, new java.sql.Date(booking.getTripDate().getTime()));
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public List<Booking> getUserBookings(int userId) {
        System.out.println("userId " + userId);
        List<Booking> bookings = new ArrayList<>();
        String query = "SELECT * FROM bookings WHERE user_id = ?";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(query);
        ) {
            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                System.out.println("Inside while " + rs.getString(3));
                Booking booking = new Booking();
                booking.setId(rs.getInt("id"));
                booking.setPackageName(rs.getString("package_name"));
                booking.setBookingDate(rs.getDate("booking_date"));
                booking.setTripDate(rs.getDate("trip_date"));
                booking.setStatus(rs.getString("status"));
                bookings.add(booking);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bookings;
    }

}