package com.cm.trip_app.controllers.secure;

import com.cm.trip_app.dao.BookingDAO;
import com.cm.trip_app.model.Booking;
import com.cm.trip_app.model.User;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/viewBookings")
public class ViewBookingsController extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("user") == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        User user = (User) session.getAttribute("user");
        BookingDAO bookingDAO = new BookingDAO();
        List<Booking> bookings = bookingDAO.getUserBookings(user.getId());

        request.setAttribute("bookings", bookings);
        request.getRequestDispatcher("./viewBookings.jsp").forward(request, response);
    }
}