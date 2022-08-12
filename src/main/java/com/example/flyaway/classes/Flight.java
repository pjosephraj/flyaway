package com.example.flyaway.classes;

import java.time.LocalTime;

public class Flight {

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
    public String getAirlineName() {
        return airlineName;
    }

    public void setAirlineName(String airlineName) {
        this.airlineName = airlineName;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public String getFlightNo() {
        return flightNo;
    }

    public void setFlightNo(String flightNo) {
        this.flightNo = flightNo;
    }

    public String getSourceCity() {
        return sourceCity;
    }

    public void setSourceCity(String sourceCity) {
        this.sourceCity = sourceCity;
    }

    public String getDestinationCity() {
        return destinationCity;
    }

    public void setDestinationCity(String destinationCity) {
        this.destinationCity = destinationCity;
    }

    public LocalTime getDeparture() {
        return departure;
    }

    public void setDeparture(LocalTime departure) {
        this.departure = departure;
    }

    public LocalTime getArrival() {
        return arrival;
    }

    public void setArrival(LocalTime arrival) {
        this.arrival = arrival;
    }

    public Integer getDistance() {
        return distance;
    }

    public void setDistance(Integer distance) {
        this.distance = distance;
    }

    public Integer getTotalSeats() {
        return totalSeats;
    }

    public void setTotalSeats(Integer totalSeats) {
        this.totalSeats = totalSeats;
    }

    public String getFlightClass() {
        return flightClass;
    }

    public void setFlightClass(String flightClass) {
        this.flightClass = flightClass;
    }

    public Flight(String airlineName, Integer price, String flightNo, String sourceCity, String destinationCity, LocalTime departure, LocalTime arrival, Integer distance, Integer totalSeats, String flightClass) {
        this.airlineName = airlineName;
        this.price = price;
        this.flightNo = flightNo;
        this.sourceCity = sourceCity;
        this.destinationCity = destinationCity;
        this.departure = departure;
        this.arrival = arrival;
        this.distance = distance;
        this.totalSeats = totalSeats;
        this.flightClass = flightClass;
    }

    Integer id;
    String airlineName;
    Integer price;
    String flightNo;
    String sourceCity;
    String destinationCity;
    LocalTime departure;
    LocalTime arrival;
    Integer distance;
    Integer totalSeats;
    String flightClass;

}
