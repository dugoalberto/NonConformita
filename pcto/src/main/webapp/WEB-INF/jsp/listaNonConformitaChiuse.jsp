<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

    <title>Non conformita chiuse</title>

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


<div align="center">
    <h1>Lista non conformità Chiuse</h1>
</div>

<c:if test="${!empty nonConformitaListChiuse}">

    <div class="parag">
        <p> Numero delle Non Conformita Chiuse: ${nonConformitaListChiuse.size()}</p>
    </div>

    <br>
    <br>
    <div class="table-responsive">
        <table class="table table-hover">
            <thead class="thead-dark">
            <tr>
                <th scope="col">Codice Non Conformità</th>
                <th scope="col">Data inizio</th>
                <th scope="col">Data Fine</th>
                <th scope="col">Nome del segnalatore</th>
                <th scope="col">Descrizione</th>
            </tr>
            </thead>
            <c:forEach items="${nonConformitaListChiuse}" var="lista">
                <tbody>
                <tr>
                    <td>${lista.codice}</td>
                    <td>${lista.dataInizio}</td>
                    <td>${lista.dataFine}</td>
                    <td>${lista.nomeSegnalatore}</td>
                    <td>${lista.descrizione}</td>

                </tr>
                </tbody>
            </c:forEach>
        </table>
    </div>

</c:if>

<c:if test="${empty nonConformitaListChiuse}">
    <div class="parag">

        <p>Non hai ancora risolto nessuna Non Conformità</p>


    </div>

    <center>
        <a href="<c:url value="/listaNonConfAperte"/> " class="btn btn-primary">Risolvi la Non Conformità</a>
    </center>
</c:if>
</br></br>
<center>
    <a href="<c:url value="/"/> " class="btn btn-primary">Torna al menu principale</a>
</center>
</body>
</html>