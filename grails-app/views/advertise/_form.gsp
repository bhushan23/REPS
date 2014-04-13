<%@ page import="reps.Advertise" %>



<div class="fieldcontain ${hasErrors(bean: advertiseInstance, field: 'adtitle', 'error')} ">
	<label for="adtitle">
		<g:message code="advertise.adtitle.label" default="Adtitle" />
		
	</label>
	<g:textField name="adtitle" value="${advertiseInstance?.adtitle}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: advertiseInstance, field: 'addesc', 'error')} ">
	<label for="addesc">
		<g:message code="advertise.addesc.label" default="Addesc" />
		
	</label>
	<g:textField name="addesc" value="${advertiseInstance?.addesc}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: advertiseInstance, field: 'adprice', 'error')} ">
	<label for="adprice">
		<g:message code="advertise.adprice.label" default="Adprice" />
		
	</label>
	<g:textField name="adprice" value="${advertiseInstance?.adprice}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: advertiseInstance, field: 'adtype', 'error')} ">
	<label for="adtype">
		<g:message code="advertise.adtype.label" default="Adtype" />
		
	</label>
	<g:textField name="adtype" value="${advertiseInstance?.adtype}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: advertiseInstance, field: 'adarea', 'error')} ">
	<label for="adarea">
		<g:message code="advertise.adarea.label" default="Adarea" />
		
	</label>
	<g:textField name="adarea" value="${advertiseInstance?.adarea}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: advertiseInstance, field: 'adstatus', 'error')} ">
	<label for="adstatus">
		<g:message code="advertise.adstatus.label" default="Adstatus" />
		
	</label>
	<g:textField name="adstatus" value="${advertiseInstance?.adstatus}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: advertiseInstance, field: 'sellerid', 'error')} required">
	<label for="sellerid">
		<g:message code="advertise.sellerid.label" default="Sellerid" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="sellerid" type="number" value="${advertiseInstance.sellerid}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: advertiseInstance, field: 'adlocality', 'error')} ">
	<label for="adlocality">
		<g:message code="advertise.adlocality.label" default="Adlocality" />
		
	</label>
	<g:textField name="adlocality" value="${advertiseInstance?.adlocality}"/>
</div>

