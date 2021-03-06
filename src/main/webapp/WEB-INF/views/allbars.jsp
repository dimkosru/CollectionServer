<%--
  Created by IntelliJ IDEA.
  User: Дмитрий
  Date: 23.02.2015
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <title>Все шоколадки</title>
  <link rel="stylesheet" href="/resources/css/main.css"/>

</head>

<body>
<h2>Список шоколадок</h2>

<a href="<c:url value='/bars/create' />">Добавить шоколадку</a>
<br/>
<table>
  <tr>
    <td>id</td><td>Название</td><td>Дата изготовления</td><td>Масса</td><td>Комментарий</td><td>Изготовитель</td><td>Превью</td>
  </tr>
  <c:forEach items="${bars}" var="bar">
    <tr>
      <td><a href="<c:url value='/bars/edit/${bar.id}' />">${bar.id}</a></td>
      <td>${bar.name}</td>
      <td>${bar.date}</td>
      <td>${bar.weight}</td>
      <td>${bar.additional}</td>
      <td>${bar.brand.name}</td>
    <td><img src="/resources/tumbs/${bar.id}.png" height="64" alt=""/></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>