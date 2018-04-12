<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Создание контакта</title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="list" action="index">Список контактов</g:link></li>
			</ul>
		</div>
		<div id="create-contact" class="content scaffold-create" role="main">
			<h1>Создание контакта</h1>
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
			<g:form url="[resource:contactInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="Сохранить" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
