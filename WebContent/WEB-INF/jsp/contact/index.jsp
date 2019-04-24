<%@ page language="java"
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="vnuk" %>

<vnuk:layout>
	<jsp:attribute name="template">
	
		<h3 class="my-margin-bottom-28">
			<em>List of all contacts</em>
		</h3>
	
	    <a href="mvc?action=contact.New" class="btn btn-xs btn-success my-margin-bottom-19">
	    	Create a new contact
	    </a>
	
	    <table>
	
	        <thead>
	            <tr>
	                <th><i>Actions</i></th>
	                <th>Id</th>
	                <th>Name</th>
	                <th>E-mail</th>
	                <th>Address</th>
	                <th>Date of birth</th>
	            </tr>
	        </thead>
	
	        <tbody>
	
	            <c:forEach var="contact" items="${contacts}" varStatus="index">
	
	                <tr class="my-tr-${index.count % 2 == 0 ? 'red' : 'gold' }">
	                    <td>
	                        <a href="mvc?action=contact.Show&id=${contact.id}" class="btn btn-xs btn-light">Show</a>
	                        
	                        <a href="mvc?action=contact.Edit&id=${contact.id}&back=list" class="btn btn-xs btn-primary">
	                        	Update
	                        </a>
	                        
	                        <a href="mvc?action=contact.Delete&id=${contact.id}" class="btn btn-xs btn-danger">Delete</a>
	                    </td>
	                    <td>${contact.id}</td>
	                    <td>${contact.name}</td>
	                    
	                    <td>
	                    	<c:choose>
		                        
		                        <c:when test="${not empty contact.email}">
		                            <a href="mailto:${contact.email}">${contact.email}</a>
		                        </c:when>
		                        
		                        <c:otherwise>
		                            <i>No email address</i>
		                        </c:otherwise>
		                        
	                        </c:choose>
	                    </td>
	                    
	                    <td>${contact.address}</td>
	                    <%-- <td>${contact.dateOfBirth.time}</td> --%>
	                    <td>
	                        <fmt:formatDate value="${contact.dateOfBirth.time}" pattern="dd/MM/yyyy" />
	                    </td>
	
	                </tr>
	            </c:forEach>
	
	        </tbody>
	
	    </table>
	        
	</jsp:attribute>
</vnuk:layout>