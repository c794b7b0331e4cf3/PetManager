<%@ page contentType="text/html;charset=UTF-8" %>

<%@ taglib prefix="layout" tagdir="/WEB-INF/tags/layouts" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<layout:base>
    <jsp:attribute name="title">宠物列表</jsp:attribute>
    <jsp:body>
        <div class="container">
            <div class="row mt-3">
                <div class="col">
                    <form>
                        <div style="gap: 5px;" class="d-flex g-2 align-items-center">
                            <label for="breed">品种: </label>
                            <select id="breed" class="form-select w-50" name="breed">
                                <option ${breed == null || breed == 0 ? 'selected' : null} value="0">
                                    -- 请选择 --
                                </option>

                                <option ${breed == 1 ? 'selected' : null} value="1">狗</option>
                                <option ${breed == 2 ? 'selected' : null} value="2">猫</option>
                                <option ${breed == 3 ? 'selected' : null} value="3">鸟</option>
                                <option ${breed == 4 ? 'selected' : null} value="4">兔</option>
                            </select>

                            <button type="submit" class="btn btn-primary">查询</button>
                        </div>
                    </form>
                </div>

                <div class="col">
                    <div class="d-flex justify-content-end">
                        <a href="<c:url value="/create"/>" class="btn btn-primary">新建</a>
                    </div>
                </div>
            </div>

            <div class="mt-3">
                <table class="table table-dark table-striped">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>名字</th>
                        <th>品种</th>
                        <th>性别</th>
                        <th>生日</th>
                        <th>简介</th>
                    </tr>
                    </thead>

                    <tbody>
                    <c:forEach var="pet" items="${pets}">
                        <tr>
                            <td>${pet.getPetId()}</td>
                            <td>${pet.getPetName()}</td>

                            <td>
                                <c:choose>
                                    <c:when test="${pet.getPetBreed() == 1}">狗</c:when>
                                    <c:when test="${pet.getPetBreed() == 2}">猫</c:when>
                                    <c:when test="${pet.getPetBreed() == 3}">鸟</c:when>
                                    <c:when test="${pet.getPetBreed() == 4}">兔</c:when>
                                    <c:otherwise>未知</c:otherwise>
                                </c:choose>
                            </td>

                            <td>
                                <c:choose>
                                    <c:when test="${pet.getPetSex() == 1}">雄</c:when>
                                    <c:when test="${pet.getPetSex() == 2}">雌</c:when>
                                    <c:otherwise>未知</c:otherwise>
                                </c:choose>
                            </td>

                            <td>${pet.getBirthday()}</td>
                            <td>${pet.getDescription()}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </jsp:body>
</layout:base>