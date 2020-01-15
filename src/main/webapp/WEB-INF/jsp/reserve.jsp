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
	<link rel="stylesheet" href="<%=basePath%>/static/css/bootstrap-grid.min.css">
	<link rel="stylesheet" href="<%=basePath%>/static/css/bootstrap-reboot.css">
	<link rel="stylesheet" href="<%=basePath%>/static/css/font-awesome.min.css">
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
			<div class="form-inline mt-2 mt-md-0">
				<input class="form-control  mr-sm-2" id="search-text" type="text" placeholder="搜索景点"
					aria-label="Search">
				<button class="btn btn-outline-primary my-2 my-sm-0" id="btn-search" type="button">Search</button>
			</div>
		</nav>
		<nav class="my-2 my-md-0 mr-md-3">
			<a class="p-2 text-dark" href="<%=basePath%>">首页</a> <a class="p-2 text-dark" href="#">最新景点</a>
		</nav>
		<c:if test="${sessionScope.loginUserInfo == null}">
			<nav class="my-2 my-md-0 mr-md-3">
				<a class="btn btn-outline-primary px-md-4 " href="<%=basePath%>/login">登 录 </a> <a
					class="btn btn-outline-dark px-md-4  " href="<%=basePath%>/register">注册</a>
			</nav>
		</c:if>
		<c:if test="${sessionScope.loginUserInfo != null}">
			<nav class="my-2 my-md-0 mr-md-3">
				<div class="btn-group px-md-4">
					<button type="button" class="btn btn-primary">${sessionScope.loginUserInfo.getUsername()}</button>
					<button type="button" class="btn btn-primary dropdown-toggle dropdown-toggle-split"
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

	<div class="container">
		<div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
			<h3 class="display-4">Reserve</h3>

		</div>
		<div class="card-deck mb-3 text-center">
			<div class="card mb-4 shadow-sm">
				<div class="card-header">
					<h4 class="my-0 font-weight-normal">${sc.getScenicName()}</h4>
				</div>
				<div class="card-body">
					<h1 class="card-title pricing-card-title">
						￥ ${sc.getScenicPrice()}<small class="text-muted"> / mo</small>
					</h1>
					<ul class="list-unstyled mt-3 mb-4">
						<li>
							<div class="input-group mb-3 col-md-3 container">
								<div class="input-group-prepend">
									<span class="input-group-text">预定</span>
								</div>
								<input type="text" class="form-control" style="text-align: center;" placeholder="?">
								<div class="input-group-append">
									<span class="input-group-text">人数</span>
								</div>

							</div>
						</li>	
						<li>You can view the record after the order is completed</li>
						<li>Total price = (real time unit price * scheduled number of people)</li>
						<li>Voucher = order number</li>

					</ul>
					<button type="button" class="btn btn-lg btn-block btn-outline-primary">提 交 预 定</button>
				</div>
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
		$("#btn-search").click(function () {
			var tempKey = $('#search-text').val();
			window.location.href = '<%=basePath%>/search?key=' + tempKey;
		});
	</script>
</body>


</html>