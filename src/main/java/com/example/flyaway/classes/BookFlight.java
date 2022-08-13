package com.example.flyaway.classes;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class BookFlight {

    String tableName = new TableName().booking;
    public Integer getFlightId() {
        return flightId;
    }

    public void setFlightId(Integer flightId) {
        this.flightId = flightId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getPassengers() {
        return passengers;
    }

    public void setPassengers(String passengers) {
        this.passengers = passengers;
    }

    public String getFlightDate() {
        return flightDate;
    }

    public void setFlightDate(String flightDate) {
        this.flightDate = flightDate;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    Integer flightId;
    Integer userId;
    String passengers;

    String flightDate;

    String amount;

    public String getAirlineName() {
        return airlineName;
    }

    public void setAirlineName(String airlineName) {
        this.airlineName = airlineName;
    }

    public String getFlightNo() {
        return flightNo;
    }

    public void setFlightNo(String flightNo) {
        this.flightNo = flightNo;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    public String getDeparture() {
        return departure;
    }

    public void setDeparture(String departure) {
        this.departure = departure;
    }

    String airlineName;
    String flightNo;
    String username;
    String source;
    String destination;
    String departure;


    public void createBookingFlight() {
        try {
            Connection conn = new DbConnection().connect();
            Statement stmt = conn.createStatement();
            String sql = "INSERT INTO "+ this.tableName +"(userId, flightId, flightDate, passengers, amount) " +
                    "values(" + this.userId + ", " + this.flightId +
                    ", '" + this.flightDate + "', "+ this.passengers +
                    ", "+ this.amount +");";
            stmt.executeUpdate(sql);
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public ArrayList<BookFlight> getAll() {
        ArrayList<BookFlight> data = new ArrayList();
        try {
            Connection conn = new DbConnection().connect();
            Statement stmt = conn.createStatement();
//            String sql = "select * from " + this.tableName +";";
            String sql = "SELECT username, airlineName, flightNo, sourceCity, destinationCity, departure, flightDate, passengers, amount" +
                    " FROM fa_booking" +
                    " INNER JOIN fa_user ON fa_booking.userId=fa_user.id" +
                    " INNER JOIN fa_flight ON fa_booking.flightId=fa_flight.id;";
            ResultSet rs = stmt.executeQuery(sql);
            while(rs.next()) {
                BookFlight bookFlight = new BookFlight();
//                bookFlight.setFlightId(rs.getInt("flightId"));
//                bookFlight.setUserId(rs.getInt("userId"));
                bookFlight.setFlightDate(rs.getString("flightDate"));
                bookFlight.setPassengers(rs.getString("passengers"));
                bookFlight.setAmount(rs.getString("amount"));
                bookFlight.setUsername(rs.getString("username"));
                bookFlight.setAirlineName(rs.getString("airlineName"));
                bookFlight.setFlightNo(rs.getString("flightNo"));
                bookFlight.setSource(rs.getString("sourceCity"));
                bookFlight.setDestination(rs.getString("destinationCity"));
                bookFlight.setDeparture(rs.getString("departure"));
                data.add(bookFlight);
            }
            return data;
        } catch (Exception e){
            System.out.println(e);
            return data;
        }
    }
}
