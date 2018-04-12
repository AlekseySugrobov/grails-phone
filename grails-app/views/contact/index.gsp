<%@ page import="grails.phone.Contact" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'contact.label', default: 'Contact')}"/>
    <title>Список контактов</title>
</head>

<body>

<div class="nav" role="navigation">
    <ul>
        <li><g:link class="create" action="create">Создать контакт</g:link></li>
        <li><a class="import" href="${createLink(uri:'/import')}">Импорт контактов</a></li>
    </ul>
</div>

<div id="list-contact" class="content scaffold-list" role="main">
    <h1>Список контактов</h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>
            <th>
                <label>ФИО</label>
            </th>
            <th>
                <label>Возраст</label>
            </th>
            <th>
                <label>Действия</label>
            </th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${contactInstanceList}" status="i" var="contactInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                <td>${fieldValue(bean: contactInstance, field: "fullName")}</td>
                <td>${fieldValue(bean: contactInstance, field: "age")}</td>
                <td>
                    <g:link action="show" id="${contactInstance.id}">Просмотр</g:link>
                    <g:link class="edit" action="edit" resource="${contactInstance}">Редактирование</g:link>
                    <g:form url="[resource: contactInstance, action: 'delete']" method="DELETE" class="inline-form">
                        <g:actionSubmit class="delete" action="delete"
                                        value="Удаление"
                                        onclick="return confirm('Подтвердите удаление контакта: ${fieldValue(bean: contactInstance, field: "fullName")}');"/>
                    </g:form>
                </td>
            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${contactInstanceCount ?: 0}"/>
    </div>
</div>
</body>
</html>
