<%@ page import="grails.phone.Contact" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Редактирование контакта</title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="list" action="index">Список контактов</g:link></li>
				<li><g:link class="create" action="create">Создать контакт</g:link></li>
			</ul>
		</div>
		<div id="edit-contact" class="content scaffold-edit" role="main">
			<h1>Редактирование контакта</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${contactInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${contactInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:contactInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${contactInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="Сохранить" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
