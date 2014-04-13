<%@ page import="reps.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'firstname', 'error')} ">
	<label for="firstname">
		<g:message code="user.firstname.label" default="Firstname" />
		
	</label>
	<g:textField name="firstname" value="${userInstance?.firstname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'lastname', 'error')} ">
	<label for="lastname">
		<g:message code="user.lastname.label" default="Lastname" />
		
	</label>
	<g:textField name="lastname" value="${userInstance?.lastname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="user.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${userInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'pincode', 'error')} required">
	<label for="pincode">
		<g:message code="user.pincode.label" default="Pincode" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="pincode" type="number" value="${userInstance.pincode}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} ">
	<label for="username">
		<g:message code="user.username.label" default="Username" />
		
	</label>
	<g:textField name="username" value="${userInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		
	</label>
	<g:textField name="password" value="${userInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="user.address.label" default="Address" />
		
	</label>
	<g:textField name="address" maxlength="250" value="${userInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'mobile', 'error')} ">
	<label for="mobile">
		<g:message code="user.mobile.label" default="Mobile" />
		
	</label>
	<g:textField name="mobile" maxlength="10" value="${userInstance?.mobile}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="user.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${userInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'comaccount', 'error')} required">
	<label for="comaccount">
		<g:message code="user.comaccount.label" default="Comaccount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="comaccount" type="number" value="${userInstance.comaccount}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'comname', 'error')} ">
	<label for="comname">
		<g:message code="user.comname.label" default="Comname" />
		
	</label>
	<g:textField name="comname" value="${userInstance?.comname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'comadd', 'error')} ">
	<label for="comadd">
		<g:message code="user.comadd.label" default="Comadd" />
		
	</label>
	<g:textField name="comadd" value="${userInstance?.comadd}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'comcontact', 'error')} ">
	<label for="comcontact">
		<g:message code="user.comcontact.label" default="Comcontact" />
		
	</label>
	<g:textField name="comcontact" value="${userInstance?.comcontact}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'locality', 'error')} ">
	<label for="locality">
		<g:message code="user.locality.label" default="Locality" />
		
	</label>
	<g:textField name="locality" value="${userInstance?.locality}"/>
</div>

