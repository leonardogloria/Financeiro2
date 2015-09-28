<%@ page import="financeiro.Banco" %>

<div class="row">
    <div class="col-md-6">
      <div class="panel panel-default">
        <div class="panel-heading bg-white">
          Cadastrar novo banco <form action=""></form><br>
        
        </div>
        <div class="panel-body">
          <form role="form">

            <div class="form-group">
              <label for="exampleInputEmail1">Nome</label>
				<g:textField name="nome" maxlength="80" required=""  class="form-control" value="${bancoInstance?.nome}"/>


            </div>
            <div class="form-group">
              <label for="exampleInputPassword1">Password</label>
              <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
            </div>
            <div class="form-group">
              <label for="exampleInputFile">File input</label>
              <input type="file" id="exampleInputFile">
              <p class="help-block">Example block-level help text here.</p>
            </div>
            <div class="checkbox">
              <label>
                <input type="checkbox"> Check me out
              </label>
            </div>
            <button type="submit" class="btn btn-default m-b">Submit</button>
          </form>
        </div>
      </div>
    </div>

<div class="fieldcontain ${hasErrors(bean: bancoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="banco.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" maxlength="80" required="" value="${bancoInstance?.nome}"/>

</div>



<div class="fieldcontain ${hasErrors(bean: bancoInstance, field: 'codigo', 'error')} required">
	<label for="codigo">
		<g:message code="banco.codigo.label" default="Codigo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="codigo" maxlength="10" required="" value="${bancoInstance?.codigo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bancoInstance, field: 'enderecoEletronico', 'error')} ">
	<label for="enderecoEletronico">
		<g:message code="banco.enderecoEletronico.label" default="Endereco Eletronico" />
		
	</label>
	<g:textField name="enderecoEletronico" maxlength="100" value="${bancoInstance?.enderecoEletronico}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bancoInstance, field: 'dataCarga', 'error')} required">
	<label for="dataCarga">
		<g:message code="banco.dataCarga.label" default="Data Carga" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataCarga" precision="day"  value="${bancoInstance?.dataCarga}"  />

</div>

