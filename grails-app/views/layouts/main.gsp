<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title><g:layoutTitle default="Grails" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon"
	href="${resource(dir: 'images', file: 'favicon.ico')}"
	type="image/x-icon">
<link rel="apple-touch-icon"
	href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
<link rel="apple-touch-icon" sizes="114x114"
	href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}"
	type="text/css">
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css">
<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'bootstrap-responsive.css')}"
	type="text/css">
<script src="${resource(dir: 'css', file: 'mobile.css')}">
	
</script>
<script src="${resource(dir: 'js', file: 'bootstrap.js')}">
	
</script>
<script src="${resource(dir: 'js', file: 'jquery-1.10.1.min.js')}">
	
</script>
<g:layoutHead />
<g:javascript library="application" />
<r:require modules="bootstrap" />
<r:layoutResources />
</head>
<body>
<!--
	<div id="grailsLogo" role="banner">
		<a href="http://grails.org"><img
			src="${resource(dir: 'images', file: 'grails_logo.png')}"
			alt="Grails" /></a>
	</div>
	-->
	<header class="navbar navbar-inverse navbar-fixed-top bs-docs-nav"	role="banner">
		
			<div class="navbar-header">
				
				<a href="${createLink(uri: '/')}" class="navbar-brand">PDS</a>
				<a  href="${createLink(uri: '/')}" class="navbar-brand"><g:message code="Home" /></a>

			</div>
			<div class="nav navbar navbar-right">
				<g:if test="${session.UserLoggedin}">
							<a
								<g:link controller="Login" action="loggedinhomepage"> <g:message code="Hi, ${session.UserLoggedin}" /></g:link>>
							</a>
						</g:if> <g:else>
					
					
                   
					 <a><g:link controller="Login" action="login"> Login </g:link></a>
					
						</g:else>
						
					<g:if test="${session.UserLoggedin}">
							<a
								<g:link controller="Login" action="logout"> Logout </g:link>>
							</a>
						</g:if>
			</div>
		
	</header>
<br>
<br>
<br>
		<g:layoutBody />
						<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;">
							<g:message code="spinner.alt" default="Loading&hellip;" />
						</div>
		<r:layoutResources />
	
					</body>
</html>
