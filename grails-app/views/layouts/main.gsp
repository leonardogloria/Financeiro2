<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<title>Sistema financeiro - Credilinkl</title>
	<meta name="description" content="Consumidor Seguro, Credilink , Confirme Online" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

	<link rel="stylesheet" href="${resource(dir: 'resources/libs/assets/', file: 'animate.css')}" type="text/css">

	<link rel="stylesheet" href="${resource(dir: 'resources/libs/assets/font-awesome/css/', file: 'font-awesome.css')}" type="text/css">

	<link rel="stylesheet" href="${resource(dir: 'resources/libs/jquery/bootstrap/dist/css/', file: 'bootstrap.css')}" type="text/css">

	<link rel="stylesheet" href="${resource(dir: 'resources/libs/jquery/waves/dist/', file: 'waves.css')}" type="text/css">

	<link rel="stylesheet" href="${resource(dir: 'resources/styles/', file: 'material-design-icons.css')}" type="text/css">

	<link rel="stylesheet" href="${resource(dir: 'resources/styles/', file: 'font.css')}" type="text/css">

	<link rel="stylesheet" href="${resource(dir: 'resources/styles/', file: 'app.css')}" type="text/css">

	<g:layoutHead/>

	<r:require module="jquery"/>
	<g:javascript library="bootStrap"/>
	<g:javascript library="waves"/>
	<g:javascript library="load"/>
	<g:javascript library="config"/>
	<g:javascript library="jp"/>
	<g:javascript library="nav"/>
	<g:javascript library="toogle"/>
	<g:javascript library="wavesui"/>

	<r:layoutResources />

</head>

<body>
<div class="app">

	<!-- aside -->
	<aside id="aside" class="app-aside modal fade " role="menu">
		<div class="left">
			<div class="box bg-white">
				<div class="navbar md-whiteframe-z1 no-radius red-	300">
					<!-- brand -->
					<a class="navbar-brand">
						<img src="${application.contextPath}/resources/images/consumidor-seguro-logo.png" alt="." style="max-height: 65px;">
					</a>
					<!-- / brand -->
				</div>
				<div class="box-row">
					<div class="box-cell scrollable hover">
						<div class="box-inner">
							<div class="p hidden-folded orange-50" style="background-image:url(${application.contextPath}/resources/images/bg.png); background-size:cover">
								<div class="rounded w-64 bg-white inline pos-rlt">
									<img src="${application.contextPath}/resources/images/profile.jpeg" class="img-responsive rounded">
								</div>
								<a class="block m-t-sm" ui-toggle-class="hide, show" target="#nav, #account">
									<span class="block font-bold">John Smith</span>
									<span class="pull-right auto">
										<i class="fa inline fa-caret-down"></i>
										<i class="fa none fa-caret-up"></i>
									</span>
									john.smith@gmail.com
								</a>
							</div>
							<div id="nav">
								<nav ui-nav>
									<ul class="nav">
										<li class="nav-header m-v-sm hidden-folded">
											<b>Controle</b>
										</li>
										<li>
											<a md-ink-ripple>
												<span class="pull-right text-muted">
													<i class="fa fa-caret-down"></i>
												</span>
												<i class="pull-right up"><b class="badge no-bg"></b></i>
												<i class="icon mdi-action-home i-20"></i>
												<span class="font-normal">Credilink</span>
											</a>
											<ul class="nav nav-sub">
												<li>
													<g:link action="index" controller="banco" >Equipes <span class="badge badge-black"></g:link>

												</li>
												<li>
													<g:link action="index" controller="banco" >Colaboradores <span class="badge badge-black"></g:link>

												</li>

											</ul>
										</li>
										<li>
											<a md-ink-ripple>
												<span class="pull-right text-muted">
													<i class="fa fa-caret-down"></i>
												</span>
												<i class="pull-right up"><b class="badge no-bg"></b></i>
												<i class="icon mdi-editor-attach-money i-20"></i>
												<span class="font-normal">Info bancárias</span>
											</a>
											<ul class="nav nav-sub">
												<li>
													<g:link action="index" controller="banco" >Bancos <span class="badge badge-black"></g:link>

												</li>
												<li>
													<g:link action="index" controller="contaBancaria" >Contas Bancárias  </g:link>
												</li>
											</ul>
										</li>
										<li>
											<a md-ink-ripple>
												<span class="pull-right text-muted">
													<i class="fa fa-caret-down"></i>
												</span>
												<i class="pull-right up"><b class="badge no-bg"></b></i>
												<i class="icon mdi-social-domain i-20"></i>
												<span class="font-normal">Empresas</span>
											</a>
											<ul class="nav nav-sub">
												<li>
													<g:link action="index" controller="banco" >Fornecedores <span class="badge badge-black"></g:link>

												</li>

											</ul>
										</li>


									</ul>
								</nav>

							</div>
							<div id="account" class="hide m-v-xs">
								<nav>
									<ul class="nav">
										<li>
											<a md-ink-ripple href="page.profile.html">
												<i class="icon mdi-action-perm-contact-cal i-20"></i>
												<span>Perfil</span>
											</a>
										</li>
										<li>
											<a md-ink-ripple href="page.settings.html">
												<i class="icon mdi-action-settings i-20"></i>
												<span>Configurações</span>
											</a>
										</li>
										<li>
											<a md-ink-ripple href="lockme.html">
												<i class="icon mdi-action-exit-to-app i-20"></i>
												<span>Sair</span>
											</a>
										</li>
										<li class="m-v-sm b-b b"></li>

									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
				<nav>
					<ul class="nav b-t b">
						<li>
							<a href="" target="_blank" md-ink-ripple>
								<i class="icon mdi-action-help i-20"></i>
								<span>Ajuda &amp; Suporte</span>
							</a>
						</li>
					</ul>
				</nav>
			</div>

		</div>
	</aside>
	<!-- / aside -->

	<!-- content -->
	<div id="content" class="app-content" role="main">
		<div class="box">
			<!-- Content Navbar -->
			<div class="navbar md-whiteframe-z1 no-radius red-300">
				<!-- Open side - Naviation on mobile -->
				<a md-ink-ripple  data-toggle="modal" data-target="#aside" class="navbar-item pull-left visible-xs visible-sm"><i class="mdi-navigation-menu i-24"></i></a>
				<!-- / -->
				<!-- Page title - Bind to $state's title -->
				<div class="navbar-item pull-left h4"><b>Gerenciar Cadastros</b></div>
				<!-- / -->
				<!-- Common tools -->
				<ul class="nav navbar-tool pull-right">
					<li>
						<a md-ink-ripple ui-toggle-class="show" target="#search">
							<i class="mdi-action-search i-24"></i>
						</a>
					</li>

					<li class="dropdown">
						<a md-ink-ripple data-toggle="dropdown">
							<i class="mdi-navigation-more-vert i-24"></i>
						</a>
						<ul class="dropdown-menu dropdown-menu-scale pull-right pull-up text-color">
							<li><a href>Single-column view</a></li>
							<li><a href>Sort by date</a></li>
							<li><a href>Sort by name</a></li>
							<li class="divider"></li>
							<li><a href>Ajuda &amp; Suporte</a></li>
						</ul>
					</li>
				</ul>
				<div class="pull-right" ui-view="navbar@"></div>
				<!-- / -->
				<!-- Search form -->
				<div id="search" class="pos-abt w-full h-full indigo hide amber-600">
					<div class="box">
						<div class="box-col w-56 text-center">
							<!-- hide search form -->
							<a md-ink-ripple class="navbar-item inline"  ui-toggle-class="show" target="#search"><i class="mdi-navigation-arrow-back i-24"></i></a>
						</div>
						<div class="box-col v-m">
							<!-- bind to app.search.content -->
							<input class="form-control input-lg no-bg no-border" placeholder="Pesquisar. . .">
						</div>
						<div class="box-col w-56 text-center">
							<a md-ink-ripple class="navbar-item inline"><i class="mdi-av-mic i-24"></i></a>
						</div>
					</div>
				</div>
				<!-- / -->
			</div>
			<!-- Content -->
			<div class="box-row">
				<div class="box-cell">
					<div class="box-inner padding">


						<g:layoutBody/>
						<div class="footer" role="contentinfo"></div>
						<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
						<r:layoutResources />

					</div>
				</div>
			</div>
			<!-- / -->
		</div>

	</div>
	<!-- / content -->





</div>

</body>
</html>
