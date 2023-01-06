package vn.edu.hcmuaf.fit.model;

public class Company {
    private String companyID   ;
    private String name;
    private String img;
    private String location;
    private String description;

    public Company() {

    }

    public Company(String companyID, String name, String img, String location, String description) {
        this.companyID = companyID;
        this.name = name;
        this.img = img;
        this.location = location;
        this.description = description;
    }

    public String getCompanyID() {
        return companyID;
    }

    public void setCompanyID(String companyID) {
        this.companyID = companyID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Company{" +
                "companyID='" + companyID + '\'' +
                ", name='" + name + '\'' +
                ", img='" + img + '\'' +
                ", location='" + location + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}
