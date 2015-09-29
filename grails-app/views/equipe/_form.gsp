<%@ page import="financeiro.Equipe" %>



<div class="fieldcontain ${hasErrors(bean: equipeInstance, field: 'colaborador', 'error')} ">
	<label for="colaborador">
		<g:message code="equipe.colaborador.label" default="Colaborador" />
		
	</label>
	<g:select name="colaborador" from="${financeiro.Colaborador.list()}" multiple="multiple" optionKey="id" size="5" value="${equipeInstance?.colaborador*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: equipeInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="equipe.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${equipeInstance?.nome}"/>

</div>

