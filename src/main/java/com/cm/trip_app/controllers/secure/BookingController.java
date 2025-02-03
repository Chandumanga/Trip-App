package com.cm.trip_app.controllers.secure;

import com.cm.trip_app.dao.BookingDAO;
import com.cm.trip_app.model.Booking;
import com.cm.trip_app.model.User;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/book")
public class BookingController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("user") == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        User user = (User) session.getAttribute("user");
        String packageName = request.getParameter("package");
        String tripDateStr = request.getParameter("tripDate");

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date tripDate = null;
        try {
            tripDate = sdf.parse(tripDateStr);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        Booking booking = new Booking();
        booking.setUserId(user.getId());
        booking.setPackageName(packageName);
        booking.setBookingDate(new Date());
        booking.setTripDate(tripDate);

        BookingDAO bookingDAO = new BookingDAO();
        if (bookingDAO.bookTrip(booking)) {
            request.setAttribute("booking",booking);
            response.sendRedirect("./success.jsp");
        } else {
            request.setAttribute("errorMessage", "Unable to process booking at the moment.");
            response.sendRedirect("./booking-error.jsp");
        }
    }
}