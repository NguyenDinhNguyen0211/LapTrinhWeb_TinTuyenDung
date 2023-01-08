package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;
import java.util.Date;

public class Account implements Serializable {
    private static final long serialVersionUID = 1L;
    private String user_name;
    private String password;
    private String name;
    private String email;
    private String phone;
    private int gen;
    private String img;
    private int role;
    private Date dateCreate;

    public Account(String name, String email, String phone) {

    }

    public Account(String username, String password, String email, int role) {
        this.user_name = user_name;
        this.password = password;
        this.email = email;
        this.role = role;
    }

    public Account(String username, String password, String name, String email, String phone, int gen, int role) {
        this.user_name = user_name;
        this.password = password;
        this.role = role;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.gen = gen;
    }

    public void setDateCreate(Date dateCreate) {
        this.dateCreate = dateCreate;
    }

    public Date getDateCreate() {
        return dateCreate;
    }

    public String getUsername() {
        return user_name;
    }

    public void setUsername(String username) {
        this.user_name = user_name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getGen() {
        return gen;
    }

    public void setGen(int gen) {
        this.gen = gen;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "Account{" +
                "username='" + user_name + '\'' +
                ", password='" + password + '\'' +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", gen=" + gen +
                ", img='" + img + '\'' +
                ", role=" + role +
                ", dateCreate=" + dateCreate +
                '}';
    }
}
