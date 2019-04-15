/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vn.edu.vnuk.record.mvc.action.contact;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vn.edu.vnuk.record.mvc.action.Action;
import vn.edu.vnuk.record.mvc.dao.ContactDao;

/**
 *
 * @author michel
 */
public class Index implements Action {

    @Override
    public String run(HttpServletRequest request, HttpServletResponse response) throws Exception {

    	request.setAttribute("contacts", new ContactDao((Connection) request.getAttribute("myConnection")).read());
    	//request.setAttribute("contacts", new ContactDao().read());
        
        return "/WEB-INF/jsp/contact/index.jsp";
    	//return "read-contacts.jsp";
    }
    
}
