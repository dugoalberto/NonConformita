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

    <title>Form Lavoratore</title>
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
            <h1>Form Lavoratore</h1>
        </div>
        <div class="parag">
            <p>In questo form puoi compilare i dati relativi al nuovo lavoratore</p>
        </div>
        <div class="container">
            <%--@elvariable id="lavoratore" type="itiseveri.pcto.pcto.model.Lavoratore"--%>
            <form:form method="POST" action="/registraLavoratore" modelAttribute="lavoratore">
                <div class="row g-3">

                        <form:input type="hidden" path="matricola" class="form-control" id="matricola"/>

                    <div class="col-md-6">
                        <label for="nome" class="form-label"> Nome:</label>
                        <form:input path="nome" class="form-control" id="nome" required="true"/>
                    </div>
                    <div class="col-md-6">
                        <label for="cognome" class="form-label"> Cognome:</label>
                        <form:input path="cognome" class="form-control" id="cognome" required="true"/>
                    </div>
                </div>
                <div class="row g-3">
                    <div class="row g-3" id="data">
                        <div class="col-md-6">
                            <label for="dataNascita" class="form-label">Data di nascita:</label>
                            <form:input type="date" path="dataNascita" class="form-control" id="dataNascita"/>
                        </div>
                    </div>
                    <div class="row g-3">
                        <div class="col-md-6">
                            <label for="residenza" class="form-label">Residenza:</label>
                            <form:input path="residenza" class="form-control" id="residenza"/>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <label for="nomeProcesso" class="form-label"> Nome del reparto di appartenenza:</label>
                        <form:select path="nomeProcesso">
                            <form:option value="Marketing" label="Marketing"/>
                            <form:option value="Elettronica" label="Elettronica"/>
                            <form:option value="Informatica" label="Informatica"/>
                            <form:option value="Manutenzione" label="Manutenzione"/>
                        </form:select>

                    </div>

                    <div class="row g-3">
                        <div class="col-md-6">
                            <label for="username" class="form-label"> Username:</label>
                            <form:input  path="username" class="form-control" id="username" required="true"/>
                        </div>
                        <div class="col-md-6">
                            <label for="password" class="form-label"> Password:</label>
                            <form:input type="password" path="password" class="form-control" id="password" required="true"/>
                        </div>

                        <div class="col-md-6">
                            <label for="roles" class="form-label"> Ruolo:</label>
                            <form:select path="roles">
                                <form:option value="ROLE_USER" label="USER"/>
                                <form:option value="ROLE_ADMIN" label="ADMIN"/>
                            </form:select>
                        </div>
                        <div class="col-md-6">
                             Attivare
                            si <form:radiobutton  path="active" value="1"/>
                            no <form:radiobutton  path="active" value="0"/>
                        </div>
                    </div>
                    <div class="d-grid gap-2 col-6 mx-auto" >
                        <button class="btn btn-primary" type="submit" id="bottone">Registra lavoratore</button>
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
