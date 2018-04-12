<%--
  Created by IntelliJ IDEA.
  User: asugrobov
  Date: 12.04.18
  Time: 17:18
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
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
        <li><a class="list" href="${createLink(uri: '/contact')}">Список контактов</a></li>
    </ul>
</div>

<div id="import-contacts" class="content" role="main">
    <h1>Импорт контактов</h1>
    <g:uploadForm url="[action: 'upload']" method="POST">
        <input type="file" name="file"/>
        <input type="submit"/>
    </g:uploadForm>
    <g:if test="${savedContacts}">
        <h3>Загруженные контакты</h3>
        <table>
            <thead>
            <tr>
                <th>
                    <label>
                        Фамилия
                    </label>
                </th>
                <th>
                    <label>
                        Имя
                    </label>
                </th>
                <th>
                    <label>
                        Отчество
                    </label>
                </th>
                <th>
                    <label>
                        Дата рождения
                    </label>
                </th>
                <th>
                    <label>
                        Телефон
                    </label>
                </th>
                <th>
                    <label>
                        Email
                    </label>
                </th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${savedContacts}" status="i" var="contactInstance">
                <tr>
                    <td>${fieldValue(bean: contactInstance, field: "lastName")}</td>
                    <td>${fieldValue(bean: contactInstance, field: "firstName")}</td>
                    <td>${fieldValue(bean: contactInstance, field: "middleName")}</td>
                    <td><g:formatDate date="${contactInstance?.dateBirth}" format="dd.MM.yyyy"/></td>
                    <td>${fieldValue(bean: contactInstance, field: "phoneNumber")}</td>
                    <td>${fieldValue(bean: contactInstance, field: "mail")}</td>
                </tr>
            </g:each>
            </tbody>
        </table>
    </g:if>
    <g:if test="${notSavedContacts}">
        <h3>Контакты, которые загрузить не удалось</h3>
        <table>
            <thead>
            <tr>
                <th>
                    <label>
                        Фамилия
                    </label>
                </th>
                <th>
                    <label>
                        Имя
                    </label>
                </th>
                <th>
                    <label>
                        Отчество
                    </label>
                </th>
                <th>
                    <label>
                        Дата рождения
                    </label>
                </th>
                <th>
                    <label>
                        Телефон
                    </label>
                </th>
                <th>
                    <label>
                        Email
                    </label>
                </th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${notSavedContacts}" status="i" var="contactInstance">
                <tr>
                    <td>${fieldValue(bean: contactInstance, field: "lastName")}</td>
                    <td>${fieldValue(bean: contactInstance, field: "firstName")}</td>
                    <td>${fieldValue(bean: contactInstance, field: "middleName")}</td>
                    <td><g:formatDate date="${contactInstance?.dateBirth}" format="dd.MM.yyyy"/></td>
                    <td>${fieldValue(bean: contactInstance, field: "phoneNumber")}</td>
                    <td>${fieldValue(bean: contactInstance, field: "mail")}</td>
                </tr>
            </g:each>
            </tbody>
        </table>
    </g:if>
</div>
</body>
</html>