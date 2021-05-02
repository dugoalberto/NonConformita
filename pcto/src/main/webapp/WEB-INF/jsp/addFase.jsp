<%--
  Created by IntelliJ IDEA.
  User: nicol
  Date: 12/04/2021
  Time: 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Aggiungi fase</title>
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

<!--<body>

<//form:form method="POST" modelAttribute="" action="#">
    <div class="form-check form-check-inline">
        <//form:checkbox path="azioneCorrettiva" class="form-check-input" id="azioneCorrettiva"><//form:checkbox>
        <label class="form-check-label" for="azioneCorrettiva">azione correttiva</label>
    </div>
    <div class="form-check form-check-inline">
        <//form:checkbox path="verificaCorrettiva" class="form-check-input" id="verificaCorrettiva"><//form:checkbox>
        <label class="form-check-label" for="verificaCorrettiva">verifica correttiva</label>
    </div>
<//form:form>
</body>
</html>
