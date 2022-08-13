package com.example.flyaway.classes;

public class User {
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getIdentityType() {
        return identityType;
    }

    public void setIdentityType(String identityType) {
        this.identityType = identityType;
    }

    public String getIdentityValue() {
        return identityValue;
    }

    public void setIdentityValue(String identityValue) {
        this.identityValue = identityValue;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    Integer id;

    public User(
            String username, String fullname,
            String address, Integer age,
            String mobile, String identityType,
            String identityValue, String country) {
        this.username = username;
        this.fullname = fullname;
        this.address = address;
        this.age = age;
        this.mobile = mobile;
        this.identityType = identityType;
        this.identityValue = identityValue;
        this.country = country;
    }

    public User(Integer id, String username) {
        this.id = id;
        this.username = username;
    }

    String username;
    String fullname;
    String address;
    Integer age;
    String mobile;
    String identityType;
    String identityValue;
    String country;
}
