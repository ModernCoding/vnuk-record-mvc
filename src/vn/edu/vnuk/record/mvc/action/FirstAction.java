/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vn.edu.vnuk.record.mvc.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author michel
 */
public class FirstAction implements Action {

    @Override
    public String run(HttpServletRequest request, HttpServletResponse response) throws Exception {
        System.out.println("Running Action and redirecting ...");
        return "first-action.jsp";
    }
    
}
