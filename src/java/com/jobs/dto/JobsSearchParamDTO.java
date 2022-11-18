/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobs.dto;

/**
 *
 * @author geetanjaligurung
 */
public class JobsSearchParamDTO extends CommonSearchParam {

    private String name;
    private String applicationNo;
    private Long connCategory;
    private String applicationStatus;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getApplicationNo() {
        return applicationNo;
    }

    public void setApplicationNo(String applicationNo) {
        this.applicationNo = applicationNo;
    }

       public Long getConnCategory() {
        return connCategory;
    }

    public void setConnCategory(Long connCategory) {
        this.connCategory = connCategory;
    }

    public String getApplicationStatus() {
        return applicationStatus;
    }

    public void setApplicationStatus(String applicationStatus) {
        this.applicationStatus = applicationStatus;
    }

    
    
}
