<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="../body-open.jsp" />

        <h1>Add contacts</h1>
        <hr />

        <form action="addContact" method="post">
            Name : <input type="text" name="name" /><br />
            E-mail : <input type="text" name="email" /><br />
            Address : <input type="text" name="address" /><br />
            Date of birth : <input type="text" name="date_of_birth" id="date_of_birth" /><br />
            <input type="submit" value="Save" class="btn btn-success" />
        </form>
        
        <c:import url="../footer.jsp" />
        <c:import url="../scripts.jsp" />
        
        <script>
            $("#date_of_birth").datepicker({dateFormat: 'dd/mm/yy'});
        </script>

    </body>

</html>