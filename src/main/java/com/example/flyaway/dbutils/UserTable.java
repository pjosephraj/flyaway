package com.example.flyaway.dbutils;

import java.sql.Connection;
import java.sql.Statement;

public class UserTable {

    public void createTable(Connection conn, String tableName) throws Exception {
        try {
            Statement stmt = conn.createStatement();
            String sql = "CREATE TABLE " + tableName + "(" +
                    "id int primary key auto_increment, " +
                    "fullname varchar(50), " +
                    "username varchar(50), " +
                    "password varchar(50), " +
                    "address varchar(255), " +
                    "age int, " +
                    "mobile varchar(10), " +
                    "identityType enum('aadhaar', 'ssn', 'passport', 'voterid', 'driverlicence'), " +
                    "identityValue varchar(255), " +
                    "country varchar(50)" +
                    ")";
            stmt.executeUpdate(sql);

        } catch (Exception e) {
            throw new Exception(e);
        }

    }


}
