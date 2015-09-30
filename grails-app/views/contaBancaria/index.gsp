
<%@ page import="financeiro.ContaBancaria" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'contaBancaria.label', default: 'ContaBancaria')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-contaBancaria" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-contaBancaria" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="agencia" title="${message(code: 'contaBancaria.agencia.label', default: 'Agencia')}" />
					
						<th><g:message code="contaBancaria.banco.label" default="Banco" /></th>
					
						<g:sortableColumn property="conta" title="${message(code: 'contaBancaria.conta.label', default: 'Conta')}" />
					
						<g:sortableColumn property="cpfCnjp" title="${message(code: 'contaBancaria.cpfCnjp.label', default: 'Cpf Cnjp')}" />
					
						<g:sortableColumn property="tipoPessoa" title="${message(code: 'contaBancaria.tipoPessoa.label', default: 'Tipo Pessoa')}" />
					
						<g:sortableColumn property="titular" title="${message(code: 'contaBancaria.titular.label', default: 'Titular')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${contaBancariaInstanceList}" status="i" var="contaBancariaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${contaBancariaInstance.id}">${fieldValue(bean: contaBancariaInstance, field: "agencia")}</g:link></td>
					
						<td>${fieldValue(bean: contaBancariaInstance, field: "banco")}</td>
					
						<td>${fieldValue(bean: contaBancariaInstance, field: "conta")}</td>
					
						<td>${fieldValue(bean: contaBancariaInstance, field: "cpfCnjp")}</td>
					
						<td>${fieldValue(bean: contaBancariaInstance, field: "tipoPessoa")}</td>
					
						<td>${fieldValue(bean: contaBancariaInstance, field: "titular")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>

		</div>
	</body>
</html>
