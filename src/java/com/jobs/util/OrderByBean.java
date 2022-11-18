/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobs.util;

/**
 *
 * @author user
 */
public class OrderByBean {

    public static final String ASC = " ASC ";
    public static final String DESC = " DESC ";

    private String name;
    private String fieldName;
    private String orderBy;

    public OrderByBean(String name, String fieldName, String orderBy) {
        this.name = name;
        this.fieldName = fieldName;
        this.orderBy = orderBy;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFieldName() {
        return fieldName;
    }

    public void setFieldName(String fieldName) {
        this.fieldName = fieldName;
    }

    public String getOrderBy() {
        return orderBy;
    }

    public void setOrderBy(String orderBy) {
        this.orderBy = orderBy;
    }

}
