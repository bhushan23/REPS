
<%@ page import="reps.Advertise" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'advertise.label', default: 'Advertise')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-advertise" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-advertise" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list advertise">
			
				<g:if test="${advertiseInstance?.adtitle}">
				<li class="fieldcontain">
					<span id="adtitle-label" class="property-label"><g:message code="advertise.adtitle.label" default="Adtitle" /></span>
					
						<span class="property-value" aria-labelledby="adtitle-label"><g:fieldValue bean="${advertiseInstance}" field="adtitle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${advertiseInstance?.addesc}">
				<li class="fieldcontain">
					<span id="addesc-label" class="property-label"><g:message code="advertise.addesc.label" default="Addesc" /></span>
					
						<span class="property-value" aria-labelledby="addesc-label"><g:fieldValue bean="${advertiseInstance}" field="addesc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${advertiseInstance?.adprice}">
				<li class="fieldcontain">
					<span id="adprice-label" class="property-label"><g:message code="advertise.adprice.label" default="Adprice" /></span>
					
						<span class="property-value" aria-labelledby="adprice-label"><g:fieldValue bean="${advertiseInstance}" field="adprice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${advertiseInstance?.adtype}">
				<li class="fieldcontain">
					<span id="adtype-label" class="property-label"><g:message code="advertise.adtype.label" default="Adtype" /></span>
					
						<span class="property-value" aria-labelledby="adtype-label"><g:fieldValue bean="${advertiseInstance}" field="adtype"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${advertiseInstance?.adarea}">
				<li class="fieldcontain">
					<span id="adarea-label" class="property-label"><g:message code="advertise.adarea.label" default="Adarea" /></span>
					
						<span class="property-value" aria-labelledby="adarea-label"><g:fieldValue bean="${advertiseInstance}" field="adarea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${advertiseInstance?.adstatus}">
				<li class="fieldcontain">
					<span id="adstatus-label" class="property-label"><g:message code="advertise.adstatus.label" default="Adstatus" /></span>
					
						<span class="property-value" aria-labelledby="adstatus-label"><g:fieldValue bean="${advertiseInstance}" field="adstatus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${advertiseInstance?.sellerid}">
				<li class="fieldcontain">
					<span id="sellerid-label" class="property-label"><g:message code="advertise.sellerid.label" default="Sellerid" /></span>
					
						<span class="property-value" aria-labelledby="sellerid-label"><g:fieldValue bean="${advertiseInstance}" field="sellerid"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${advertiseInstance?.adlocality}">
				<li class="fieldcontain">
					<span id="adlocality-label" class="property-label"><g:message code="advertise.adlocality.label" default="Adlocality" /></span>
					
						<span class="property-value" aria-labelledby="adlocality-label"><g:fieldValue bean="${advertiseInstance}" field="adlocality"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:advertiseInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${advertiseInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
