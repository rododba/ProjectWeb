/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.udi.scge.model;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author rledezma
 */
public class User implements Serializable {

    private Long id;
    private String name;
    private Date dob;

    public User(){}

    public Date getDob() {
        return dob;
    }

    public void setDob_(String dob_) throws Exception{
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd-MM-yyyy");
        Date date = simpleDateFormat.parse(dob_);
        setDob(date);
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "id = " + id + "\nname = " + name;
    }

}