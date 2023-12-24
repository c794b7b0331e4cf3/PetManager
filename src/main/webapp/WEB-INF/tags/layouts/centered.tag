<%@tag pageEncoding="UTF-8" %>
<%@attribute name="title" fragment="true" %>

<%@ taglib prefix="layout" tagdir="/WEB-INF/tags/layouts" %>

<layout:base>
    <jsp:attribute name="title"><jsp:invoke fragment="title"/></jsp:attribute>
    <jsp:body>
        <div class="h-100 d-flex flex-column align-items-center justify-content-center">
            <jsp:doBody/>
        </div>
    </jsp:body>
</layout:base>