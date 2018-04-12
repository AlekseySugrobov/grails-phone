<%@ page import="grails.phone.Contact" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <title>Просмотр контакта</title>
</head>

<body>
<div class="nav" role="navigation">
    <ul>
        <li><g:link class="list" action="index">Список контактов</g:link></li>
        <li><g:link class="create" action="create">Создать контакт</g:link></li>
    </ul>
</div>

<div id="show-contact" class="content scaffold-show" role="main">
    <h1>Просмотр контакта</h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list contact">
            <li class="fieldcontain">
                <span id="firstName-label" class="property-label">Имя</span>
                <span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${contactInstance}"
                                                                                             field="firstName"/></span>
            </li>
            <li class="fieldcontain">
                <span id="middleName-label" class="property-label">Отчество</span>
                <span class="property-value" aria-labelledby="middleName-label"><g:fieldValue bean="${contactInstance}"
                                                                                              field="middleName"/></span>

            </li>
            <li class="fieldcontain">
                <span id="lastName-label" class="property-label">Фамилия</span>
                <span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${contactInstance}"
                                                                                            field="lastName"/></span>
            </li>
            <li class="fieldcontain">
                <span id="dateBirth-label" class="property-label">Дата рождения</span>
                <span class="property-value" aria-labelledby="dateBirth-label"><g:formatDate
                        date="${contactInstance?.dateBirth}" format="dd.MM.yyyy"/></span>
            </li>
            <li class="fieldcontain">
                <span id="phoneNumber-label" class="property-label">Номер телефона</span>
                <span class="property-value" aria-labelledby="phoneNumber-label">
                    +7<g:fieldValue bean="${contactInstance}" field="phoneNumber"/>
                </span>
            </li>
        <g:if test="${contactInstance?.mail}">
            <li class="fieldcontain">
                <span id="mail-label" class="property-label"><g:message code="contact.mail.label"
                                                                        default="Mail"/></span>

                <span class="property-value" aria-labelledby="mail-label"><g:fieldValue bean="${contactInstance}"
                                                                                        field="mail"/></span>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource: contactInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${contactInstance}">Редактировать</g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="Удалить"
                            onclick="return confirm('Подтвердите удаление контакта: ${fieldValue(bean: contactInstance, field: "fullName")}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
