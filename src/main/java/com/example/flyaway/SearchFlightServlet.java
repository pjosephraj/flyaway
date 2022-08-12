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
        PrintWriter out = response.getWriter();
        for(Flight itm: fl) {
            out.println("AirlineName: " + itm.getAirlineName());
            out.println("Flight No.: " + itm.getFlightNo());
            out.println("Price: " + itm.getPrice());
            out.println("Source City: " + itm.getSourceCity());
            out.println("Destination City: " + itm.getDestinationCity());
            out.println("Departure: " + itm.getDeparture());
            out.println("Arrival: " + itm.getArrival());
        }
        out.close();
    }
}
