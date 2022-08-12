package com.example.flyaway.dbutils;

import com.example.flyaway.classes.Flight;

import java.sql.Connection;
import java.sql.Statement;
import java.time.LocalTime;

public class FlightDetailsTable {

    Connection conn;

    public void createTable(Connection conn, String tableName) throws Exception {
        this.conn = conn;
        try {
            Statement stmt = this.conn.createStatement();
            String sql = "CREATE TABLE " + tableName + "(" +
                    "id int primary key auto_increment, " +
                    "airlineName varchar(50), " +
                    "price int, " +
                    "flightNo varchar(50), " +
                    "sourceCity varchar(255), " +
                    "destinationCity varchar(255), " +
                    "departure time, " +
                    "arrival time, " +
                    "distance int, " +
                    "totalSeats int, " +
                    "flightClass enum('economy', 'business')" +
                    ")";
            stmt.executeUpdate(sql);

//          1. Mumbai -> Delhi
            Flight flight1 = new Flight(
                    "Air India", 14350, "AI001", "Mumbai", "Delhi", LocalTime.of(16, 10), LocalTime.of(18, 20), 1137, 40, "business"
            );
            insertData(tableName, flight1);

//          2. Delhi -> Mumbai
            Flight flight2 = new Flight(
                    "Air India", 15400, "AI002", "Delhi", "Mumbai", LocalTime.of(7, 20), LocalTime.of(9, 35), 1137, 40, "business"
            );
            insertData(tableName, flight2);

//          3. Mumbai -> Bengaluru
            Flight flight3 = new Flight(
                    "Air Asia", 3500, "AA003", "Mumbai", "Bengaluru", LocalTime.of(6, 10), LocalTime.of(7, 50), 833, 60, "economy"
            );
            insertData(tableName, flight3);
//          4. Bengaluru -> Mumbai
            Flight flight4 = new Flight(
                    "Air Asia", 3000, "AA004", "Bengaluru", "Mumbai", LocalTime.of(18, 20), LocalTime.of(20, 00), 833, 60, "economy"
            );
            insertData(tableName, flight4);

//          5. Mumbai -> Chennai
            Flight flight5 = new Flight(
                    "Indigo", 4500, "IO005", "Mumbai", "Chennai", LocalTime.of(19, 35), LocalTime.of(21, 30), 1031, 60, "economy"
                    );
            insertData(tableName, flight5);

//          6. Chennai -> Mumbai
            Flight flight6 = new Flight(
                    "Indigo", 4250, "IN006", "Chennai", "Mumbai", LocalTime.of(22, 00), LocalTime.of(23, 55), 1031, 60, "economy"
            );
            insertData(tableName, flight6);

//          7. Delhi -> Bengaluru
            Flight flight7 = new Flight(
                    "Air India", 4800, "AI007", "Delhi", "Bengaluru", LocalTime.of(6, 05), LocalTime.of(8, 55), 1740, 60, "economy"
            );
            insertData(tableName, flight7);

//          8. Bengaluru -> Delhi
            Flight flight8 = new Flight(
                    "Air India", 4600, "AI008", "Bengaluru", "Delhi", LocalTime.of(19, 50), LocalTime.of(22, 40), 1740, 60, "economy"
            );
            insertData(tableName, flight8);

//          9. Delhi -> Chennai
            Flight flight9 = new Flight(
                    "Air India", 5300, "AI009", "Delhi", "Chennai", LocalTime.of(8, 45), LocalTime.of(11, 40), 1760, 60, "economy"
            );
            insertData(tableName, flight9);

//          10. Chennai -> Delhi
            Flight flight10 = new Flight(
                    "Indigo", 5100, "IN010", "Chennai", "Delhi", LocalTime.of(17, 25), LocalTime.of(20, 15), 1760, 60, "economy"
            );
            insertData(tableName, flight10);

//          11. Bengaluru -> Chennai
            Flight flight11 = new Flight(
                    "Indigo", 3600, "IN011", "Bengaluru", "Chennai", LocalTime.of(14, 50), LocalTime.of(15, 55), 284, 60, "economy"
            );
            insertData(tableName, flight11);

//          12. Chennai -> Bengaluru
            Flight flight12 = new Flight(
                    "Indigo", 3450, "IN012", "Chennai", "Bengaluru", LocalTime.of(7, 00), LocalTime.of(8, 05), 284, 60, "economy"
            );
            insertData(tableName, flight12);

        } catch (Exception e) {
            throw new Exception(e);
        }
    }

    public void insertData(
            String tableName,
            Flight flight
    ) throws Exception {
        try {
            Statement stmt = this.conn.createStatement();
            String sql = "INSERT INTO " + tableName +
                    "(airlineName, price, flightNo, sourceCity, destinationCity, departure, arrival, distance, totalSeats, flightClass) " +
                    "VALUES('" +
                    flight.getAirlineName() + "', '" + flight.getPrice() + "', '" +
                    flight.getFlightNo() + "', '" + flight.getSourceCity() + "', '" +
                    flight.getDestinationCity() + "', '" + flight.getDeparture() + "', '" +
                    flight.getArrival() + "', '" + flight.getDistance() + "', '" +
                    flight.getTotalSeats() + "', '" + flight.getFlightClass() + "')";
            stmt.executeUpdate(sql);
        } catch (Exception e) {
            throw new Exception(e);
        }
    }
}
