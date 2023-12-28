<%@tag pageEncoding="UTF-8" %>
<%@attribute name="title" fragment="true" %>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!doctype html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel="stylesheet" href="<c:url value="resources/styles/layui.css"/>"/>
    <script src="<c:url value="resources/scripts/layui.js"/>"></script>
    <script src="<c:url value="resources/scripts/uno.js"/>"></script>

    <style>
        :root, body {
            height: 100%;
            font-size: 12px;
        }
    </style>

    <title>
        [宠物管理系统]
        <jsp:invoke fragment="title"/>
    </title>
</head>
<body>
<jsp:doBody/>
</body>
</html>