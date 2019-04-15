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
public class Index implements Logic {

    @Override
    public String run(HttpServletRequest request, HttpServletResponse response) throws Exception {

    	request.setAttribute("contacts", new ContactDao((Connection) request.getAttribute("myConnection")).read());
    	//request.setAttribute("contacts", new ContactDao().read());
        
        return "/WEB-INF/jsp/contact/index.jsp";
    	//return "read-contacts.jsp";
    }
    
}
