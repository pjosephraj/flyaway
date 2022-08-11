package com.example.flyaway.dbutils;

import com.example.flyaway.classes.PasswordHash;

import java.sql.Connection;
import java.sql.Statement;

public class UserTable {

    Connection conn;
    public void createTable(Connection conn, String tableName) throws Exception {
        this.conn = conn;
        try {
            Statement stmt = this.conn.createStatement();
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

            String username = "admin";
            String password = new PasswordHash().hashPassword(username);
            insertData(tableName, username, password);

            username = "user";
            password = new PasswordHash().hashPassword(username);
            insertData(tableName, username, password);

        } catch (Exception e) {
            throw new Exception(e);
        }

    }

    private void insertData(String tableName, String username, String password) throws Exception {
        try {
            Statement stmt = this.conn.createStatement();
            String sql = "INSERT INTO " + tableName +
                    "(username, password) " +
                    "VALUES('"+ (username + "@flyaway.com") +"', '" + password + "')";
            stmt.executeUpdate(sql);
        } catch (Exception e) {
            throw new Exception(e);
        }
    }


}
