<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <h5 class="my-0 mr-md-auto font-weight-normal " style="font-family: sy;">肇庆市旅游</h5>
        <nav class="my-2 my-md-0 mr-md-3">
        	<a class="p-2 text-dark" href="<%=basePath%>">首页</a>
            <a class="p-2 text-dark" href="#">热门景点</a>
            <a class="p-2 text-dark" href="#">最新景点</a>
        </nav>
        <nav class="my-2 my-md-0 mr-md-3">
            <a class="btn btn-outline-primary px-md-4 " href="<%=basePath%>/login">登 录</a>
            <a class="btn btn-outline-dark px-md-4  " href="<%=basePath%>/register">注 册</a>
        </nav>
    </div>

    <div class="album py-5 bg-light bg-white">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <img width="100%" height="225"
                            src="https://dimg08.c-ctrip.com/images/10091800000158k9e21A6_C_1600_1200_Mtg_7.jpg"
                            class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text">
                                <p>景点名称: 鼎湖山同古屋生态旅游度假村.</p>
                                <p>景点地址: 凤凰镇同古村旧学校(近九龙湖)</p>
                            </p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-sm btn-outline-primary">查看详情</button>
                                    <button type="button" class="btn btn-sm btn-outline-success">购买门票</button>
                                </div>
                                <span class="badge badge-pill badge-danger">热门</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <img width="100%" height="225"
                            src="https://dimg08.c-ctrip.com/images/100911000000r9bhvA606_R_1600_10000_Mtg_7.jpg"
                            class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text">
                                <p>景点名称: 肇庆古城墙(宋城一路).</p>
                                <p>景点地址: 肇庆市端州区正西路6号</p>
                            </p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-sm btn-outline-primary">查看详情</button>
                                    <button type="button" class="btn btn-sm btn-outline-success">购买门票</button>
                                </div>
                                <span class="badge badge-pill badge-warning">最新</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <img width="100%" height="225"
                            src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1578664325747&di=3f6999d5771753949cb3d43af1c1eb9c&imgtype=0&src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fupload%2Fupc%2Ftx%2Fwallpaper%2F1307%2F05%2Fc0%2F22969541_1373004111610.jpg"
                            class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text">
                                <p>景点名称: 鼎湖山同古屋生态旅游度假村.</p>
                                <p>景点地址: 凤凰镇同古村旧学校(近九龙湖)</p>
                            </p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-sm btn-outline-primary">查看详情</button>
                                    <button type="button" class="btn btn-sm btn-outline-success">购买门票</button>
                                </div>
                                <small class="text-muted">9 mins</small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <img width="100%" height="225"
                            src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1578664325747&di=3f6999d5771753949cb3d43af1c1eb9c&imgtype=0&src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fupload%2Fupc%2Ftx%2Fwallpaper%2F1307%2F05%2Fc0%2F22969541_1373004111610.jpg"
                            class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text">
                                <p>景点名称: 鼎湖山同古屋生态旅游度假村.</p>
                                <p>景点地址: 凤凰镇同古村旧学校(近九龙湖)</p>
                            </p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-sm btn-outline-primary">查看详情</button>
                                    <button type="button" class="btn btn-sm btn-outline-success">购买门票</button>
                                </div>
                                <small class="text-muted">9 mins</small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <img width="100%" height="225"
                            src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1578664325747&di=3f6999d5771753949cb3d43af1c1eb9c&imgtype=0&src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fupload%2Fupc%2Ftx%2Fwallpaper%2F1307%2F05%2Fc0%2F22969541_1373004111610.jpg"
                            class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text">
                                <p>景点名称: 鼎湖山同古屋生态旅游度假村.</p>
                                <p>景点地址: 凤凰镇同古村旧学校(近九龙湖)</p>
                            </p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-sm btn-outline-primary">查看详情</button>
                                    <button type="button" class="btn btn-sm btn-outline-success">购买门票</button>
                                </div>
                                <small class="text-muted">9 mins</small>
                            </div>
                        </div>
                    </div>
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
</body>


</html>