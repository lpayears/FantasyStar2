<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <script type="text/javascript" src="assets/js/jquery.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap.js"></script>
    <link rel="stylesheet" href="assets/css/bootstrap.css">
</head>
<body>

<h1>Login Page</h1>
<div class="login-div">
    <form class="form-horizontal" id="login-form" method="post">
        <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">用户名</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" name="adminName"
                       placeholder="username">
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
            <div class="col-sm-6">
                <input type="password" class="form-control" name="password"
                       placeholder="password">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button id="submit" class="btn btn-primary" type="button">登录</button>
            </div>
        </div>
    </form>
</div>

<script type="text/javascript">
    $(function () {
        $("#submit").click(function () {
            $.ajax({
                url: '${APP_PATH}/adminLogin',
                method: 'post',
                async: false,
                data: $("#login-form").serialize(),
                success: function (result) {
                    //失败处理
                    if (result.code == 200) {
                        alert(result.msg);
                        return;
                    }
                    //成功进行跳转
                    window.location.href = "index.jsp";
                }
            })
        })
    })
</script>

</body>
</html>