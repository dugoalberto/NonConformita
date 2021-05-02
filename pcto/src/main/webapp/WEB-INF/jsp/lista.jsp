<!--
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Esempio CRUD</title>

    <style>
        tr:first-child{
            font-weight: bold;
            background-color: #C6C9C4;
        }
    </style>

</head>


<body>
<h2>User</h2>
<c:if test="${!empty listaUser}">
    <table class="tg">
        <tr>
            <th width="120">Nome</th>
            <th width="80">Cognome</th>
            <th width="60">Edit</th>
            <th width="60">Delete</th>
        </tr>
        <c:forEach items="${listaUser}" var="lista">
            <tr>
                <td>${lista.nome}</td>
                <td>${lista.cognome}</td>
                <td><a href="<c:url value='/edit/${lista.id}' />" >Edit</a></td>
                <td><a href="<c:url value='/remove/${lista.id}' />" >Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</c:if>
<br/>
<a href="<c:url value='/showForm' />">aggiungi</a>
</body>
</html>-->