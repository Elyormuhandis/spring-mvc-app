<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 18/04/2023
  Time: 17:12
  To change this template use File | Settings | File Templates.
--%>

<%@page session="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Student Page</title>
</head>
<body>
<div style="display:flex; flex-direction: column; align-items: flex-start; padding: 0 400px; width: 1134px;">
    <div style="width: 500px; display: flex; justify-content: space-between; align-items: center; margin-top: 5rem;">
        <h1 style="color: #323245">Students List</h1>
        <a href="/form" style="text-decoration: none; padding: 5px 8px; border: 1px solid #626262; color: orangered; ">+ Add student</a>
    </div>
    <table>
        <thead>
        <tr>
            <td>Hashcode</td>
            <td>Full name</td>
            <td>Age</td>
            <td>Phone number</td>
        </tr>
        </thead>
            <c:forEach items="${students}" var="student">
        <tr>
            <td><c:out value="${student.hashCode()}" /></td>
            <td><c:out value="${student.fullName}" /></td>
            <td><c:out value="${student.age}" /></td>
            <td><c:out value="${student.phoneNumber}" /></td>
        </tr>
        </c:forEach>
</div>
</table>
<h1 style="color: green;">${message}</h1>
</body>
</html>
