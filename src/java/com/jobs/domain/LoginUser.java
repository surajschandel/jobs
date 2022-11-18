package com.jobs.domain;
// Generated Apr 20, 2018 10:30:10 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * LoginUser generated by hbm2java
 */
public class LoginUser  implements java.io.Serializable {


     private Long userId;
     private String name;
     private String password;
     private Date createdDate;
     private String createdByName;
     private boolean status;

    public LoginUser() {
    }

    public LoginUser(Long userId, String name, String password, Date createdDate, String createdByName, boolean status) {
       this.userId = userId;
       this.name = name;
       this.password = password;
       this.createdDate = createdDate;
       this.createdByName = createdByName;
       this.status = status;
    }
   
    public Long getUserId() {
        return this.userId;
    }
    
    public void setUserId(Long userId) {
        this.userId = userId;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    public Date getCreatedDate() {
        return this.createdDate;
    }
    
    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }
    public String getCreatedByName() {
        return this.createdByName;
    }
    
    public void setCreatedByName(String createdByName) {
        this.createdByName = createdByName;
    }
    public boolean isStatus() {
        return this.status;
    }
    
    public void setStatus(boolean status) {
        this.status = status;
    }




}

