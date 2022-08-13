package com.example.flyaway;

import com.example.flyaway.classes.PasswordHash;
import com.example.flyaway.classes.StaticTexts;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        StaticTexts sts = new StaticTexts();
        String username = request.getParameter(sts.username);
        String password = request.getParameter("password");

        try {
            PasswordHash ph = new PasswordHash();
            String hashedPassword = ph.hashPassword(password);

            request.getSession().setAttribute(sts.username, username);

        } catch (Exception e) {
            request.getSession().setAttribute(sts.pageError, e);
        }
//        request.getRequestDispatcher("change-password.jsp").forward(request, response);
        response.sendRedirect(sts.jspBookedFlights);
    }
}
