/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobs.listner;      

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import org.apache.log4j.Logger;

/**
 * Web application lifecycle listener.
 */
public class DataInitionlazationListener implements ServletContextListener {       

    private static final Logger log = Logger.getLogger(DataInitionlazationListener.class);

    @Override
    public void contextInitialized(ServletContextEvent sce) {      
        try {
            org.apache.log4j.BasicConfigurator.configure();
        } catch (Exception ex) {                      
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
    }
}
