<%--
  Created by IntelliJ IDEA.
  User: nicol
  Date: 06/04/2021
  Time: 11:20
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

    <title>Form Prodotto</title>
    <style>
        body{
            background-color: #f8f9fa;
        }
        .container{
            margin: auto;
            border: 1px solid black;
            border-radius: 15px 50px;
            background-color: whitesmoke;
        }
        .parag{
            background-color: #f1f1f1;
            text-align: center;
            border: 1px solid powderblue;
            margin: 20px;
        }
        #bottone{
            border-radius: 100px;
        }

        .col-md-6, .col-md-4{
            margin-left: 25%;
        }

        .btn-primary{
            margin-top: 2%;
        }

    </style>
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>

<div>
    <div align="center">
        <h1> Prodotto</h1>
    </div>
    <div class="parag">
        <p>In questo form puoi aggiungere i nuovi prodotti</p>
    </div>
    <div class="container">
        <%--@elvariable id="prodotto" type="itiseveri.pcto.pcto.model.Prodotto"--%>
        <form:form method="POST" action="/registraProdotto" modelAttribute="prodotto">

    <div class="row g-3">

                <form:input type="hidden" path="codice" class="form-control" id="codice"/>

                <div class="col-md-6"> <center>
                    <label for="nome" class="form-label"> Nome:</label>
                    <form:input path="nome" class="form-control" id="nome" required="true"/>
                </div></center>
        <div class="row g-3">
            <div class="row g-3">
                <div class="col-md-4">
                    <label for="grandezza" class="form-label">Grandezza del lotto:</label>

                    <form:select path="grandezza">
                        <form:option value="Small" label="Small"/>
                        <form:option value="Medium" label="Medium"/>
                        <form:option value="Large" label="Large"/>
                    </form:select>

                </div>
            </div></center>

    </div>  </br> </br>

                <!--<div class="row g-3 justify-content-center" id="bottonediv">
                    <button type="submit" class="btn btn-primary btn-block" id="bottone"> Invia</button>
                </div>-->
                <div class="d-grid gap-2 col-6 mx-auto" >
                    <button class="btn btn-primary" type="submit" id="bottone">Registra Prodotto</button>
                </div>
            </div>
        </form:form>
    </div>
<center>
    <a href="<c:url value="/"/> " class="btn btn-primary">Torna al menu principale</a>
</center>
</div>
</body>
</html>