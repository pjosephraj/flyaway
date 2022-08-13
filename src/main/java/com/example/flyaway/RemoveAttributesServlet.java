package com.example.flyaway;

import com.example.flyaway.classes.StaticTexts;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RemoveAttributesServlet", value = "/remove-attributes")
public class RemoveAttributesServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        StaticTexts sts = new StaticTexts();
        request.getSession().removeAttribute(sts.pageError);
        request.getSession().removeAttribute(sts.pageSuccess);
    }
}
