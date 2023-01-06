package vn.edu.hcmuaf.fit.model;

import java.util.Date;

public class Busi extends AccountTest {
    private String name;
    private String phone;
    private int gen;
    private String img;

    public Busi(String username, String password, String email, int role, Date dateCreate, String name, String phone, int gen, String img) {
        super(username, password, email, role, dateCreate);
        this.name = name;
        this.phone = phone;
        this.gen = gen;
        this.img = img;
    }

    public Busi(String email, String name, String phone, int gen, String img) {
        super(email);
        this.name = name;
        this.phone = phone;
        this.gen = gen;
        this.img = img;
    }

    public Busi() {

    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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
}
