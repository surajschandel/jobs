/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobs.mapper;

import com.jobs.domain.Jobs;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author User
 */
public class JobsMapper implements RowMapper<Jobs> {

    @Override
    public Jobs mapRow(ResultSet rs, int rowNo) throws SQLException {
        Jobs jobs = new Jobs();
        jobs.setJobId(rs.getLong("JOB_ID"));
        jobs.setTrackingNo(rs.getString("TRACKING_NO"));
        jobs.setJobNo(rs.getString("JOB_NO"));
        jobs.setIcNo(rs.getString("IC_NO"));
        jobs.setLoadingDate(rs.getDate("LOADING_DATE"));
        jobs.setBarcode(rs.getString("BARCODE"));
        jobs.setIndenter(rs.getString("INDENTER"));
        jobs.setPhone(rs.getString("PHONE"));
        jobs.setProject(rs.getString("PROJECT"));
        jobs.setSubSystem(rs.getString("SUB_SYSTEM"));
        jobs.setCircuitName(rs.getString("CIRCUIT_NAME"));
        jobs.setModel(rs.getString("MODEL"));
        jobs.setRemark(rs.getString("REMARK"));
        jobs.setAddedDate(rs.getDate("ADDED_DATE"));
        jobs.setAddedBy(rs.getInt("ADDED_BY"));
        jobs.setAddedByName(rs.getString("ADDED_BY_NAME"));
        jobs.setStatus(rs.getBoolean("STATUS"));
        jobs.setDeleteStatus(rs.getBoolean("DELETE_STATUS"));
        return jobs;
    }
}
