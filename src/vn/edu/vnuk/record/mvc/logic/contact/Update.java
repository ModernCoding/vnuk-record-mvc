/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vn.edu.vnuk.record.mvc.logic.contact;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vn.edu.vnuk.record.mvc.dao.ContactDao;
import vn.edu.vnuk.record.mvc.logic.Logic;

/**
 *
 * @author michel
 */
public class Update implements Logic {

    @Override
    public String run(HttpServletRequest request, HttpServletResponse response) throws Exception {

        request.setAttribute(
    		"contact", 
    		new ContactDao(
    				(Connection) request.getAttribute("myConnection")
    			).read(Integer.parseInt(request.getParameter("id")))
		);
    	//request.setAttribute("contact", new ContactDao().read(Integer.parseInt(request.getParameter("id"))));
        
        return "/WEB-INF/jsp/contact/update.jsp";
    }
    
}
