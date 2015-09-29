<%@ page import="financeiro.ContaBancaria" %>

<div class="row">
	<div class="col-md-6">
		<div class="panel panel-default">
			<div class="panel-heading bg-white">
				Cadastrar nova conta bancária <form action=""></form><br>

			</div>
			<div class="panel-body">

				<div class="form-group fieldcontain ${hasErrors(bean: contaBancariaInstance, field: 'titular', 'error')} required">
					<label for="titular">
						<g:message code="contaBancaria.titular.label" default="Titular" />

					</label>
					<g:textField class="form-control" name="titular" required="" value="${contaBancariaInstance?.titular}"/>

				</div>



				<div class="form-group">
					<label for="codigo">Banco</label>

					<g:select id="banco" name="banco.id"  from="${financeiro.Banco.list()}" optionKey="id" required="" optionValue="nome" value="${contaBancariaInstance?.banco?.id}" class="many-to-one"/>

				</div>

				<div class="form-group">
					<label for="nome">Agência</label>
					<g:textField class="form-control" name="agencia" required="" value="${contaBancariaInstance?.agencia}"/>


				</div>


				<div class="form-group fieldcontain ${hasErrors(bean: contaBancariaInstance, field: 'conta', 'error')} required">
					<label for="conta">
						<g:message code="contaBancaria.conta.label" default="Conta" />

					</label>
					<g:textField class="form-control" name="conta" required="" value="${contaBancariaInstance?.conta}"/>

				</div>
				<div class="form-group fieldcontain ${hasErrors(bean: contaBancariaInstance, field: 'tipoPessoa', 'error')} required">
					<label for="tipoPessoa">
						<g:message code="contaBancaria.tipoPessoa.label" default="Tipo Pessoa" />
						<span class="required-indicator">*</span>
					</label>
					<g:select name="tipoPessoa" from="${financeiro.TipoPessoa?.values()}" keys="${financeiro.TipoPessoa.values()*.name()}" required="" value="${contaBancariaInstance?.tipoPessoa?.name()}" />

				</div>

				<div class="form-group fieldcontain ${hasErrors(bean: contaBancariaInstance, field: 'cpfCnjp', 'error')} required">
					<label for="cpfCnjp">
						<g:message code="contaBancaria.cpfCnjp.label" default="Cpf - Cnjp" />

					</label>
					<g:textField class="form-control" name="cpfCnjp" required="" value="${contaBancariaInstance?.cpfCnjp}"/>

				</div>


				<g:submitButton name="create" class="btn btn-default m-b" value="${message(code: 'default.button.create.label', default: 'Create')}" />



			</div>
		</div>
	</div>

</div>

