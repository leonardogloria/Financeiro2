
<%@ page import="financeiro.Fornecedor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'fornecedor.label', default: 'Fornecedor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-fornecedor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-fornecedor" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="cnpj" title="${message(code: 'fornecedor.cnpj.label', default: 'Cnpj')}" />
					
						<th><g:message code="fornecedor.endereco.label" default="Endereco" /></th>
					
						<g:sortableColumn property="nome" title="${message(code: 'fornecedor.nome.label', default: 'Nome')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${fornecedorInstanceList}" status="i" var="fornecedorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${fornecedorInstance.id}">${fieldValue(bean: fornecedorInstance, field: "cnpj")}</g:link></td>
					
						<td>${fieldValue(bean: fornecedorInstance, field: "endereco")}</td>
					
						<td>${fieldValue(bean: fornecedorInstance, field: "nome")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${fornecedorInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
