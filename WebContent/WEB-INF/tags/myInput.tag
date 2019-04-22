<%@tag description="My input field" pageEncoding="UTF-8"%>

<%@ attribute name="id" required="true" %>
<%@ attribute name="param_name" required="true" %>
<%@ attribute name="label" required="true" %>
<%@ attribute name="value" %>

<div>
	<label for="${id}">${label}</label>
   	<input type="text" name="${param_name}" id="${id}" value="${value}">
</div>