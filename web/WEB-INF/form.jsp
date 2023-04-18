<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 18/04/2023
  Time: 18:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add student</title>
</head>
<body style="padding: 200px">
<form style="display: flex; flex-direction: column" action="/add" method="post">
    <input style="margin-bottom: 10px; padding: 10px 20px; border:none; outline: none; background-color: #b2b2b2;" type="text" name="fullName" placeholder="enter your full name">
    <input style="margin-bottom: 10px; padding: 10px 20px; border:none; outline: none; background-color: #b2b2b2;"   type="text" name="age" placeholder="enter your age">
    <input style="margin-bottom: 10px; padding: 10px 20px; border:none; outline: none; background-color: #b2b2b2;"   type="text" name="phone" placeholder="enter your phone">
    <button style="margin-bottom: 10px; padding: 5px 8px; border:none; outline: none; background-color: #323245; color: azure" type="submit">Add</button>
</form>

</body>
</html>
