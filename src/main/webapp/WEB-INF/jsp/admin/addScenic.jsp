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
			<form  class="layui-form layui-form-pane">
				<div class="layui-form-item">
					<label for="name" class="layui-form-label"> <span
						class="x-red">*</span>景点名称
					</label>
					<div class="layui-input-inline">
						<input type="text" id="sc_name" name="sc_name" required=""
							lay-verify="required" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label for="name" class="layui-form-label"> <span
						class="x-red">*</span>景点价格
					</label>
					<div class="layui-input-inline">
						<input type="number" maxlength="3" id="sc_price" name="sc_price"
							required="" lay-verify="required" autocomplete="off"
							class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label for="name" class="layui-form-label"> <span
						class="x-red">*</span>景点地址
					</label>
					<div class="layui-input-inline" style="width: 280px;">
						<input type="text" id="sc_address" name="sc_address" required=""
							lay-verify="required" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label for="name" class="layui-form-label"> <span
						class="x-red">*</span>宣传图片
					</label>
					<div class="layui-input-inline" style="margin-left: 5px;">
						<button type="button" class="layui-btn" id="pic_upload">
							<i class="layui-icon">&#xe67c;</i>上传图片
						</button>
					</div>
				</div>

				<div class="layui-form-item layui-form-text">
					<label for="desc" class="layui-form-label"> 景点详情 </label>
					<div class="layui-input-block">
						<textarea placeholder="请输入内容" id="sc_desc" name="sc_desc"
							class="layui-textarea"></textarea>
					</div>
				</div>
				<div class="layui-form-item">
					<button class="layui-btn" lay-submit="" lay-filter="add">增加</button>
				</div>
			</form>
		</div>
	</div>
	<script>
		layui.use([ 'form', 'layer', 'upload' ], function() {
			var picUrl;
			$ = layui.jquery;
			var form = layui.form, layer = layui.layer;
			var upload = layui.upload;
			//监听提交
			form.on('submit(add)', function(data) {
				console.log(data);
				var formData = {
						sc_name : $('#sc_name').val(),
						sc_price : $('#sc_price').val(),
						sc_address: $('#sc_address').val(),
						sc_desc: $('#sc_desc').val(),
						sc_pic : picUrl
				}
				console.log(formData)
				//发异步，把数据提交给php
				$.post("<%=basePath%>/admin/addScform",formData,function(result) {
					if (result.code == 200) {
						layer.alert("增加成功", {
							icon : 6
						}, function() {
							// 获得frame索引
							var index = parent.layer.getFrameIndex(window.name);
							//关闭当前frame
							parent.layer.close(index);
						});
						return false;
					}
				});
				
			});
			//执行实例
			var uploadInst = upload.render({
				elem : '#pic_upload' //绑定元素
				,
				url : '<%=basePath%>/admin/pic_upload/' //上传接口
				,
				done : function(res) {
					//上传完毕回调
					console.log(res);
					if (res.code == 200) {
						picUrl = res.pic
						layer.open({
							title : '提示',
							content : '宣传图片上传成功! \n UUID = '+res.pic
						});
					}
				},
				error : function() {
					//请求异常回调
				}
			});

		});
	</script>
</body>

</html>