<%@ page import="financeiro.Colaborador" %>


<div class="fieldcontain ${hasErrors(bean: colaboradorInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="colaborador.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${colaboradorInstance?.nome}"/>

</div>

