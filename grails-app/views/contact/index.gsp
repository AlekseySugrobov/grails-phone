
<%@ page import="grails.phone.Contact" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'contact.label', default: 'Contact')}" />
		<title><g:message code="contact.list-label" /></title>
	</head>
	<body>
		<a href="#list-contact" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-contact" class="content scaffold-list" role="main">
			<h1><g:message code="contact.list-label" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="firstName" title="${message(code: 'contact.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="middleName" title="${message(code: 'contact.middleName.label', default: 'Middle Name')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'contact.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="dateBirth" title="${message(code: 'contact.dateBirth.label', default: 'Date Birth')}" />
					
						<g:sortableColumn property="phoneNumber" title="${message(code: 'contact.phoneNumber.label', default: 'Phone Number')}" />
					
						<g:sortableColumn property="mail" title="${message(code: 'contact.mail.label', default: 'Mail')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${contactInstanceList}" status="i" var="contactInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${contactInstance.id}">${fieldValue(bean: contactInstance, field: "firstName")}</g:link></td>
					
						<td>${fieldValue(bean: contactInstance, field: "middleName")}</td>
					
						<td>${fieldValue(bean: contactInstance, field: "lastName")}</td>
					
						<td><g:formatDate date="${contactInstance.dateBirth}" /></td>
					
						<td>${fieldValue(bean: contactInstance, field: "phoneNumber")}</td>
					
						<td>${fieldValue(bean: contactInstance, field: "mail")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${contactInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
