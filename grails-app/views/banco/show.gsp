
<%@ page import="financeiro.Banco" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'banco.label', default: 'Banco')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-banco" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-banco" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list banco">
			
				<g:if test="${bancoInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="banco.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${bancoInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bancoInstance?.removido}">
				<li class="fieldcontain">
					<span id="removido-label" class="property-label"><g:message code="banco.removido.label" default="Removido" /></span>
					
						<span class="property-value" aria-labelledby="removido-label"><g:fieldValue bean="${bancoInstance}" field="removido"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bancoInstance?.codigo}">
				<li class="fieldcontain">
					<span id="codigo-label" class="property-label"><g:message code="banco.codigo.label" default="Codigo" /></span>
					
						<span class="property-value" aria-labelledby="codigo-label"><g:fieldValue bean="${bancoInstance}" field="codigo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bancoInstance?.enderecoEletronico}">
				<li class="fieldcontain">
					<span id="enderecoEletronico-label" class="property-label"><g:message code="banco.enderecoEletronico.label" default="Endereco Eletronico" /></span>
					
						<span class="property-value" aria-labelledby="enderecoEletronico-label"><g:fieldValue bean="${bancoInstance}" field="enderecoEletronico"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bancoInstance?.dataCarga}">
				<li class="fieldcontain">
					<span id="dataCarga-label" class="property-label"><g:message code="banco.dataCarga.label" default="Data Carga" /></span>
					
						<span class="property-value" aria-labelledby="dataCarga-label"><g:formatDate date="${bancoInstance?.dataCarga}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:bancoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${bancoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
