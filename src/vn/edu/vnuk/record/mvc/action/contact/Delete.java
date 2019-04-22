/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package vn.edu.vnuk.record.mvc.action.contact;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vn.edu.vnuk.record.mvc.action.Action;
import vn.edu.vnuk.record.mvc.dao.ContactDao;
import vn.edu.vnuk.record.mvc.model.Contact;

/**
 *
 * @author michel
 */
public class Delete implements Action {

    @Override
    public String run(HttpServletRequest request, HttpServletResponse response) throws Exception {
        
        Long id = Long.parseLong(request.getParameter("id"));
        Contact contact = new Contact();
        contact.setId(id);
//        Connection connection = (Connection) request.getAttribute("myConnection");
//        ContactDao dao = new ContactDao(connection);
        ContactDao dao = new ContactDao();
        dao.delete(contact);
        System.out.println("Deleting contact ... ");
        return "mvc?logic=contact.Index";
        //return "read-contacts.jsp";
        
    }
    
}
