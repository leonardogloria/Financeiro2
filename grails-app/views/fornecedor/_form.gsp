<%@ page import="financeiro.Fornecedor" %>



<div class="fieldcontain ${hasErrors(bean: fornecedorInstance, field: 'cnpj', 'error')} required">
	<label for="cnpj">
		<g:message code="fornecedor.cnpj.label" default="Cnpj" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cnpj" required="" value="${fornecedorInstance?.cnpj}"/>

</div>
<fieldset class="embedded"><legend><g:message code="fornecedor.endereco.label" default="Endereco" /></legend>
<div class="fieldcontain ${hasErrors(bean: fornecedorInstance, field: 'endereco.UF', 'error')} required">
	<label for="endereco.UF">
		<g:message code="fornecedor.endereco.UF.label" default="UF" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="endereco.UF" required="" value="${fornecedorInstance?.endereco?.UF}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fornecedorInstance, field: 'endereco.bairro', 'error')} required">
	<label for="endereco.bairro">
		<g:message code="fornecedor.endereco.bairro.label" default="Bairro" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="endereco.bairro" required="" value="${fornecedorInstance?.endereco?.bairro}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: fornecedorInstance, field: 'endereco.cidade', 'error')} required">
	<label for="endereco.cidade">
		<g:message code="fornecedor.endereco.cidade.label" default="Cidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="endereco.cidade" required="" value="${fornecedorInstance?.endereco?.cidade}"/>

</div>


<div class="fieldcontain ${hasErrors(bean: fornecedorInstance, field: 'endereco.logradouro', 'error')} required">
	<label for="endereco.logradouro">
		<g:message code="fornecedor.endereco.logradouro.label" default="Logradouro" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="endereco.logradouro" required="" value="${fornecedorInstance?.endereco?.logradouro}"/>

</div>


</fieldset>
<div class="fieldcontain ${hasErrors(bean: fornecedorInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="fornecedor.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${fornecedorInstance?.nome}"/>

</div>

