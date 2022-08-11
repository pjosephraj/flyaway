package com.example.flyaway;

import com.example.flyaway.classes.DbConnection;
import com.example.flyaway.dbutils.BookingTable;
import com.example.flyaway.dbutils.FlightDetailsTable;
import com.example.flyaway.dbutils.UserTable;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

@WebServlet(name = "IndexServlet", value = "/fa-db-init")
public class IndexServlet extends HttpServlet {
    String userTableName = "fa_user";
    String flightTableName = "fa_flight";
    String bookingTableName = "fa_booking";
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        try {
//            Class.forName("com.mysql.cj.jdbc.Driver");
//            Connection conn = DriverManager.getConnection(jdbcURL, username, password);
            Connection conn = new DbConnection().connect();
//             User Table
            UserTable ut = new UserTable();
            ut.createTable(conn, userTableName);

//            Flights Details Table
            FlightDetailsTable fdt = new FlightDetailsTable();
            fdt.createTable(conn, flightTableName);

//            Booking Table
            BookingTable bt = new BookingTable();
            bt.userTableName = userTableName;
            bt.flightTableName = flightTableName;
            bt.createTable(conn, bookingTableName);

            out.println("Database Success");
        } catch (Exception e) {
            out.println("Error: ");
            out.println(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
