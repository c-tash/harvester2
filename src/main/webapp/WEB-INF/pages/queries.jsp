<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- <meta http-equiv="Refresh" content="20; URL=/harvesting/nodes.html"> -->
<html>
<head>
    <style type="text/css">
        .table-queries {
            max-width: 1600px;
            margin-left: auto;
            margin-right: auto;
            width: 70%;
        }
    </style>
    <link href="http://getbootstrap.com/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="http://getbootstrap.com/examples/dashboard/dashboard.css" rel="stylesheet">

</head>

<body>
<div>
    <div class="table-queries">
        <h3>
            <c:if test="${messageColor == 'green'}">
                <div class="alert alert-success" role="alert">
                        ${message}
                </div>
            </c:if>
            <c:if test="${messageColor == 'red'}">
                <div class="alert alert-danger" role="alert">
                        ${message}
                </div>
            </c:if>
        </h3>
        <h2>Просмотр текущих запросов</h2>

        <form class="form-horizontal" action="createquery" method="POST">
            <div class="form-group">
                <input type="hidden" value="${token}" name="token"/>
                <button class="btn btn-primary" type="submit" id="btnAddQuery">Новый запрос</button>
            </div>
        </form>
        <c:if test="${message} != null">
            <div>
                <label>${message}</label>
            </div>
        </c:if>
        <form class="form-horizontal" action="uploadprotocol" method="POST">
            <div class="form-group">
                <input type="hidden" value="${token}" name="token"/>
                <button class="btn btn-info" type="submit" id="btnAddProtocol">Добавить протокол для харвестинга</button>
            </div>
        </form>
        <table class="table table-condensed">
            <thead>
            <tr>
                <th>Имя</th>
                <th>URL конечного узла</th>
                <th>URL точки доступа</th>
                <th>Протокол</th>
                <th>Время начала</th>
                <th>Регулярность</th>
                <th>Структура</th>
                <th>Активность</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="query" items="${queries}">
                <tr>
                    <td>${query.name}
                    </td>
                    <td>${query.endURL}
                    </td>
                    <td>${query.startURL}
                    </td>
                    <td>${query.protocol_id}
                    </td>
                    <td>${query.time}
                    </td>
                    <td>${query.reg}
                    </td>
                    <td>${query.struct_loc}
                    </td>
                    <td>${query.active}
                    </td>
                    <td>
                        <form action="queryinfo" method="post">
                            <input type="hidden" value="${token}" name="token">
                            <input type="hidden" value="${query.id}" name="qid">
                            <input type="submit" value="Подробнее">
                        </form>
                    </td>
                </tr>
            </c:forEach>
            </tbody>

        </table>

    </div>

</div>


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="${pageContext.request.contextPath}/resources//js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/resources//js/bootstrap.min.js"></script>
</body>


</html>


















