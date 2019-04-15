/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vn.edu.vnuk.record.mvc.logic;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author michel
 */
public class FirstLogic implements Logic {

    @Override
    public String run(HttpServletRequest request, HttpServletResponse response) throws Exception {
        System.out.println("Running Logic and redirecting ...");
        return "first-logic.jsp";
    }
    
}
