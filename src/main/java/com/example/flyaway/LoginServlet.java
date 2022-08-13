package com.example.flyaway;

import com.example.flyaway.classes.PasswordHash;

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
        String username = request.getParameter("username");
        String password = request.getParameter("password");
//        PrintWriter pw = response.getWriter();
//        pw.println("Username: " + username);
//        pw.println("Password: " + password);
        try {
            PasswordHash ph = new PasswordHash();
            String hashedPassword = ph.hashPassword(password);
//            pw.println("HashedPassword: " + hashedPassword);
//            pw.println("Username: " + username);

            request.setAttribute("username", username);
            request.getRequestDispatcher("change-password.jsp").forward(request, response);
        } catch (Exception e) {
//            pw.println(e);
            request.setAttribute("pageError", e);
        }
//       response.sendRedirect("change-password.jsp");
    }
}
