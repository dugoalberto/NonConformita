<%--
  Created by IntelliJ IDEA.
  User: nicol
  Date: 17/04/2021
  Time: 23:05
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Lista fasi</title>
</head>
<body>
<c:if test="${!empty listaFasi}">
    <table class="tg">
        <tr>
            <th width="120">AzioneCorrettiva</th>
            <th width="80">VerificaCorrettiva</th>
        </tr>
        <c:forEach items="${listaFasi}" var="lista">
            <tr>
                <td>${lista.azioneCorrettiva}</td>
                <td>${lista.verificaCorrettiva}</td>
            </tr>
        </c:forEach>
    </table>
</c:if>
</body>
</html>
