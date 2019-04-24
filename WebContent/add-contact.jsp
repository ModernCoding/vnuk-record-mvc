<%@ page language="java"
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="vnuk" %>

<html>
    <head>
        <meta charset="UTF-8">
        <title>Adding contacts</title>
        <link href="css/jquery-ui.css" type="text/css" rel="stylesheet" />
        <script src="js/jquery.js" type="text/javascript"></script>
        <script src="js/jquery-ui.js" type="text/javascript"></script>
    </head>

    <body>
        
        <c:import url="header.jsp" />

        <h1>Add contacts</h1>
        
        <form action="addContact" method="POST">
        	<div>
        		<label for="name">Name: </label>
            	<input type="text" name="name" id="name">
            </div>
            
        	<div>
        		<label for="email">E-mail: </label>
            	<input type="text" name="email" id="email">
            </div>
            
        	<div>
        		<label for="address">Address: </label>
            	<input type="text" name="address" id="address">
            </div>
            
            <vnuk:dateField name="date_of_birth" id="date-of-birth" label="Date of birth: " />
            
            
            <input type="submit" value="Save" />
        </form>
        
        <c:import url="footer.jsp" />
        
    </body>
</html>