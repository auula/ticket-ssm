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
<title>后台登录中心</title>
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="stylesheet" href="<%=basePath%>/static/admin/css/font.css">
<link rel="stylesheet" href="<%=basePath%>/static/admin/css/xadmin.css">
<script src="<%=basePath%>/static/admin/lib/layui/layui.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="<%=basePath%>/static/admin/js/xadmin.js"></script>
</head>
<body>
	<div class="layui-fluid">
		<div class="layui-row">
			<form class="layui-form">

				<div class="layui-form-item">
					<label for="username" class="layui-form-label"> <span
						class="x-red">*</span>用户姓名
					</label> <input type="hidden" name="uid" id="uid" value="${uid}">
					<div class="layui-input-inline">
						<input type="text" id="username" name="username" required=""
							lay-verify="required" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label for="password" class="layui-form-label"> <span
						class="x-red">*</span>用户密码
					</label>
					<div class="layui-input-inline">
						<input type="text" id="password" name="password" required=""
							lay-verify="required" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label for="L_repass" class="layui-form-label"></label>
					<button class="layui-btn" lay-filter="add" lay-submit="">修改</button>
				</div>
			</form>
		</div>
	</div>
	<script>
		layui.use([ 'form', 'layer' ], function() {
			
			var form = layui.form, layer = layui.layer;
			form.on('submit(add)', function(data) {
				$.post("<%=basePath%>/admin/editUserform", data.field,function(result) {
							if (result.code == 200) {
								//发异步，把数据提交给php
								layer.alert("更新成功！", {
									icon : 6
								}, function() {
									// 获得frame索引
									var index = parent.layer.getFrameIndex(window.name);
									//关闭当前frame
									window.location.href= "<%=basePath%>/admin/userList";
									parent.layer.close(index);
								});
							}

						});
				return false;
			});
		});

		//监听提交
	</script>
</body>

</html>