<%@ page contentType="text/html;charset=UTF-8" %>

<%@ taglib prefix="layout" tagdir="/WEB-INF/tags/layouts" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<layout:centered>
    <jsp:attribute name="title">首页</jsp:attribute>
    <jsp:body>
        <a href="<c:url value="/list"/>" class="layui-btn layui-btn-lg layui-btn-primary">点击进入系统</a>
    </jsp:body>
</layout:centered>