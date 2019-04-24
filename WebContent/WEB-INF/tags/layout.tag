<%@ tag language="java" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@attribute name="template" fragment="true" %>


<!DOCTYPE html>


<html>
    
    <head>
        <meta charset="utf-8" 
            name="viewport" 
            content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <c:import url="../stylesheets.jsp" />
    </head>
    

    <body>
        
        <c:import url="../header.jsp" />
       
       <section class="my-padding-top-28 my-padding-bottom-40">
       		<jsp:invoke fragment="template" />
       	</section>
        
        <c:import url="../footer.jsp" />
        <c:import url="../scripts.jsp" />

    </body>

</html>