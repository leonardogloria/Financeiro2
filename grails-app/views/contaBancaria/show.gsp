
<%@ page import="financeiro.ContaBancaria" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'contaBancaria.label', default: 'ContaBancaria')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-contaBancaria" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-contaBancaria" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list contaBancaria">
			
				<g:if test="${contaBancariaInstance?.agencia}">
				<li class="fieldcontain">
					<span id="agencia-label" class="property-label"><g:message code="contaBancaria.agencia.label" default="Agencia" /></span>
					
						<span class="property-value" aria-labelledby="agencia-label"><g:fieldValue bean="${contaBancariaInstance}" field="agencia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contaBancariaInstance?.banco}">
				<li class="fieldcontain">
					<span id="banco-label" class="property-label"><g:message code="contaBancaria.banco.label" default="Banco" /></span>
					
						<span class="property-value" aria-labelledby="banco-label"><g:link controller="banco" action="show" id="${contaBancariaInstance?.banco?.id}">${contaBancariaInstance?.banco?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${contaBancariaInstance?.conta}">
				<li class="fieldcontain">
					<span id="conta-label" class="property-label"><g:message code="contaBancaria.conta.label" default="Conta" /></span>
					
						<span class="property-value" aria-labelledby="conta-label"><g:fieldValue bean="${contaBancariaInstance}" field="conta"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contaBancariaInstance?.cpfCnjp}">
				<li class="fieldcontain">
					<span id="cpfCnjp-label" class="property-label"><g:message code="contaBancaria.cpfCnjp.label" default="Cpf Cnjp" /></span>
					
						<span class="property-value" aria-labelledby="cpfCnjp-label"><g:fieldValue bean="${contaBancariaInstance}" field="cpfCnjp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contaBancariaInstance?.tipoPessoa}">
				<li class="fieldcontain">
					<span id="tipoPessoa-label" class="property-label"><g:message code="contaBancaria.tipoPessoa.label" default="Tipo Pessoa" /></span>
					
						<span class="property-value" aria-labelledby="tipoPessoa-label"><g:fieldValue bean="${contaBancariaInstance}" field="tipoPessoa"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contaBancariaInstance?.titular}">
				<li class="fieldcontain">
					<span id="titular-label" class="property-label"><g:message code="contaBancaria.titular.label" default="Titular" /></span>
					
						<span class="property-value" aria-labelledby="titular-label"><g:fieldValue bean="${contaBancariaInstance}" field="titular"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:contaBancariaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${contaBancariaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
