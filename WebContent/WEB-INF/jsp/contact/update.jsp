<%@ page language="java"
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="vnuk" %>

<c:import url="../body-open.jsp" />

        <h1>Modify contact</h1>
        <hr />

        <form action="updateContact" method="post">
            <div>Id: ${contact.id}</div>
            <input type="hidden" name="id" value="${contact.id}" />
            <vnuk:input name="name" id="name" label="Name: " value="${contact.name}" />
            <vnuk:input name="email" id="email" label="E-mail: " value="${contact.email}" />
            <vnuk:input name="address" id="address" label="Address: " value="${contact.address}" />
            
			<div>
				<label for="date-of-birth">Date of birth: </label>
			   	<input type="text" name="date_of_birth" id="date-of-birth" value=<fmt:formatDate value="${contact.dateOfBirth.time}" pattern="dd/MM/yyyy" />>
			</div>
            
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
        
        <c:import url="../footer.jsp" />
        <c:import url="../scripts.jsp" />
        
        <script>
            $("#date-of-birth").datepicker({dateFormat: 'dd/mm/yy'});
        </script>

    </body>

</html>