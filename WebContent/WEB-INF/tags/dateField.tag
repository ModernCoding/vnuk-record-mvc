<%-- 
    Document   : myDateField
    Created on : Mar 30, 2017, 5:58:41 PM
    Author     : michel
--%>

<%@tag description="My date field" pageEncoding="UTF-8"%>

<%@ attribute name="id" required="true" %>
<%@ attribute name="name" required="true" %>
<%@ attribute name="label" required="true" %>

<div>
	<label for="${id}">${label}</label>
   	<input type="text" name="${name}" id="${id}">
</div>


<script>
    $("#${id}").datepicker({dateFormat: 'dd/mm/yy'});
</script>