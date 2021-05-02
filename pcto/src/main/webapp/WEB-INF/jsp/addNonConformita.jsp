<%--
  Created by IntelliJ IDEA.
  User: nicol
  Date: 08/04/2021
  Time: 10:13
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

    <title>Non conformita aperte</title>
    
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function (){
            $('#codiceProdotto').keyup(function (){
                var search=$('#codiceProdotto').val();
                if(search!='' && search!=null) {
                    $.ajax('recordProdotto.jsp',{
                        type: 'POST',
                        data: 'key=' + search,
                        success: function (result) {
                            $('#showList').html(result);
                        }
                    });
                } else {
                    $('#showList').html('');
                }
            });
            $(document).on('click', 'li', function (){
                $('#codiceProdotto').val($(this).text());
            });
        });
    </script>
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>


        <div align="center">
            <h1>Form Non conformità aperta</h1>
        </div>
        <div class="parag">
            <p>In questo form puoi compilare i dati relativi ad una nuova non conformità riscontrata</p>
        </div>
        <div class="container">
            <%--@elvariable id="nonConformita" type="itiseveri.pcto.pcto.model.NonConformita"--%>
            <form:form method="POST" action="/registraNonConformita" modelAttribute="nonConformita">
                <div class="row g-3">

                    <form:input type="hidden" path="codice" class="form-control" id="codice"/>

                    <div class="col-md-6">
                        <label for="dataInizio" class="form-label"> Data di inizio:</label>
                        <form:input type="date" path="dataInizio" class="form-control" id="dataInizio" required="true"/>
                    </div>
                </div>
                <div class="row g-3">
                    <div class="row g-3">
                        <div class="col-md-6">
                            <label for="nomeSegnalatore" class="form-label">Nome del segnalatore:</label>
                            <form:input path="nomeSegnalatore" class="form-control" id="nomeSegnalatore" required="true"/>
                        </div>
                    </div>

                    <div class="row g-3">
                        <div class="row g-3">
                            <div class="col-md-4">
                                <label for="fase" class="form-label">Fase della non conformita:</label>

                                <form:select path="fase">
                                    <form:option value="Segnalazione" label="Segnalazione"/>
                                    <form:option value="AzioneCorrettiva" label="Azione Correttiva"/>
                                    <form:option value="VerificaCorrettiva" label="Verifica Correttiva"/>
                                    <form:option value="Chiusa" label="Chiusura"/>
                                </form:select>

                            </div>
                        </div>

                        <div class="row g-3">
                        <div class="col-md-6">
                            <div class="form-floating">
                                <form:textarea path="descrizione" class="form-control" id="descrizione" placeholder="Lascia una descrizione qui" style="height: 100px" required="true"/>
                                <label for="descrizione">Descrizione</label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label for="codiceProdotto" class="form-label"> Numero lotto del prodotto:</label>
                        <form:input path="codiceProdotto" class="form-control" id="codiceProdotto" required="true"/>
                        <div id="showList">
                            <ul class="list-group">
                            </ul>
                        </div>
                    </div>
                        <div class="row g-3">
                            <div class="row g-3">
                                <div class="col-md-4">
                                    <label for="tipologia" class="form-label">Tipologia della Non Conformità:</label>

                                    <form:select path="tipologia">
                                        <form:option value="Interna" label="Interna"/>
                                        <form:option value="EsternaIniziale" label="Esterna Iniziale"/>
                                        <form:option value="EsternaFinale" label="Esterna Finale"/>
                                    </form:select>

                                </div>
                            </div>

                    <div class="d-grid gap-2 col-6 mx-auto" >
                        <button class="btn btn-primary" type="submit" id="bottone">Segnala non conformità</button>
                    </div>
                </div>
            </form:form>
                </div>
            </div>
        </div>
</body>
<center>
    <a href="<c:url value="/"/> " class="btn btn-primary">Torna al menu principale</a>
</center>
</html>



