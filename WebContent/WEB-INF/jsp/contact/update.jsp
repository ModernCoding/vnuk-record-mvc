<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:import url="../body-open.jsp" />

        <h1>Modify contact</h1>
        <hr />

        <form action="updateContact" method="post">
            Id : ${contact.id}<br/>
            <input type="hidden" name="id" value="${contact.id}" /><br />
            Name : <input type="text" name="name" value="${contact.name}" /><br />
            E-mail : <input type="text" name="email" value="${contact.email}" /><br />
            Address : <input type="text" name="address" value="${contact.address}" /><br />
            Date of birth : <input type="text" name="date_of_birth" id="date_of_birth" value=<fmt:formatDate value="${contact.dateOfBirth.time}" pattern="dd/MM/yyyy" /> /><br />
            <input type="submit" value="Update" class="btn btn-success" />
        </form>
        
        <c:import url="../footer.jsp" />
        <c:import url="../scripts.jsp" />
        
        <script>
            $("#date_of_birth").datepicker({dateFormat: 'dd/mm/yy'});
        </script>

    </body>

</html>