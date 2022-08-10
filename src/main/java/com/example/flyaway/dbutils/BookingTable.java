package com.example.flyaway.dbutils;

import java.sql.Connection;
import java.sql.Statement;

public class BookingTable {

    public String userTableName;
    public String flightTableName;

    public void createTable(Connection conn, String tableName) throws Exception {
        try {
            Statement stmt = conn.createStatement();
            String sql = "CREATE TABLE " + tableName + "(" +
                    "id int primary key auto_increment, " +
                    "userId int, " +
                    "flightId int, " +
                    "flightDate date, " +
                    "seats int, " +
                    "amount decimal, " +
                    "constraint fk_user foreign key (userId) references " + userTableName + "(id)," +
                    "constraint fk_flight foreign key (flightId) references " + flightTableName + "(id)" +
                    ")";
            stmt.executeUpdate(sql);

        } catch (Exception e) {
            throw new Exception(e);
        }

    }
}
