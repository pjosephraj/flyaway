package com.example.flyaway.classes;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection {

    String jdbcURL = "jdbc:mysql://localhost:3306/flyaway";
    String username = "root";
    String password = "SS2022ll";

    public Connection connect() throws Exception {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(jdbcURL, username, password);
            return conn;
        } catch(Exception e) {
            throw new Exception(e);
        }
    }

}
