package com.example.flyaway;

import com.example.flyaway.classes.Flight;
import com.example.flyaway.classes.FlightList;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

@WebServlet(name = "SearchFlightServlet", value = "/SearchFlightServlet")
public class SearchFlightServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String flightDate = request.getParameter("flightDate");
        String sourceCity = request.getParameter("sourceCity");
        String destinationCity = request.getParameter("destinationCity");
        String passengers = request.getParameter("passengers");
        ArrayList<Flight> fl = new FlightList().getSearchFlights(sourceCity, destinationCity);
        request.setAttribute("flData", fl);
        request.setAttribute("flightDate", flightDate);
        request.setAttribute("sourceCity", sourceCity);
        request.setAttribute("destinationCity", destinationCity);
        request.setAttribute("passengers", passengers);
        request.getRequestDispatcher("search-flight-list.jsp").forward(request, response);
    }
}
