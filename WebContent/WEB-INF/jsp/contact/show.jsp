<%@ page language="java"
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:import url="../body-open.jsp" />
        
    <div>Id : ${contact.id}</div>
    <div>Name : ${contact.name}</div>
    <div>E-mail : ${contact.email}</div>
    <div>Address : ${contact.address}</div>
    
    <div class="my-margin-bottom-19">
    	Date of birth : <fmt:formatDate value="${contact.dateOfBirth.time}" pattern="dd/MM/yyyy" />
    </div>
    
    <a href="mvc?action=contact.Index" class="btn btn-light">Back to list</a>
    
    <a href="mvc?action=contact.Update&id=${contact.id}&back=detail" class="btn btn-primary">
    	Modify
    </a>
        
<c:import url="../body-close.jsp" />