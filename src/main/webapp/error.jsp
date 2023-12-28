<%@ page contentType="text/html;charset=UTF-8" %>

<%@ taglib prefix="layout" tagdir="/WEB-INF/tags/layouts" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<layout:centered>
    <jsp:attribute name="title">服务器错误</jsp:attribute>
    <jsp:body>
        <div class="text-center flex flex-col gap-2">
            <h1>${message}</h1>
            <a href="<c:url value="/list"/>" class="layui-btn layui-btn-lg layui-btn-primary">返回列表</a>
        </div>
    </jsp:body>
</layout:centered>