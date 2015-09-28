<%--
  Created by IntelliJ IDEA.
  User: lsilva
  Date: 28/09/2015
  Time: 10:11
--%>
<%@ page import="financeiro.Banco" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title></title>
</head>

<body>
<div class="panel panel-default">
    <div class="panel-heading">
        Footable - make HTML tables on smaller devices look awesome
    </div>
    <div class="panel-body b-b b-light">
        Search: <input id="filter" type="text" class="form-control input-sm w-auto inline m-r"/>
    </div>
    <div>
<table class="table m-b-none" ui-jp="footable" data-filter="#filter" data-page-size="5">
    <thead>
    <tr>

        <g:sortableColumn property="nome" title="${message(code: 'banco.nome.label', default: 'Nome')}" />

       <g:sortableColumn property="codigo" title="${message(code: 'banco.codigo.label', default: 'Codigo')}" />

        <g:sortableColumn property="enderecoEletronico" title="${message(code: 'banco.enderecoEletronico.label', default: 'Endereco Eletronico')}" />

        <g:sortableColumn property="dataCarga" title="${message(code: 'banco.dataCarga.label', default: 'Data Carga')}" />

    </tr>
    </thead>
    <tbody>
    <g:each in="${bancoInstanceList}" status="i" var="bancoInstance">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

            <td><g:link action="show" id="${bancoInstance.id}">${fieldValue(bean: bancoInstance, field: "nome")}</g:link></td>

            <td>${fieldValue(bean: bancoInstance, field: "codigo")}</td>

            <td>${fieldValue(bean: bancoInstance, field: "enderecoEletronico")}</td>

            <td><g:formatDate date="${bancoInstance.dataCarga}" /></td>

        </tr>
    </g:each>
    </tbody>
</table>
    </div>
</div>



</body>
</html>