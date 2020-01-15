<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;
%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>肇庆市旅游门票预售系统</title>
<link rel="stylesheet" href="<%=basePath%>/static/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=basePath%>/static/css/bootstrap-grid.min.css">
<link rel="stylesheet"
	href="<%=basePath%>/static/css/bootstrap-reboot.css">
<link rel="stylesheet"
	href="<%=basePath%>/static/css/font-awesome.min.css">
<style>
@font-face {
	font-family: sy;
	src: url('<%=basePath%>/static/fonts/sy.ttf');
}
</style>
</head>

<body>
	<div
		class="navbar-fixed-top d-flex flex-column flex-md-row align-items-center p-2  px-md-4 mb-3 bg-white border-bottom shadow-sm">
		<h5 class="my-0  font-weight-normal mr-md-3" style="font-family: sy;">肇庆市旅游</h5>
		<nav class="my-0 mr-md-auto font-weight-normal">
			<div class="form-inline mt-2 mt-md-0" >
				<input class="form-control  mr-sm-2"  id="search-text" type="text" placeholder="搜索景点"
					aria-label="Search">
				<button class="btn btn-outline-primary my-2 my-sm-0" id="btn-search"   type="button">Search</button>
			</div>
		</nav>
		<nav class="my-2 my-md-0 mr-md-3">
			<a class="p-2 text-dark" href="<%=basePath%>">首页</a> <a
				class="p-2 text-dark" href="#">最新景点</a>
		</nav>
		<c:if test="${sessionScope.loginUserInfo == null}">
			<nav class="my-2 my-md-0 mr-md-3">
				<a class="btn btn-outline-primary px-md-4 "
					href="<%=basePath%>/login">登 录 </a> <a
					class="btn btn-outline-dark px-md-4  "
					href="<%=basePath%>/register">注册</a>
			</nav>
		</c:if>
		<c:if test="${sessionScope.loginUserInfo != null}">
			<nav class="my-2 my-md-0 mr-md-3">
				<div class="btn-group px-md-4">
					<button type="button" class="btn btn-primary">${sessionScope.loginUserInfo.getUsername()}</button>
					<button type="button"
						class="btn btn-primary dropdown-toggle dropdown-toggle-split"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<span class="sr-only">Toggle Dropdown</span>
					</button>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="<%=basePath%>/user/shop">购买记录</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="<%=basePath%>/user/logout">Logout</a>
					</div>
				</div>
			</nav>
		</c:if>
	</div>

	<div class="album py-5 bg-light bg-white">
		<div class="container">
			<div class="row">
				<c:forEach items="${ss}" var="item">
					<div class="col-md-4">
						<div class="card mb-4 shadow-sm">
							<img width="100%" height="225" src="${item.getScenicPic()}"
								class="card-img-top" alt="...">
							<div class="card-body">
								<p class="card-text">
								<p>景点名称: ${item.getScenicName() }</p>
								<p>景点地址: ${item.getScenicAddress()}</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<a href="<%=basePath %>/Scenic/details/${item.getSid()}" class="btn btn-sm btn-outline-primary">查看详情</a>
										<a   class="btn btn-sm btn-outline-success">购买门票</a>
									</div>
									<!-- 景点的star数大于或者等于20才会显示热门 -->
									<c:if test="${item.getScenicStar() >= 20}">
										<span class="badge badge-pill badge-danger">热门</span>
									</c:if>
									
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>

	<hr>
	<footer class="container">
		<p>© Company 2017-2019</p>
	</footer>
	<script src="<%=basePath%>/static/js/jquery.min.js"></script>
	<script src="<%=basePath%>/static/js/bootstrap.bundle.min.js"></script>
	<script src="<%=basePath%>/static/js/bootstrap.min.js"></script>
	<script type="text/javascript">
	$("#btn-search").click(function() {
		var tempKey = $('#search-text').val();
		window.location.href = '<%=basePath%>/search?key=' + tempKey;
	});
	</script>
</body>


</html>