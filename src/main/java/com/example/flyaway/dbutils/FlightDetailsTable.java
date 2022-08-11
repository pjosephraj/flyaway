package com.example.flyaway.dbutils;

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
            String airlineName = "Air India";
            Integer price = 14350;
            String flightNo = "AI001";
            String sourceCity = "Mumbai";
            String destinationCity = "Delhi";
            LocalTime departure = LocalTime.of(16, 10);
            LocalTime arrival = LocalTime.of(18, 20);
            Integer distance = 1137;
            Integer totalSeats = 40;
            String flightClass = "business";
            insertData(tableName, airlineName, price, flightNo, sourceCity, destinationCity, departure, arrival, distance, totalSeats, flightClass);

//          2. Delhi -> Mumbai
            airlineName = "Air India";
            price = 15400;
            flightNo = "AI002";
            sourceCity = "Delhi";
            destinationCity = "Mumbai";
            departure = LocalTime.of(7, 20);
            arrival = LocalTime.of(9, 35);
            distance = 1137;
            totalSeats = 40;
            flightClass = "business";
            insertData(tableName, airlineName, price, flightNo, sourceCity, destinationCity, departure, arrival, distance, totalSeats, flightClass);

//          3. Mumbai -> Bengaluru
            airlineName = "Air Asia";
            price = 3500;
            flightNo = "AA003";
            sourceCity = "Mumbai";
            destinationCity = "Bengaluru";
            departure = LocalTime.of(6, 10);
            arrival = LocalTime.of(7, 50);
            distance = 833;
            totalSeats = 60;
            flightClass = "economy";
            insertData(tableName, airlineName, price, flightNo, sourceCity, destinationCity, departure, arrival, distance, totalSeats, flightClass);

//          4. Bengaluru -> Mumbai
            airlineName = "Air Asia";
            price = 3000;
            flightNo = "AA004";
            sourceCity = "Bengaluru";
            destinationCity = "Mumbai";
            departure = LocalTime.of(18, 20);
            arrival = LocalTime.of(20, 00);
            distance = 833;
            totalSeats = 60;
            flightClass = "economy";
            insertData(tableName, airlineName, price, flightNo, sourceCity, destinationCity, departure, arrival, distance, totalSeats, flightClass);

//          5. Mumbai -> Chennai
            airlineName = "Indigo";
            price = 4500;
            flightNo = "IO005";
            sourceCity = "Mumbai";
            destinationCity = "Chennai";
            departure = LocalTime.of(19, 35);
            arrival = LocalTime.of(21, 30);
            distance = 1031;
            totalSeats = 60;
            flightClass = "economy";
            insertData(tableName, airlineName, price, flightNo, sourceCity, destinationCity, departure, arrival, distance, totalSeats, flightClass);

//          6. Chennai -> Mumbai
            airlineName = "Indigo";
            price = 4250;
            flightNo = "IN006";
            sourceCity = "Chennai";
            destinationCity = "Mumbai";
            departure = LocalTime.of(22, 00);
            arrival = LocalTime.of(23, 55);
            distance = 1031;
            totalSeats = 60;
            flightClass = "economy";
            insertData(tableName, airlineName, price, flightNo, sourceCity, destinationCity, departure, arrival, distance, totalSeats, flightClass);

//          7. Delhi -> Bengaluru
            airlineName = "Air India";
            price = 4800;
            flightNo = "AI007";
            sourceCity = "Delhi";
            destinationCity = "Bengaluru";
            departure = LocalTime.of(6, 05);
            arrival = LocalTime.of(8, 55);
            distance = 1740;
            totalSeats = 60;
            flightClass = "economy";
            insertData(tableName, airlineName, price, flightNo, sourceCity, destinationCity, departure, arrival, distance, totalSeats, flightClass);

//          8. Bengaluru -> Delhi
            airlineName = "Air India";
            price = 4600;
            flightNo = "AI008";
            sourceCity = "Bengaluru";
            destinationCity = "Delhi";
            departure = LocalTime.of(19, 50);
            arrival = LocalTime.of(22, 40);
            distance = 1740;
            totalSeats = 60;
            flightClass = "economy";
            insertData(tableName, airlineName, price, flightNo, sourceCity, destinationCity, departure, arrival, distance, totalSeats, flightClass);

//          9. Delhi -> Chennai
            airlineName = "Air India";
            price = 5300;
            flightNo = "AI009";
            sourceCity = "Delhi";
            destinationCity = "Chennai";
            departure = LocalTime.of(8, 45);
            arrival = LocalTime.of(11, 40);
            distance = 1760;
            totalSeats = 60;
            flightClass = "economy";
            insertData(tableName, airlineName, price, flightNo, sourceCity, destinationCity, departure, arrival, distance, totalSeats, flightClass);

//          10. Chennai -> Delhi
            airlineName = "Indigo";
            price = 5100;
            flightNo = "IN010";
            sourceCity = "Chennai";
            destinationCity = "Delhi";
            departure = LocalTime.of(17, 25);
            arrival = LocalTime.of(20, 15);
            distance = 1760;
            totalSeats = 60;
            flightClass = "economy";
            insertData(tableName, airlineName, price, flightNo, sourceCity, destinationCity, departure, arrival, distance, totalSeats, flightClass);

//          11. Bengaluru -> Chennai
            airlineName = "Indigo";
            price = 3600;
            flightNo = "IN011";
            sourceCity = "Bengaluru";
            destinationCity = "Chennai";
            departure = LocalTime.of(14, 50);
            arrival = LocalTime.of(15, 55);
            distance = 284;
            totalSeats = 60;
            flightClass = "economy";
            insertData(tableName, airlineName, price, flightNo, sourceCity, destinationCity, departure, arrival, distance, totalSeats, flightClass);

//          12. Chennai -> Bengaluru
            airlineName = "Indigo";
            price = 3450;
            flightNo = "IN012";
            sourceCity = "Chennai";
            destinationCity = "Bengaluru";
            departure = LocalTime.of(7, 00);
            arrival = LocalTime.of(8, 05);
            distance = 284;
            totalSeats = 60;
            flightClass = "economy";
            insertData(tableName, airlineName, price, flightNo, sourceCity, destinationCity, departure, arrival, distance, totalSeats, flightClass);

        } catch (Exception e) {
            throw new Exception(e);
        }
    }

    public void insertData(
            String tableName, String airlineName,
            Integer price, String flightNo,
            String sourceCity, String destinationCity,
            LocalTime departure, LocalTime arrival,
            Integer distance, Integer totalSeats, String flightClass
    ) throws Exception {
        try {
            Statement stmt = this.conn.createStatement();
            String sql = "INSERT INTO " + tableName +
                    "(airlineName, price, flightNo, sourceCity, destinationCity, departure, arrival, distance, totalSeats, flightClass) " +
                    "VALUES('" +
                    airlineName + "', '" + price + "', '" +
                    flightNo + "', '" + sourceCity + "', '" +
                    destinationCity + "', '" + departure + "', '" +
                    arrival + "', '" + distance + "', '" +
                    totalSeats + "', '" + flightClass  + "')";
            stmt.executeUpdate(sql);
        } catch (Exception e) {
            throw new Exception(e);
        }
    }
}
