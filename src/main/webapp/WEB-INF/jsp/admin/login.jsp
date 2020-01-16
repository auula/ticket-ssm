<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;
%>

<!doctype html>
<html class="x-admin-sm">
<head>
<meta charset="UTF-8">
<title>后台登录</title>
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="stylesheet" href="<%=basePath%>/static/admin/css/font.css">
<link rel="stylesheet" href="<%=basePath%>/static/admin/css/login.css">
<link rel="stylesheet" href="<%=basePath%>/static/admin/css/xadmin.css">
<script type="text/javascript"
	src="<%=basePath%>/static/js/jquery.min.js"></script>
<script src="<%=basePath%>/static/admin/lib/layui/layui.js"
	charset="utf-8"></script>
<!--[if lt IE 9]>
      <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
      <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<style type="text/css">
#in-captcha {
	width: 60%;
}

#captcha {
	float: right;
	display: inline-block;
	/* border: 1px solid #ccc; */
	border-radius: 5px;
	cursor: pointer;
}
</style>
</head>
<body class="login-bg">

	<div class="login layui-anim layui-anim-up">
		<div class="message">管理登录</div>
		<div id="darkbannerwrap"></div>

		<form method="post" class="layui-form">
			<input name="username" placeholder="用户名" type="text"
				lay-verify="required" class="layui-input">
			<hr class="hr15">
			<input name="password" lay-verify="required" placeholder="密码"
				type="password" class="layui-input">
			<hr class="hr15">

			<img src="<%=basePath%>/captcha/img" id="captcha" width="35%"
				height="50px"> <input type="text" name="code"
				lay-verify="required" placeholder="请输入验证码（大写）" class="layui-input"
				id="in-captcha">       


			<hr class="hr15">
			<input value="登录" lay-submit lay-filter="login" style="width: 100%;"
				type="submit">
			<hr class="hr20">
		</form>
	</div>

	<script>
		$("#captcha").click(function () {
    		$("#captcha").attr("src",'<%=basePath%>/captcha/img?args='+ new Date().getTime());
		})
		$(function() {
			layui.use('form', function() {
				var form = layui.form;
				//监听提交
				form.on('submit(login)', function(data) {
					$.post("<%=basePath%>/admin/form",data.field,function(result){
						layer.msg(JSON.stringify(result), function() {
							
						});
					});
					return false;
				});
			});
		})
	</script>
	<!-- 底部结束 -->
</body>
</html>