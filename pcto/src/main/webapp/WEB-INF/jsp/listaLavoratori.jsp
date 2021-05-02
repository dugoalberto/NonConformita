<%--
  Created by IntelliJ IDEA.
  User: nicol
  Date: 07/04/2021
  Time: 18:24
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

    <title>listaLavoratori</title>

    <style>

        .parag{
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid powderblue;
            margin: 20px;
            font-size: 25px;
        }

    </style>
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>

<c:if test="${!empty lavoratoreList}">

    <div align="center">
        <h1>Lista dei lavoratori</h1>
    </div>
<br>
<br>
    <div class="table-responsive">
        <table class="table table-hover">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">Nome</th>
                    <th scope="col">Cognome</th>
                    <th scope="col">Data di nascita</th>
                    <th scope="col">Residenza</th>
                    <th scope="col">Processo</th>
                    <th scope="col">Azioni</th>
                </tr>
            </thead>
            <c:forEach items="${lavoratoreList}" var="lista">
            <tbody>
                <tr>
                    <td>${lista.nome}</td>
                    <td>${lista.cognome}</td>
                    <td>${lista.dataNascita}</td>
                    <td>${lista.residenza}</td>
                    <td>${lista.nomeProcesso.nome}</td>
                    <td colspan="2">
                        <a href="<c:url value='/editLavoratore/${lista.matricola}'/> " class="btn btn-primary">Aggiorna</a>
                        <a href="<c:url value='/eliminaLavoratore/${lista.matricola}'/> " class="btn btn-danger">Elimina</a>
                    </td>
                </tr>
            </tbody>
            </c:forEach>
        </table>
    </div>
</c:if>
<c:if test="${empty lavoratoreList}">
    <div class="parag">

        <p>Non sono ancora presenti Lavoratori</p>


    </div>

    <center>
        <a href="<c:url value="/showFormLavoratore"/> " class="btn btn-primary">Aggiungi Lavoratore</a>
    </center>
</c:if>
</br> </br>
<center>
<a href="<c:url value="/"/> " class="btn btn-primary">Torna al menu principale</a>
</center>
</body>
</html>
