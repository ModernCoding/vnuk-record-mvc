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
			<em>Add a new contact</em>
		</h3>

        <form action="mvc?action=contact.Create" method="post">
            <vnuk:input name="name" id="name" label="Name: " />
            <vnuk:input name="email" id="email" label="E-mail: " />
            <vnuk:input name="address" id="address" label="Address: " />
            <vnuk:input name="date_of_birth" id="date-of-birth" label="Date of birth: " autocomplete="off" />
            
            <a href="mvc?action=contact.Index" class="btn btn-light">Back to list</a>
            <input type="submit" value="Save" class="btn btn-success" />
        </form>
	        
	</jsp:attribute>
</vnuk:layout>