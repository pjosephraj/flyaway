package com.example.flyaway.classes;

import java.util.ArrayList;

public class SearchFlights {

    public ArrayList<String> getSourceCities(ArrayList<Flight> flData) {
        ArrayList<String> data = new ArrayList();
        try {
            for(Flight flight: flData) {
                String sourceCity = flight.getSourceCity();
                if(!data.contains(sourceCity)) {
                    data.add(sourceCity);
                }
            }
            return data;
        } catch (Exception e) {
            System.out.println(e);
            return data;
        }
    }

    public ArrayList<String> getDestinationCities(ArrayList<Flight> flData) {
        ArrayList<String> data = new ArrayList();
        try {
            for(Flight flight: flData) {
                String getDestinationCity = flight.getDestinationCity();
                if(!data.contains(getDestinationCity)) {
                    data.add(getDestinationCity);
                }
            }
            return data;
        } catch (Exception e) {
            System.out.println(e);
            return data;
        }
    }
}
