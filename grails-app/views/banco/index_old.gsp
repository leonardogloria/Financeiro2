
<%@ page import="financeiro.Banco" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'banco.label', default: 'Banco')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-banco" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-banco" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'banco.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="removido" title="${message(code: 'banco.removido.label', default: 'Removido')}" />
					
						<g:sortableColumn property="codigo" title="${message(code: 'banco.codigo.label', default: 'Codigo')}" />
					
						<g:sortableColumn property="enderecoEletronico" title="${message(code: 'banco.enderecoEletronico.label', default: 'Endereco Eletronico')}" />
					
						<g:sortableColumn property="dataCarga" title="${message(code: 'banco.dataCarga.label', default: 'Data Carga')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${bancoInstanceList}" status="i" var="bancoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${bancoInstance.id}">${fieldValue(bean: bancoInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: bancoInstance, field: "removido")}</td>
					
						<td>${fieldValue(bean: bancoInstance, field: "codigo")}</td>
					
						<td>${fieldValue(bean: bancoInstance, field: "enderecoEletronico")}</td>
					
						<td><g:formatDate date="${bancoInstance.dataCarga}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>

		</div>
	</body>
</html>
