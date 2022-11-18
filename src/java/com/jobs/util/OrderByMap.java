/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobs.util;

import java.util.HashMap;

/**
 *
 * @author user
 */
public class OrderByMap {

    public static final HashMap<Integer, OrderByBean> jobsOrderBy = new HashMap<Integer, OrderByBean>();

    static {
        prepareJobsOrderBy();
    }

    private static void prepareJobsOrderBy() {
        jobsOrderBy.put(1, new OrderByBean("Name (Ascending)", "dt.name ", OrderByBean.ASC));
        jobsOrderBy.put(2, new OrderByBean("Name (Descending)", "dt.name ", OrderByBean.DESC));
        jobsOrderBy.put(3, new OrderByBean("Status (Ascending)", "dt.status ", OrderByBean.ASC));
        jobsOrderBy.put(4, new OrderByBean("Status (Descending)", "dt.status ", OrderByBean.DESC));
    }

}
