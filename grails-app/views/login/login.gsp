<%--
  Created by IntelliJ IDEA.
  User: leonardogloria
  Date: 20/09/15
  Time: 23:59
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>

    <r:require modules="bootstrap"/>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'login.css')}" type="text/css">

    <g:javascript library="application"/>
    <r:layoutResources />

    <title></title>
</head>

<body>
<div class="container">
    <g:form action="doLogin">


    <div class="row">
        <div class="col-md-offset-5 col-md-3">
            <div class="form-login">
                <h4>Bem vindo ao sistema Financeiro Credilink</h4>
                <g:textField name="email" class="form-control input-sm chat-input"  placeholder="username"></g:textField>

            </br>
                <g:passwordField name="senha"  id="userPassword" class="form-control input-sm chat-input" placeholder="password"></g:passwordField>

            </br>
                <div class="wrapper">
                    <span class="group-btn">
                        <g:submitButton  name="Login" class="btn btn-primary btn-md" >Login <i class="fa fa-sign-in"></i></g:submitButton>
                    </span>
                </div>
            </div>

        </div>
    </div>
</div>
    </g:form>
<r:layoutResources />

</body>
</html>