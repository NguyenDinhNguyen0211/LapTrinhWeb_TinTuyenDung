package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;

public class Address implements Serializable {
    private static final long serialVersionUID = 1L;
    private String addressID;
    private String district;
    private String city;

    public Address(String addressID, String district, String city) {
        this.addressID = addressID;
        this.district = district;
        this.city = city;
    }
    public Address(){

    }
    public String getAddressID() {
        return addressID;
    }

    public void setAddressID(String addressID) {
        this.addressID = addressID;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    @Override
    public String toString() {
        return "Address{" +
                "addressID='" + addressID + '\'' +
                ", district='" + district + '\'' +
                ", price='" + city + '\'' +
                '}';
    }
}
