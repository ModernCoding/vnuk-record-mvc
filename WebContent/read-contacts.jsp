<%@ page language="java"
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>


<html>
	<head>
		<link rel="stylesheet" type="text/css" href="css/index.css">
	</head>

	<body>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
		<c:import url="header.jsp" />
		
		<!-- creating DAO -->
		<jsp:useBean id="dao" class="vn.edu.vnuk.record.mvc.dao.ContactDao"/>
		
		<table>
			<c:forEach var="contact" items="${dao.read()}" varStatus="index">
				<tr class="my-tr-${index.count % 2 == 0 ? 'red' : 'gold' }">
					<td>${contact.name}</td>
					
					<td>
						<c:if test="${not empty contact.email}">
							<a href="mailto:${contact.email}">${contact.email}</a>
						</c:if>
						
						<c:if test="${empty contact.email}">
							<i>E-mail has not been given</i>
						</c:if>
					</td>
					
					<td>${contact.address}</td>
					
					<td>
						<fmt:formatDate value="${contact.dateOfBirth.time}" pattern="dd/MM/yyyy" />
					</td>
				</tr>
			</c:forEach>
		</table>
		
		<c:import url="footer.jsp" />
	</body>
</html>