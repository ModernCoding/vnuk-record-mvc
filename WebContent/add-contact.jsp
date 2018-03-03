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
        <hr />

        <form action="addContact" method="post">
            Name : <input type="text" name="name" /><br />
            E-mail : <input type="text" name="email" /><br />
            Address : <input type="text" name="address" /><br />
            Date of birth : <vnuk:myDateField id="date_of_birth" /><br />
            <input type="submit" value="Save" />
        </form>
        
        <c:import url="footer.jsp" />
        
    </body>
</html>