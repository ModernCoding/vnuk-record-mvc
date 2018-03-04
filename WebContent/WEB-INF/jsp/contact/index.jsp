<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:import url="../body-open.jsp" />

    <a href="mvc?logic=contact.Create" class="btn btn-primary">Create a new contact</a>
    <br/>
    <br/>

    <table class="table table-bordered table-responsive table-striped table-hover">

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

            <c:forEach var="contact" items="${contacts}">

                <tr>
                    <td>
                        <a href="mvc?logic=contact.Show&id=${contact.id}" class="btn btn-xs btn-default">Show</a>
                        <a href="mvc?logic=contact.Delete&id=${contact.id}" class="btn btn-xs btn-danger">Delete</a>
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
        
<c:import url="../body-close.jsp" />