/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobs.controller;

import org.apache.log4j.Logger;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author SURAJ CHANDEL
 */
@Controller
//@RequestMapping(value = "/user")
public class HomeController {

    private static final Logger log = Logger.getLogger(HomeController.class);

    @RequestMapping(value = "/saveinfo", method = RequestMethod.POST)
    public ResponseEntity<Person> saveInfo(@RequestBody Person person) {
        System.out.println("ghgkjgkjgjkgkjgk" + person);
        return new ResponseEntity<Person>(person, HttpStatus.CREATED);
    }

}
