/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vn.edu.vnuk.record.mvc.logic.contact;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vn.edu.vnuk.record.dao.ContactDao;
import vn.edu.vnuk.record.model.Contact;
import vn.edu.vnuk.record.mvc.logic.Logic;

/**
 *
 * @author michel
 */
public class Delete implements Logic {

    @Override
    public String run(HttpServletRequest request, HttpServletResponse response) throws Exception {
        
        Long id = Long.parseLong(request.getParameter("id"));
        Contact contact = new Contact();
        contact.setId(id);
        //Connection connection = (Connection) request.getAttribute("myConnection");
        //ContactDao dao = new ContactDao(connection);
        ContactDao dao = new ContactDao();
        dao.delete(contact);
        System.out.println("Deleting contact ... ");
        return "mvc?logic=contact.Index";
        
    }
    
}
