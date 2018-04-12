<%@ page import="grails.phone.Contact" %>
<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'firstName', 'error')} required">
    <label for="firstName">
        Имя
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="firstName" maxlength="100" required="" value="${contactInstance?.firstName}"/>
</div>
<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'middleName', 'error')} required">
    <label for="middleName">
        Отчество
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="middleName" maxlength="100" required="" value="${contactInstance?.middleName}"/>
</div>
<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'lastName', 'error')} required">
    <label for="lastName">
        Фамилия
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="lastName" maxlength="100" required="" value="${contactInstance?.lastName}"/>
</div>
<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'dateBirth', 'error')} required">
    <label for="dateBirth">
        Дата рождения
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="dateBirth" precision="day" value="${contactInstance?.dateBirth}"/>
</div>
<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'phoneNumber', 'error')} required">
    <label for="phoneNumber">
        Номер телефона
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="phoneNumber" maxlength="10" required="" value="${contactInstance?.phoneNumber}"/>

</div>
<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'mail', 'error')} ">
    <label for="mail">
        Email
    </label>
    <g:field type="email" name="mail" value="${contactInstance?.mail}"/>
</div>

