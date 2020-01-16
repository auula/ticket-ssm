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
				<li><a href="<%=basePath%>/admin/userList"> <i class="iconfont left-nav-li"
						lay-tips="会员管理">&#xe6b8;</i> <cite>会员管理</cite> <i
						class="iconfont nav_right">&#xe697;</i></a></li>
				<li><a href="<%=basePath%>/admin/orderList"> <i class="iconfont left-nav-li"
						lay-tips="订单管理">&#xe723;</i> <cite>订单管理</cite> <i
						class="iconfont nav_right">&#xe697;</i></a></li>

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
		<div class="layui-fluid">
			<div class="layui-row layui-col-space15">
				<div class="layui-col-md12">
					<div class="layui-card">
						<div class="layui-card-body ">
							<blockquote class="layui-elem-quote">
								欢迎管理员： <span class="x-red">test</span>！
							</blockquote>
						</div>
					</div>
				</div>
				<div class="layui-col-md12">
					<div class="layui-card">
						<div class="layui-card-header">数据统计</div>
						<div class="layui-card-body ">
							<ul
								class="layui-row layui-col-space10 layui-this x-admin-carousel x-admin-backlog">
								<li class="layui-col-md2 layui-col-xs6"><a
									href="javascript:;" class="x-admin-backlog-body">
										<h3>用户数</h3>
										<p>
											<cite>66</cite>
										</p>
								</a></li>
								<li class="layui-col-md2 layui-col-xs6"><a
									href="javascript:;" class="x-admin-backlog-body">
										<h3>景点数</h3>
										<p>
											<cite>12</cite>
										</p>
								</a></li>
								
							</ul>
						</div>
					</div>
				</div>
				
				
				<div class="layui-col-md12">
					<div class="layui-card">
						<div class="layui-card-header">开发团队&技术栈</div>
						<div class="layui-card-body ">
							<table class="layui-table">
								<tbody>
									<tr>
										<th>技术栈:</th>
										<td>Java Spring SpringMVC Mybatis & bootstrap layui jQuery sweetalert2</td>
									</tr>
									<tr>
										<th>开发者</th>
										<td>hgy</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>
	</div>
	<div class="page-content-bg"></div>

</body>

</html>