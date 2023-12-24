<%@ page contentType="text/html;charset=UTF-8" %>

<%@ taglib prefix="layout" tagdir="/WEB-INF/tags/layouts" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<layout:centered>
    <jsp:attribute name="title">新增宠物</jsp:attribute>
    <jsp:body>
        <div class="card p-2">
        <form method="post">
            <div class="mb-3">
                <label for="name" class="form-label">名字</label>
                <input required name="name" class="form-control" id="name">
            </div>

            <div class="mb-3">
                <label for="breed" class="form-label">品种</label>
                <select id="breed" class="form-select" name="breed">
                    <option value="0" selected>-- 请选择 --</option>
                    <option value="1">狗</option>
                    <option value="2">猫</option>
                    <option value="3">鸟</option>
                    <option value="4">兔</option>
                </select>
            </div>

            <div class="mt-3 d-flex justify-content-between">
                <div class="col-auto">
                    <label for="name" class="form-label">性别</label>

                    <div class="row">
                        <div class="col-auto">
                            <div class="form-check">
                                <input required class="form-check-input" value="1" type="radio" name="sex"
                                       id="sex_male">
                                <label class="form-check-label" for="sex_male">雄</label>
                            </div>
                        </div>

                        <div class="col-auto">
                            <div class="form-check">
                                <input required class="form-check-input" value="2" type="radio" name="sex"
                                       id="sex_female">
                                <label class="form-check-label" for="sex_female">雌</label>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-auto">
                    <label for="birthday" class="form-label">生日</label>
                    <input required name="birthday" type="datetime-local" class="form-control" id="birthday"/>
                </div>
            </div>

            <div class="mb-3">
                <label for="description" class="form-label">简介</label>
                <textarea name="description" class="form-control" id="description"></textarea>
            </div>

            <button type="submit" class="btn btn-primary">提交</button>
        </form>
    </jsp:body>
</layout:centered>