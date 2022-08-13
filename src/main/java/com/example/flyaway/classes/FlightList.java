package com.example.flyaway.classes;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.time.LocalTime;
import java.util.ArrayList;

public class FlightList {
    String tableName = new TableName().flight;
    String adminUsername = new StaticTexts().adminUsername;
    public ArrayList<Flight> getFlights(String username) {
        ArrayList<Flight> data = new ArrayList();
        if(username.equalsIgnoreCase(adminUsername)) {
            try {
                Connection conn = new DbConnection().connect();
                Statement stmt = conn.createStatement();
                String sql = "SELECT * from " + this.tableName;
                ResultSet rs = stmt.executeQuery(sql);
                while (rs.next()) {
                    Flight flight = new Flight(
                            rs.getString("airlineName"),
                            rs.getInt("price"),
                            rs.getString("flightNo"),
                            rs.getString("sourceCity"),
                            rs.getString("destinationCity"),
                            rs.getObject("departure", LocalTime.class),
                            rs.getObject("arrival", LocalTime.class),
                            rs.getInt("distance"),
                            rs.getInt("totalSeats"),
                            rs.getString("flightClass")
                    );
                    flight.id = rs.getInt("id");
                    data.add(flight);
                }
                conn.close();
                return data;
            } catch (Exception e) {
                System.out.println(e);
                return data;
            }
        } else {
            return data;
        }
    }

    public ArrayList<Flight> getSearchFlights(String sourceCity, String destinationCity) {
        ArrayList<Flight> data = new ArrayList();
        try {
            Connection conn = new DbConnection().connect();
            Statement stmt = conn.createStatement();
            String sql = "SELECT * from " + this.tableName +
                    " WHERE sourceCity='" + sourceCity + "' && destinationCity='" + destinationCity + "'";
            ResultSet rs = stmt.executeQuery(sql);
            while(rs.next()) {
                Flight flight = new Flight(
                        rs.getString("airlineName"),
                        rs.getInt("price"),
                        rs.getString("flightNo"),
                        rs.getString("sourceCity"),
                        rs.getString("destinationCity"),
                        rs.getObject("departure", LocalTime.class),
                        rs.getObject("arrival", LocalTime.class),
                        rs.getInt("distance"),
                        rs.getInt("totalSeats"),
                        rs.getString("flightClass")
                );
                flight.id = rs.getInt("id");
                data.add(flight);
            }
            conn.close();
            return data;
        } catch (Exception e) {
            System.out.println(e);
            return data;
        }
    }

}
