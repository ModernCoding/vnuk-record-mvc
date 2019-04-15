<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:import url="../body-open.jsp" />
        
    Id : ${contact.id}<br/>
    Name : ${contact.name}<br/>
    E-mail : ${contact.email}<br/>
    Address : ${contact.address}<br/>
    Date of birth : <fmt:formatDate value="${contact.dateOfBirth.time}" pattern="dd/MM/yyyy" /><br/>
    
    <br/>
    
    <a href="mvc?action=contact.Index" class="btn btn-default">Back to list</a>
    <a href="mvc?action=contact.Update&id=${contact.id}" class="btn btn-primary">Modify</a>
        
<c:import url="../body-close.jsp" />