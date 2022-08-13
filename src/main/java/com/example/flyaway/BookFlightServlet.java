package com.example.flyaway;

import com.example.flyaway.classes.StaticTexts;
import com.example.flyaway.classes.User;
import com.example.flyaway.classes.UserList;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "BookFlightServlet", value = "/book-flight")
public class BookFlightServlet extends HttpServlet {

    StaticTexts sts = new StaticTexts();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fullname = (String) request.getParameter("fullname");
        String username = (String) request.getParameter("username");
        String age = (String) request.getParameter("age");
        String mobile = (String) request.getParameter("mobile");
        String identityType = (String) request.getParameter("identityType");
        String identityValue = (String) request.getParameter("identityValue");
        String address = (String) request.getParameter("address");
        String country = (String) request.getParameter("country");
        String flightId = (String) request.getParameter("flightId");
        String passengers = (String) request.getParameter("passengers");
        String amount = (String) request.getParameter("amount");

        ArrayList<User> userItm = new UserList().getUserByUsername(username);
        Boolean isUserExist = userItm.size() > 0;
        User user = new User(username, fullname, address, Integer.parseInt(age), mobile, identityType, identityValue, country);
        if (isUserExist) {
            user.setId(userItm.get(0).getId());
            new UserList().updateUser(user);
        } else {
            new UserList().insertUser(user);
            userItm = new UserList().getUserByUsername(user.getUsername());
            user.setId(userItm.get(0).getId());
        }
        request.getSession().setAttribute(sts.pageSuccess, "User Created Successfully");
        response.sendRedirect("/");

    }
}
