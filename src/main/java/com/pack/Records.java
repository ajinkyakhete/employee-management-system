/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.pack;

/**
 *
 * @author 91777
 */
public class Records {
    private int id;
    private String title;
    private String name;
    private String dob;
    private String doj;
    private String address;
    private String city;
    private String state;
    private String pincode;
    private String mobile_no;
    private String mail_id;
    private String pan_no;
    

    @Override
    public String toString() {
        return "Records{" + "id=" + id + ", title=" + title + ", name=" + name + ", dob=" + dob + ", doj=" + doj + ", address=" + address + ", city=" + city + ", state=" + state + ", pincode=" + pincode + ", mobile_no=" + mobile_no + ", mail_id=" + mail_id + ", pan_no=" + pan_no + '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getDoj() {
        return doj;
    }

    public void setDoj(String doj) {
        this.doj = doj;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getPincode() {
        return pincode;
    }

    public void setPincode(String pincode) {
        this.pincode = pincode;
    }

    public String getMobile_no() {
        return mobile_no;
    }

    public void setMobile_no(String mobile_no) {
        this.mobile_no = mobile_no;
    }

    public String getMail_id() {
        return mail_id;
    }

    public void setMail_id(String mail_id) {
        this.mail_id = mail_id;
    }

    public String getPan_no() {
        return pan_no;
    }

    public void setPan_no(String pan_no) {
        this.pan_no = pan_no;
    }

    public Records(int id, String title, String name, String dob, String doj, String address, String city, String state, String pincode, String mobile_no, String mail_id, String pan_no) {
        this.id = id;
        this.title = title;
        this.name = name;
        this.dob = dob;
        this.doj = doj;
        this.address = address;
        this.city = city;
        this.state = state;
        this.pincode = pincode;
        this.mobile_no = mobile_no;
        this.mail_id = mail_id;
        this.pan_no = pan_no;
    }
    


    

    

     
}
