package com.example.flyaway.classes;

import java.security.MessageDigest;

public class PasswordHash {

    public String hashPassword(String password) throws Exception {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA");
            md.update(password.getBytes());
            byte[] result = md.digest();

            StringBuilder sb = new StringBuilder();

            for (byte b : result) {
                sb.append(String.format("%02x", b));
            }
            return sb.toString();
        } catch (Exception e) {
            throw new Exception(e);
        }
    }

    public Boolean verifyPassword(String password, String hashedPassword) throws Exception {

        try {
            String hPassword = hashPassword(password);
            return hPassword.equals(hashedPassword);
        } catch (Exception e) {
            throw new Exception(e);
        }

    }
}
