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
public class Delete implements Action {

    @Override
    public String run(HttpServletRequest request, HttpServletResponse response) throws Exception {
        
        ContactDao dao = new ContactDao((Connection) request.getAttribute("myConnection"));
        
        dao.delete(
        	dao.read(Long.parseLong(request.getParameter("id")))
        );
        
        System.out.println("Deleting contact ... ");
        
        request.setAttribute("contacts", dao.read());
        return "/WEB-INF/jsp/contact/index.jsp";
        
    }
    
}
