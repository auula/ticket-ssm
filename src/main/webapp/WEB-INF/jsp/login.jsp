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
<script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
<style>
@font-face {
	font-family: sy;
	src: url('<%=basePath%>/static/fonts/sy.ttf');
}
</style>
</head>
<body>
	<div
		class="navbar navbar-fixed-top d-flex flex-column flex-md-row align-items-center p-2  px-md-4 mb-3 bg-white border-bottom shadow-sm">
		<h5 class="my-0  font-weight-normal mr-md-3 "
			style="font-family: sy;">肇庆市旅游</h5>
		<nav class="my-0 mr-md-auto font-weight-normal">
			<div class="form-inline mt-2 mt-md-0" >
				<input class="form-control  mr-sm-2"  id="search-text" type="text" placeholder="搜索景点"
					aria-label="Search">
				<button class="btn btn-outline-primary my-2 my-sm-0" id="btn-search"   type="button">Search</button>
			</div>
		</nav>
		<nav class="my-2 my-md-0 mr-md-3">
			<a class="p-2 text-dark" href="<%=basePath%>">首页</a> <a class="p-2 text-dark"
				href="#">最新景点</a>
		</nav>
		
		<c:if test="${sessionScope.loginUserInfo == null}">
			<nav class="my-2 my-md-0 mr-md-3">
				<a class="btn btn-outline-primary px-md-4 "
				href="<%=basePath%>/login">登 录 </a>
				<a class="btn btn-outline-dark px-md-4  " href="<%=basePath%>/register">注册</a>
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
                    <a class="dropdown-item" href="<%=basePath%>/order/list">购买记录</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="<%=basePath%>/user/logout">Logout</a>
                </div>
            </div>
        </nav>
		</c:if>
	</div>


	<div class="container col-md-8" style="height: 560px;">
		<div class="card">
			<div class="card-header text-center header">
				<h5>游客登录</h5>
			</div>
			<c:if test="${msg !=null }">
				<div class="alert alert-danger text-center" role="alert">${msg}</div>
			</c:if>
			<div class="card-body mb-5 text-center ">

				<form action="<%=basePath%>/user/login" method="post">
					<c:if test="${idmsg != null}">
						<span style="color: red;">${idmsg}</span>
					</c:if>
					<div class="input-group col-md-6 mb-3  container">
						<div class="input-group-prepend ">
							<span class="input-group-text"> <ion-icon name="person"></ion-icon>
							</span>
						</div>
						<input type="text" class="form-control " placeholder="身份证号"
							id="usr" name="idcard">
					</div>
					<c:if test="${pwdmsg != null}">
						<span style="color: red;">${pwdmsg}</span>
					</c:if>
					<div class="input-group col-md-6 mb-3 container">
						<div class="input-group-prepend ">
							<span class="input-group-text"> <ion-icon name="key"></ion-icon>
							</span>
						</div>
						<input type="password" class="form-control" placeholder="用户密码"
							id="usr" name="password">
					</div>
					<c:if test="${codemsg != null}">
						<span style="color: red;">${codemsg}</span>
					</c:if>
					<div class="input-group col-md-6 mb-3 container" id="captcha_img">
						<div class="input-group-prepend ">
							<img src="<%=basePath%>/captcha/img" class="card-img-top"
								alt="Deencode">
						</div>
					</div>
					<div class="input-group col-md-6 mb-3 container">
						<div class="input-group-prepend ">
							<span class="input-group-text"> <ion-icon name="create"></ion-icon>
							</span>
						</div>
						<input type="text" class="form-control" placeholder="验证码" id="usr"
							name="captcha">
					</div>

					<button type="submit" class="btn btn-primary col-md-3">登 录</button>
					<a href="<%=basePath%>/register" style="text-decoration: none">没有账号？去注册！</a>
				</form>

			</div>
		</div>
	</div>
	<hr>
	<footer class="footer navbar-fixed-bottom">
		<div class="container">
			<p>© Company 2017-2019</p>
		</div>
	</footer>

	<script src="<%=basePath%>/static/js/jquery.min.js"></script>
	<script src="<%=basePath%>/static/js/bootstrap.bundle.min.js"></script>
	<script src="<%=basePath%>/static/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$("#captcha_img").click(function () {
	    	$(".card-img-top").attr("src",'<%=basePath%>/captcha/img?args='+ new Date().getTime());
		})
		
		$("#btn-search").click(function() {
			var tempKey = $('#search-text').val();
			window.location.href = '<%=basePath%>/search?key=' + tempKey;
		});
	
	</script>
</body>
</html>