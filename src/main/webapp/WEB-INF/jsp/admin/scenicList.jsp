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
<body class="index">
	<!-- 顶部开始 -->
	<div class="container">
		<div class="logo">
			<a href="<%=basePath%>/admin/main">售票系统后台</a>
		</div>
		<div class="left_open">
			<a><i title="展开左侧栏" class="iconfont">&#xe699;</i></a>
		</div>

		<ul class="layui-nav right" lay-filter="">
			<li class="layui-nav-item"><a href="javascript:;">admin</a>
				<dl class="layui-nav-child">
					<!-- 二级菜单 -->
					<dd>
						<a onclick="xadmin.open('个人信息','http://www.baidu.com')">个人信息</a>
					</dd>
					<dd>
						<a onclick="xadmin.open('切换帐号','http://www.baidu.com')">切换帐号</a>
					</dd>
					<dd>
						<a href="./login.html">退出</a>
					</dd>
				</dl></li>
			<li class="layui-nav-item to-index"><a href="/">前台首页</a></li>
		</ul>
	</div>
	<!-- 顶部结束 -->
	<!-- 中部开始 -->
	<!-- 左侧菜单开始 -->
	<div class="left-nav">
		<div id="side-nav">
			<ul id="nav">
				<li><a href="<%=basePath%>/admin/userList"> <i
						class="iconfont left-nav-li" lay-tips="会员管理">&#xe6b8;</i> <cite>会员管理</cite>
						<i class="iconfont nav_right">&#xe697;</i></a></li>
				<li><a href="<%=basePath%>/admin/orderList"> <i
						class="iconfont left-nav-li" lay-tips="订单管理">&#xe723;</i> <cite>订单管理</cite>
						<i class="iconfont nav_right">&#xe697;</i></a></li>

				<li><a href="<%=basePath%>/admin/scenicList"> <i class="iconfont left-nav-li"
						lay-tips="系统统计">&#xe6ce;</i> <cite>景区管理</cite> <i
						class="iconfont nav_right">&#xe697;</i></a></li>


			</ul>
		</div>
	</div>
	<!-- <div class="x-slide_left"></div> -->
	<!-- 左侧菜单结束 -->
	<!-- 右侧主体开始 -->
	<div class="page-content">

		<div class="layui-fluid" style="height: 100%; overflow: auto;">
			<div class="layui-row layui-col-space15">
				<div class="layui-col-md12">

					<div class="layui-card">
						<div class="layui-card-body ">
							<button class="layui-btn"
								onclick="xadmin.open('添加用户','<%=basePath%>/admin/addScenic',500,500)">
								<i class="layui-icon"></i>添加
							</button>
							<table class="layui-table layui-form">
								<thead>
									<tr>
										<th>景区ID</th>
										<th>景点名称</th>
										<th>创建时间</th>
										<th>单人价格</th>
										<th>景点热点</th>
										<th>宣传图片</th>
										<th width="250">操作</th>
								</thead>
								<tbody class="x-cate">
									<tr cate-id='1' fid='0'>
									<c:forEach items="${ss}" var="item">
										<td>${item.getSid()}</td>
										<td>${item.getScenicName()}</td>
										<td>${item.getCreateTime()}</td>
										<td>${item.getScenicPrice()}</td>
										<td>${item.getScenicStar()}</td>
										<td><button class="layui-btn layui-btn layui-btn-xs"
												onclick="xadmin.open('宣传图','${item.getScenicPic()}')">
												<i class="layui-icon">&#xe642;</i>查看大图
											</button></td>
										<td class="td-manage">
											
											<button class="layui-btn layui-btn-warm layui-btn-xs" onclick="javascript:window.location.href='<%=basePath%>/Scenic/details/${item.getSid()}'"><i class="layui-icon"></i>查看详情</button>
											<button class="layui-btn-danger layui-btn layui-btn-xs"
												onclick="member_del(this,'要删除的id')" href="javascript:;">
												<i class="layui-icon">&#xe640;</i>删除
											</button>
										</td>
									</tr>
									</c:forEach>
									
								</tbody>
							</table>
						</div>
						<!-- <div class="layui-card-body ">
							<div class="page">
								<div>
									<a class="prev" href="">&lt;&lt;</a> <a class="num" href="">1</a>
									<span class="current">2</span> <a class="num" href="">3</a> <a
										class="num" href="">489</a> <a class="next" href="">&gt;&gt;</a>
								</div>
							</div>
						</div> -->
					</div>
				</div>
			</div>
		</div>

	</div>

	<div class="page-content-bg"></div>
	<script>
		layui.use([ 'form' ], function() {
			form = layui.form;

		});

		/*用户-删除*/
		function member_del(obj, id) {
			layer.confirm('确认要删除吗？', function(index) {
				//发异步删除数据
				$(obj).parents("tr").remove();
				layer.msg('已删除!', {
					icon : 1,
					time : 1000
				});
			});
		}

		
	</script>
</body>

</html>