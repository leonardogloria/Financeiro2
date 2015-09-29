<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'banco.label', default: 'Banco')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>

		<div id="create-banco" class="content scaffold-create" role="main">

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${bancoInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${bancoInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form role="form" url="[resource:bancoInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>

			</g:form>
		</div>
	</body>
</html>
