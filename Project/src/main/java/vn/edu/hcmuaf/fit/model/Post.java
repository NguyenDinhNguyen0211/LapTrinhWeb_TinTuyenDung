package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;
import java.util.Date;

public class Post implements Serializable {
    private static final long serialVersionUID = 1L;
    private String postID;
    private String title;
    private String img;
    private Date dateCreate;
    private Date deadline;
    private String salary;
    private String address;
    private String typeJob;
    private String companyID;
    public Post(){

    }
    public Post(String postID, String title, String img, Date dateCreate, Date deadline, String salary, String address, String typeJob, String companyID) {
        this.postID = postID;
        this.title = title;
        this.img = img;
        this.dateCreate = dateCreate;
        this.deadline = deadline;
        this.salary = salary;
        this.address = address;
        this.typeJob = typeJob;
        this.companyID = companyID;
    }

    public String getPostID() {
        return postID;
    }

    public void setPostID(String postID) {
        this.postID = postID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Date getDateCreate() {
        return dateCreate;
    }

    public void setDateCreate(Date dateCreate) {
        this.dateCreate = dateCreate;
    }

    public Date getDeadline() {
        return deadline;
    }

    public void setDeadline(Date deadline) {
        this.deadline = deadline;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTypeJob() {
        return typeJob;
    }

    public void setTypeJob(String typeJob) {
        this.typeJob = typeJob;
    }

    public String getCompanyID() {
        return companyID;
    }

    public void setCompanyID(String companyID) {
        this.companyID = companyID;
    }

    @Override
    public String toString() {
        return "PostServlet{" +
                "postID='" + postID + '\'' +
                ", title='" + title + '\'' +
                ", img='" + img + '\'' +
                ", dateCreate=" + dateCreate +
                ", deadline=" + deadline +
                ", salary='" + salary + '\'' +
                ", typeJob='" + typeJob + '\'' +
                ", address='" + address + '\'' +
                ", companyID='" + companyID + '\'' +
                '}';
    }
}

