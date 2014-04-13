
<%@ page import="reps.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-user" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list user">
			
				<g:if test="${userInstance?.firstname}">
				<li class="fieldcontain">
					<span id="firstname-label" class="property-label"><g:message code="user.firstname.label" default="Firstname" /></span>
					
						<span class="property-value" aria-labelledby="firstname-label"><g:fieldValue bean="${userInstance}" field="firstname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.lastname}">
				<li class="fieldcontain">
					<span id="lastname-label" class="property-label"><g:message code="user.lastname.label" default="Lastname" /></span>
					
						<span class="property-value" aria-labelledby="lastname-label"><g:fieldValue bean="${userInstance}" field="lastname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="user.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${userInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.pincode}">
				<li class="fieldcontain">
					<span id="pincode-label" class="property-label"><g:message code="user.pincode.label" default="Pincode" /></span>
					
						<span class="property-value" aria-labelledby="pincode-label"><g:fieldValue bean="${userInstance}" field="pincode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="user.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${userInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="user.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${userInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="user.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${userInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.mobile}">
				<li class="fieldcontain">
					<span id="mobile-label" class="property-label"><g:message code="user.mobile.label" default="Mobile" /></span>
					
						<span class="property-value" aria-labelledby="mobile-label"><g:fieldValue bean="${userInstance}" field="mobile"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="user.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${userInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.comaccount}">
				<li class="fieldcontain">
					<span id="comaccount-label" class="property-label"><g:message code="user.comaccount.label" default="Comaccount" /></span>
					
						<span class="property-value" aria-labelledby="comaccount-label"><g:fieldValue bean="${userInstance}" field="comaccount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.comname}">
				<li class="fieldcontain">
					<span id="comname-label" class="property-label"><g:message code="user.comname.label" default="Comname" /></span>
					
						<span class="property-value" aria-labelledby="comname-label"><g:fieldValue bean="${userInstance}" field="comname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.comadd}">
				<li class="fieldcontain">
					<span id="comadd-label" class="property-label"><g:message code="user.comadd.label" default="Comadd" /></span>
					
						<span class="property-value" aria-labelledby="comadd-label"><g:fieldValue bean="${userInstance}" field="comadd"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.comcontact}">
				<li class="fieldcontain">
					<span id="comcontact-label" class="property-label"><g:message code="user.comcontact.label" default="Comcontact" /></span>
					
						<span class="property-value" aria-labelledby="comcontact-label"><g:fieldValue bean="${userInstance}" field="comcontact"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.locality}">
				<li class="fieldcontain">
					<span id="locality-label" class="property-label"><g:message code="user.locality.label" default="Locality" /></span>
					
						<span class="property-value" aria-labelledby="locality-label"><g:fieldValue bean="${userInstance}" field="locality"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:userInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${userInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
