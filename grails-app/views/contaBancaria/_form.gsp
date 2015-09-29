<%@ page import="financeiro.ContaBancaria" %>



<div class="fieldcontain ${hasErrors(bean: contaBancariaInstance, field: 'agencia', 'error')} required">
	<label for="agencia">
		<g:message code="contaBancaria.agencia.label" default="Agencia" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="agencia" required="" value="${contaBancariaInstance?.agencia}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contaBancariaInstance, field: 'banco', 'error')} required">
	<label for="banco">
		<g:message code="contaBancaria.banco.label" default="Banco" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="banco" name="banco.id" from="${financeiro.Banco.list()}" optionKey="id" required="" value="${contaBancariaInstance?.banco?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contaBancariaInstance, field: 'conta', 'error')} required">
	<label for="conta">
		<g:message code="contaBancaria.conta.label" default="Conta" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="conta" required="" value="${contaBancariaInstance?.conta}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contaBancariaInstance, field: 'cpfCnjp', 'error')} required">
	<label for="cpfCnjp">
		<g:message code="contaBancaria.cpfCnjp.label" default="Cpf Cnjp" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpfCnjp" required="" value="${contaBancariaInstance?.cpfCnjp}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contaBancariaInstance, field: 'tipoPessoa', 'error')} required">
	<label for="tipoPessoa">
		<g:message code="contaBancaria.tipoPessoa.label" default="Tipo Pessoa" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipoPessoa" from="${financeiro.TipoPessoa?.values()}" keys="${financeiro.TipoPessoa.values()*.name()}" required="" value="${contaBancariaInstance?.tipoPessoa?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: contaBancariaInstance, field: 'titular', 'error')} required">
	<label for="titular">
		<g:message code="contaBancaria.titular.label" default="Titular" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="titular" required="" value="${contaBancariaInstance?.titular}"/>

</div>

