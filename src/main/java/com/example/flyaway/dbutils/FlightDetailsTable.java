package com.example.flyaway.dbutils;

import java.sql.Connection;
import java.sql.Statement;

public class FlightDetailsTable {

    public void createTable(Connection conn, String tableName) throws Exception{
        try {
            Statement stmt = conn.createStatement();
            String sql = "CREATE TABLE " + tableName + "(" +
                    "id int primary key auto_increment, " +
                    "airlineName varchar(50), " +
                    "price decimal, " +
                    "flightNo varchar(50), " +
                    "sourceCity varchar(255), " +
                    "destinationCity varchar(255), " +
                    "departure time, " +
                    "arrival time, " +
                    "totalSeats int, " +
                    "class enum('economy', 'business')" +
                    ")";
            stmt.executeUpdate(sql);

        } catch (Exception e) {
            throw new Exception(e);
        }
    }
}
