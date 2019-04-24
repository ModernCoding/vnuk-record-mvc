<%@ page language="java"
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="vnuk" %>

<c:import url="../body-open.jsp" />

        <h1>Add contacts</h1>
        <hr />

        <form action="addContact" method="post">
            <vnuk:input name="name" id="name" label="Name: " />
            <vnuk:input name="email" id="email" label="E-mail: " />
            <vnuk:input name="address" id="address" label="Address: " />
            <vnuk:input name="date_of_birth" id="date-of-birth" label="Date of birth: " />
            
            <a href="mvc?action=contact.Index" class="btn btn-light">Back to list</a>
            <input type="submit" value="Save" class="btn btn-success" />
        </form>
        
        <c:import url="../footer.jsp" />
        <c:import url="../scripts.jsp" />
        
        <script>
            $("#date-of-birth").datepicker({dateFormat: 'dd/mm/yy'});
        </script>

    </body>

</html>