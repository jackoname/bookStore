package com.bookstore.pojo;


public class User {
    private String userid, password, adder, email;
    int issa;

    public int getIssa() {
        return issa;
    }

    public void setIssa(int issa) {
        this.issa = issa;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAdder() {
        return adder;
    }

    public void setAdder(String adder) {
        this.adder = adder;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "User{" +
                "userid='" + userid + '\'' +
                ", password='" + password + '\'' +
                ", adder='" + adder + '\'' +
                ", email='" + email + '\'' +
                ", issa=" + issa +
                '}';
    }
}
