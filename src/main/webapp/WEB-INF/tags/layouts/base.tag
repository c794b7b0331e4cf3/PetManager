<%@tag pageEncoding="UTF-8" %>
<%@attribute name="title" fragment="true" %>

<!doctype html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

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
<body data-bs-theme="dark">
<jsp:doBody/>
</body>
</html>