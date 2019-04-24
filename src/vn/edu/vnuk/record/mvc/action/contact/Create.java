package vn.edu.vnuk.record.mvc.action.contact;

import java.sql.Connection;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vn.edu.vnuk.record.mvc.action.Action;
import vn.edu.vnuk.record.mvc.dao.ContactDao;
import vn.edu.vnuk.record.mvc.model.Contact;

public class Create implements Action {
	

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//	finding parameters in the request form
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String dateInStringFormat = request.getParameter("date_of_birth");
		
		
		Calendar dateOfBirth = null;
		
		// 	converting string to data
		try {
			Date date = new SimpleDateFormat("dd/MM/yyyy").parse(dateInStringFormat);
			dateOfBirth = Calendar.getInstance();
			dateOfBirth.setTime(date);
		} 
		
		catch (ParseException e) {
			response.getWriter().println("Error while converting date");
		}
		
		//	building an Contact object
		Contact contact = new Contact();
		contact.setName(name);
		contact.setAddress(address);
		contact.setEmail(email);
		contact.setDateOfBirth(dateOfBirth);
		
		// 	save contact in DB
		ContactDao dao = new ContactDao((Connection) request.getAttribute("myConnection"));
		
		try {
			dao.create(contact);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
    	request.setAttribute("contacts", dao.read());
        return "/WEB-INF/jsp/contact/index.jsp";
	}
	
}
