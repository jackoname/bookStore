<%--
  Created by IntelliJ IDEA.
  User: 欧阳洪健
  Date: 2022/5/29
  Time: 20:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户展示页面</title>
</head>
<body>
<h2>用户展示</h2>
数据：：${requestScope.get('list').userid}
</body>
</html>
