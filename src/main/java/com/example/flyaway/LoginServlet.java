package com.example.flyaway;

import com.example.flyaway.classes.PasswordHash;
import com.example.flyaway.classes.StaticTexts;
import com.example.flyaway.classes.UserList;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        StaticTexts sts = new StaticTexts();
        String username = request.getParameter(sts.username);
        String password = request.getParameter(sts.password);

        try {
            PasswordHash ph = new PasswordHash();
            String hashedPassword = ph.hashPassword(password);
            String userPassword = new UserList().getPassword(username);
            if(hashedPassword.equals(userPassword)) {
                request.getSession().setAttribute(sts.username, username);
                response.sendRedirect(sts.jspBookedFlights);
            } else {
                request.getSession().setAttribute(sts.pageError, "Username/Password is wrong!");
                response.sendRedirect(sts.jspLogin);
            }
        } catch (Exception e) {
            request.getSession().setAttribute(sts.pageError, e);
            response.sendRedirect(sts.jspLogin);
        }

    }
}
