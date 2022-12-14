package com.example.flyaway.classes;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class UserList {
    String tableName = new TableName().user;

    public ArrayList<User> getUserByUsername(String username) {
        ArrayList<User> data = new ArrayList();
        try {
            Connection conn = new DbConnection().connect();
            Statement stmt = conn.createStatement();
            String sql = "SELECT * FROM " + this.tableName +
                    " WHERE username='" + username + "'";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                User user = new User(rs.getInt("id"), rs.getString("username"));
                data.add(user);
            }
            return data;
        } catch (Exception e) {
            System.out.println(e);
            return data;
        }
    }

    public String getPassword(String username) {
        StaticTexts sts = new StaticTexts();
        String password = "";
        try {
            Connection conn = new DbConnection().connect();
            Statement stmt = conn.createStatement();
            String sql = "SELECT * FROM " + this.tableName +
                    " WHERE username='"+ username +"'";
            ResultSet rs = stmt.executeQuery(sql);
            while(rs.next()) {
                password = rs.getString(sts.password);
            }
            return password;
        } catch (Exception e) {
            System.out.println(e);
            return password;
        }
    }

    public Boolean changePassword(String username, String password) {
        try {
            Connection conn = new DbConnection().connect();
            Statement stmt = conn.createStatement();
            PasswordHash ph = new PasswordHash();
            String hashedPassword = ph.hashPassword(password);
            String sql = "UPDATE " + this.tableName +
                    " SET password='"+ hashedPassword + "' WHERE username='"+ username +"'";
            stmt.executeUpdate(sql);
            return true;
        } catch (Exception e) {
            System.out.println(e);
            return false;
        }
    }

    public Boolean insertUser(User user) {
        try {
            Connection conn = new DbConnection().connect();
            Statement stmt = conn.createStatement();
            String sql = "INSERT INTO " + this.tableName + "(username, fullname, address, age, mobile, identityType, identityValue, country) " +
                    "VALUES ('" + user.getUsername() + "', '" + user.getFullname() + "', '" +
                    user.getAddress() + "', '" + user.getAge() + "', '" + user.getMobile() + "', '" +
                    user.getIdentityType() + "', '" + user.getIdentityValue() + "', '" + user.getCountry() + "');";
            stmt.executeUpdate(sql);
            return true;
        } catch (Exception e) {
            System.out.println(e);
            return false;
        }
    }

    public boolean updateUser(User user) {
        try {
            Connection conn = new DbConnection().connect();
            Statement stmt = conn.createStatement();
            String sql = "UPDATE " + this.tableName +
                    " SET username='"+ user.getUsername() +"', " +
                    "fullname='" + user.getFullname() + "', " +
                    "address='" + user.getAddress() + "', " +
                    "age='" + user.getAge() + "', " +
                    "mobile='" + user.getMobile() + "', " +
                    "identityType='" + user.getIdentityType() + "', " +
                    "identityValue='" + user.getIdentityValue() + "', " +
                    "country='" + user.getCountry() + "' " +
                    "WHERE id=" + user.getId();
            stmt.executeUpdate(sql);
            return true;
        } catch (Exception e) {
            System.out.println(e);
            return false;
        }
    }
}
