<%@ page contentType="text/html;charset=UTF-8" %>

<%@ taglib prefix="layout" tagdir="/WEB-INF/tags/layouts" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<layout:centered>
    <jsp:attribute name="title">服务器错误</jsp:attribute>
    <jsp:body>
        <h1>${message}</h1>
        <a href="<c:url value="/list"/>" class="mt-2 btn btn-lg btn-primary">返回列表</a>
    </jsp:body>
</layout:centered>