<%@ page contentType="text/html;charset=UTF-8" %>

<%@ taglib prefix="layout" tagdir="/WEB-INF/tags/layouts" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<layout:centered>
    <jsp:attribute name="title">新增宠物</jsp:attribute>
    <jsp:body>
        <script>
            layui.form.verify({
                breed: value => {
                    if (value === '0') {
                        return '请选择品种'
                    }
                }
            })
        </script>

        <div class="layui-panel p-5">
            <form class="layui-form layui-form-pane" method="post">
                <div class="layui-form-item">
                    <label for="name" class="layui-form-label">名字</label>

                    <div class="layui-input-inline layui-input-wrap">
                        <input name="name" lay-verify="required" class="layui-input" id="name">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label for="breed" class="layui-form-label">品种</label>

                    <div class="layui-input-inline">
                        <select lay-verify="required|breed" id="breed" class="layui-form-select" name="breed">
                            <option value="0" selected>-- 请选择 --</option>
                            <option value="1">狗</option>
                            <option value="2">猫</option>
                            <option value="3">鸟</option>
                            <option value="4">兔</option>
                        </select>
                    </div>
                </div>

                <div class="layui-form-item">
                    <label for="name" class="layui-form-label">性别</label>

                    <div class="layui-input-block">
                        <input layui-verify="required" class="form-check-input" value="1" type="radio" name="sex"
                               id="sex_male" checked>
                        <div lay-radio>雄</div>

                        <input layui-verify="required" class="form-check-input" value="2" type="radio" name="sex"
                               id="sex_female">
                        <div lay-radio>雌</div>
                    </div>
                </div>

                <div class="layui-form-item">
                    <label for="birthday" class="layui-form-label">生日</label>

                    <div class="layui-input-inline layui-input-wrap">
                        <input name="birthday" lay-verify="required" type="datetime-local" class="layui-input"
                               id="birthday">
                    </div>
                </div>

                <div class="layui-form-item layui-form-text">
                    <label for="description" class="layui-form-label">简介</label>

                    <div class="layui-input-block">
                        <textarea name="description" class="layui-textarea" id="description"></textarea>
                    </div>
                </div>

                <div class="flex justify-center">
                    <button lay-filter="validate" type="submit" lay-submit class="layui-btn layui-btn-primary">提交
                    </button>
                </div>
            </form>
        </div>
    </jsp:body>
</layout:centered>