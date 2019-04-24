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
			<em>Edit ${contact.name}</em>
		</h3>

        <form action="mvc?action=contact.Update" method="post">
            <div>Id: ${contact.id}</div>
            <input type="hidden" name="id" value="${contact.id}" />
            
            <vnuk:input name="name" id="name" label="Name: " value="${contact.name}" />
            <vnuk:input name="email" id="email" label="E-mail: " value="${contact.email}" />
            <vnuk:input name="address" id="address" label="Address: " value="${contact.address}" />
            
            <fmt:formatDate var="formattedDateOfBirth" value="${contact.dateOfBirth.time}" pattern="dd/MM/yyyy" />
            
            <vnuk:input
            	name="date_of_birth"
            	id="date-of-birth"
            	label="Date of birth: "
            	value="${formattedDateOfBirth}"
            	autocomplete="off"
            />
            
            
            <c:choose>
            	<c:when test="${ param.back == 'list' }">
            		<a href="mvc?action=contact.Index" class="btn btn-light">Back to list</a>
            	</c:when>
            	
            	<c:when test="${ param.back == 'detail' }">
            		<a href="mvc?action=contact.Show&id=${contact.id}" class="btn btn-light">Back to detail</a>
            	</c:when>
            </c:choose>
    		
    		<input type="submit" value="Update" class="btn btn-success" />
        </form>
	        
	</jsp:attribute>
</vnuk:layout>