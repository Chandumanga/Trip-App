package com.cm.trip_app.controllers;

import com.cm.trip_app.dao.UserDAO;
import com.cm.trip_app.model.User;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Validate input: username and password are required
        if (username == null || username.trim().isEmpty() || password == null || password.trim().isEmpty()) {
            response.sendRedirect("login.jsp?error=2"); // Invalid input error (empty fields)
            return;
        }

        UserDAO userDAO = new UserDAO();
        User user = userDAO.loginUser(username, password);

        // Check if the user is found in the database
        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            session.setMaxInactiveInterval(30 * 60); // Session timeout set to 30 minutes
            response.sendRedirect("index.jsp"); // Redirect to home page after successful login
        } else {
            response.sendRedirect("login.jsp?error=1"); // Invalid credentials error
        }
    }
}
