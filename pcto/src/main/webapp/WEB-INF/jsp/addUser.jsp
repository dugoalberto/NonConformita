<!--<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>

</head>

<body>
<h2>Registration Form</h2>

<%--@elvariable id="user" type="itiseveri.pcto.pcto.model.User"--%>
<form:form method="POST" action="/addUser" modelAttribute="user">
    <form:input type="hidden" path="id" id="id"/>
    <table>
        <tr>
            <td><label for="nome">Name: </label> </td>
            <td><form:input path="nome" id="nome"/></td>
        </tr>


        <tr>
            <td><label for="cognome">Surname: </label> </td>
            <td><form:input path="cognome" id="cognome"/></td>
        </tr>


        <tr>
            <td colspan="2">
                <input type="submit" value="Register"/>
            </td>
        </tr>
    </table>
</form:form>
<br/>
<br/>
Go back to <a href="<c:url value='/list' />">List of All User</a>
</body>-->