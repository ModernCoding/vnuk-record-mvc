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
			<em>${contact.name}</em>
		</h3>
        
	    <div>Id : ${contact.id}</div>
	    <div>Name : ${contact.name}</div>
	    <div>E-mail : ${contact.email}</div>
	    <div>Address : ${contact.address}</div>
	    
	    <div class="my-margin-bottom-19">
	    	Date of birth : <fmt:formatDate value="${contact.dateOfBirth.time}" pattern="dd/MM/yyyy" />
	    </div>
	    
	    <a href="mvc?action=contact.Index" class="btn btn-light">Back to list</a>
	    
	    <a href="mvc?action=contact.Edit&id=${contact.id}&back=detail" class="btn btn-primary">
	    	Modify
	    </a>
	        
	</jsp:attribute>
</vnuk:layout>