<%@ page import="financeiro.Banco" %>

<div class="row">
    <div class="col-md-6">
      <div class="panel panel-default">
        <div class="panel-heading bg-white">
          Cadastrar novo banco <form action=""></form><br>
        
        </div>
        <div class="panel-body">


            <div class="form-group">
              <label for="nome">Nome</label>
				<g:textField name="nome" maxlength="80" required=""  class="form-control" value="${bancoInstance?.nome}"/>


            </div>
            <div class="form-group">
              <label for="codigo">Código</label>
              <g:textField name="codigo" class="form-control" maxlength="10" required="" value="${bancoInstance?.codigo}"/>

            </div>
            <div class="form-group">
                <label for="email">Endereço Eletronico</label>
                <g:textField class="form-control" name="enderecoEletronico" maxlength="100" value="${bancoInstance?.enderecoEletronico}"/>

            </div>

            <g:submitButton name="create" class="btn btn-default m-b" value="${message(code: 'default.button.create.label', default: 'Create')}" />



        </div>
      </div>
    </div>

</div>
