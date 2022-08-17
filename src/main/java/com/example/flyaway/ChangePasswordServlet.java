package com.example.flyaway;

import com.example.flyaway.classes.StaticTexts;
import com.example.flyaway.classes.UserList;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ChangePasswordServlet", value = "/change-password")
public class ChangePasswordServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        StaticTexts sts = new StaticTexts();
        String username = request.getParameter(sts.username);
        String password = request.getParameter(sts.password);
        Boolean changePassword = new UserList().changePassword(username, password);
        if(changePassword) {
            request.getSession().setAttribute(sts.pageSuccess, "Password updated, Please login with new Password!");
            response.sendRedirect("/login.jsp");
        } else {
            request.getSession().setAttribute(sts.pageError, "Some thing went wrong, Please try again!");
            response.sendRedirect("/change-password.jsp");
        }

    }
}
