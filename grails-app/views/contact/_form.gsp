<%@ page import="grails.phone.Contact" %>



<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="contact.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" maxlength="100" required="" value="${contactInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'middleName', 'error')} required">
	<label for="middleName">
		<g:message code="contact.middleName.label" default="Middle Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="middleName" maxlength="100" required="" value="${contactInstance?.middleName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="contact.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" maxlength="100" required="" value="${contactInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'dateBirth', 'error')} required">
	<label for="dateBirth">
		<g:message code="contact.dateBirth.label" default="Date Birth" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateBirth" precision="day"  value="${contactInstance?.dateBirth}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'phoneNumber', 'error')} required">
	<label for="phoneNumber">
		<g:message code="contact.phoneNumber.label" default="Phone Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phoneNumber" maxlength="10" required="" value="${contactInstance?.phoneNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'mail', 'error')} ">
	<label for="mail">
		<g:message code="contact.mail.label" default="Mail" />
		
	</label>
	<g:field type="email" name="mail" value="${contactInstance?.mail}"/>

</div>

