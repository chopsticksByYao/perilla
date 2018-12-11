<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" type="text/css" href="resource/bootstrap-4.0.0/css/bootstrap.min.css">
<script src="resource/jquery/jquery-3.3.1.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="resource/bootstrap-4.0.0/js/bootstrap.min.js"></script>
<style>
body {
	position: relative;
}

.nav-pills {
	top: 10%;
	position: fixed;
}

a.dropdown-item:hover {
	background-color: #2571BD;
}

.bg-color1 {
	background-color: rgb(221, 215, 215);
}

.bg-color1-top {
	background-color: rgb(160, 125, 197);
}

footer.footer-css {
	font-size: 12px;
	color: #999;
	margin: 0 auto;
	width: 100%;
	text-align: center;
	padding: 20px 0;
	background: #f6f6f6;
}

a.footer-css {
	color: #999;
	text-decoration: none;
	cursor: pointer;
}

a.footer-css:hover {
	color: #64854c;
	text-decoration: none;
}

.progress-style {
	height: 20px;
}
</style>
</head>
<body data-spy="scroll" data-target="#myScrollspy" data-offset="1">
 <nav class="navbar navbar-expand-md bg-dark navbar-dark">
  <a class="navbar-brand" href="#">Perilla</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
   <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
   <ul class="navbar-nav ">
    <li class="nav-item">
     <a class="nav-link" href="#">首页</a>
    </li>
    <li class="nav-item">
     <a class="nav-link" href="#">笔记</a>
    </li>
    <li class="nav-item">
     <a class="nav-link" href="#">代码样例</a>
    </li>
    <li class="nav-item">
     <a class="nav-link" href="#">便捷工具</a>
    </li>
   </ul>
   <ul class="navbar-nav ml-auto">
    <!-- Dropdown -->
    <li class="nav-item dropdown">
     <a class="nav-link dropdown-toggle" id="navbardrop" data-toggle="dropdown">
      <img src="resource/img/dcat.gif" alt="logo" class="img-circle" style="width: 35px; border-radius: 50%" />
     </a>
     <div class="dropdown-menu bg-dark" style="min-width: 100%;">
      <a class="dropdown-item text-white" href="#">设置</a>
      <a class="dropdown-item text-white" href="#">更换皮肤</a>
      <a class="dropdown-item text-white" href="#">商城</a>
     </div>
    </li>
   </ul>
   <ul class="navbar-nav">
    <li class="nav-item">
     <a class="nav-link" href="#">退出</a>
    </li>
   </ul>
  </div>
 </nav>
 <br>
 <div class="container-fluid">
  <div class="row">
   <div class="col-md-1"></div>
   <div class="col-sm-12 col-md-10">
    <div id="section1">
     <nav class="breadcrumb">
      <h5>最近动态</h5>
     </nav>
     <div id="demo" class="carousel slide" data-ride="carousel">
      <!-- 指示符 -->
      <ul class="carousel-indicators">
       <li data-target="#demo" data-slide-to="0" class="active"></li>
       <li data-target="#demo" data-slide-to="1"></li>
       <li data-target="#demo" data-slide-to="2"></li>
      </ul>
      <!-- 轮播图片 -->
      <div class="carousel-inner">
       <div class="carousel-item active">
        <img src="http://static.runoob.com/images/mix/img_fjords_wide.jpg" style="width: 100%;">
       </div>
       <div class="carousel-item">
        <img src="http://static.runoob.com/images/mix/img_nature_wide.jpg" style="width: 100%;">
       </div>
       <div class="carousel-item">
        <img src="http://static.runoob.com/images/mix/img_mountains_wide.jpg" style="width: 100%;">
       </div>
      </div>
      <!-- 左右切换按钮 -->
      <a class="carousel-control-prev" href="#demo" data-slide="prev">
       <span class="carousel-control-prev-icon"></span>
      </a>
      <a class="carousel-control-next" href="#demo" data-slide="next">
       <span class="carousel-control-next-icon"></span>
      </a>
     </div>
    </div>
    <div id="section2">
     <nav class="breadcrumb">
      <h5>跑批调度</h5>
     </nav>
     <div class="progress progress-style">
      <div class="progress-bar progress-bar-striped progress-bar-animated" style="width: 30%"></div>
     </div>
     <br>
     <div class="progress progress-style">
      <div class="progress-bar bg-success progress-bar-animated progress-bar-striped"></div>
     </div>
     <br>
     <div class="progress progress-style">
      <div class="progress-bar bg-info progress-bar-animated progress-bar-striped" style="width: 50%">10</div>
     </div>
     <br>
     <div class="progress progress-style">
      <div class="progress-bar bg-warning progress-bar-animated progress-bar-striped" style="width: 60%">20</div>
     </div>
     <br>
     <div class="progress progress-style">
      <div class="progress-bar bg-danger progress-bar-animated progress-bar-striped" style="width: 70%"></div>
     </div>
     <br>
     <div class="progress progress-style">
      <div class="progress-bar bg-success progress-bar-animated progress-bar-striped" style="width: 20%"></div>
      <div class="progress-bar bg-info progress-bar-animated progress-bar-striped" style="width: 20%"></div>
      <div class="progress-bar bg-warning progress-bar-animated progress-bar-striped" style="width: 30%"></div>
      <div class="progress-bar bg-danger progress-bar-animated progress-bar-striped" style="width: 30%"></div>
     </div>
    </div>
    <div id="section3">
     <nav class="breadcrumb">
      <h5>用户注册</h5>
     </nav>
     <form class="col-sm-8 col-md-4 m-auto" role="form">
      <div class="form-group ">

       <label for="exampleInputEmail1"> Email address </label>
       <input type="email" class="form-control" id="exampleInputEmail1" />
      </div>
      <div class="form-group">

       <label for="exampleInputPassword1"> Password </label>
       <input type="password" class="form-control" id="exampleInputPassword1" />
      </div>
      <div class="form-group">

       <label for="exampleInputFile"> File input </label>
       <input type="file" class="form-control-file" id="exampleInputFile" />
       <p class="help-block">Example block-level help text here.</p>
      </div>
      <div class="checkbox">

       <label>
        <input type="checkbox" />
        Check me out
       </label>
      </div>
      <button type="submit" class="btn btn-outline-success btn-primary">Submit</button>
     </form>

    </div>
    <div id="section4">
     <nav class="breadcrumb">
      <h5>产品信息</h5>
     </nav>
     <div>
      <div class="tabbable" id="tabs-854543" style="height: 900px;">
       <ul class="nav nav-tabs">
        <li class="nav-item">
         <a class="nav-link active show" href="#tab1" data-toggle="tab">X-box</a>
        </li>
        <li class="nav-item">
         <a class="nav-link" href="#tab2" data-toggle="tab">switch</a>
        </li>
        <li class="nav-item">
         <a class="nav-link" href="#tab3" data-toggle="tab">PC</a>
        </li>
       </ul>
       <div class="tab-content">
        <div class="tab-pane active" id="tab1">
         <p>X-box信息.</p>
         <div class="row">
          <div class="col-md-12">
           <dl>
            <dt>Description lists</dt>
            <dd>A description list is perfect for defining terms.</dd>
            <dt>Euismod</dt>
            <dd>Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.</dd>
            <dd>Donec id elit non mi porta gravida at eget metus.</dd>
            <dt>Malesuada porta</dt>
            <dd>Etiam porta sem malesuada magna mollis euismod.</dd>
            <dt>Felis euismod semper eget lacinia</dt>
            <dd>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</dd>
           </dl>
          </div>
          <div class="col-md-12">
           <dl>
            <dt>Description lists</dt>
            <dd>A description list is perfect for defining terms.</dd>
            <dt>Euismod</dt>
            <dd>Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.</dd>
            <dd>Donec id elit non mi porta gravida at eget metus.</dd>
            <dt>Malesuada porta</dt>
            <dd>Etiam porta sem malesuada magna mollis euismod.</dd>
            <dt>Felis euismod semper eget lacinia</dt>
            <dd>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</dd>
           </dl>
          </div>
         </div>
        </div>
        <div class="tab-pane" id="tab2">
         <p>switch信息</p>
         <div class="row">
          <div class="col-md-12">
           <dl>
            <dt>Description lists</dt>
            <dd>A description list is perfect for defining terms.</dd>
            <dt>Euismod</dt>
            <dd>Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.</dd>
            <dd>Donec id elit non mi porta gravida at eget metus.</dd>
            <dt>Malesuada porta</dt>
            <dd>Etiam porta sem malesuada magna mollis euismod.</dd>
            <dt>Felis euismod semper eget lacinia</dt>
            <dd>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</dd>
           </dl>
          </div>
         </div>
        </div>
        <div class="tab-pane" id="tab3">
         <p>pc</p>
        </div>
       </div>
      </div>
     </div>
    </div>
   </div>
   <nav class="col-md-1 d-none d-md-block" id="myScrollspy">
    <ul class="nav nav-pills nav-justified flex-column">
     <li class="nav-item" style="width: 100%;">
      <a class="nav-link bg-color1 active" style="border-radius: .25rem .25rem .0rem .0rem;" href="#section1">最近动态</a>
     </li>
     <li class="nav-item">
      <a class="nav-link bg-color1" style="border-radius: .0rem;" href="#section2">跑批调度</a>
     </li>
     <li class="nav-item">
      <a class="nav-link bg-color1" style="border-radius: .0rem;" href="#section3">用户注册</a>
     </li>
     <li class="nav-item">
      <a class="nav-link bg-color1" style="border-radius: .0rem" href="#section4">产品信息</a>
     </li>
     <li class="nav-item">
      <a class="nav-link bg-color1-top " style="border-radius: .0rem .0rem .25rem .25rem; text-align: center" href="#">
       <img src="resource/img/2.gif" alt="logo" class="img-circle" style="width: 24px; border-radius: 50%" />
      </a>
     </li>
    </ul>
   </nav>
  </div>
 </div>
 <footer class="footer footer-css navbar-fixed-bottom">
  <div class="copyright">
   Copyright © 2018-?
   <strong>
    <a class="footer-css" href="yaohong.com" target="_blank">私人会所</a>
   </strong>
   &nbsp;
   <strong>
    <a href="#" class="footer-css" target="_blank">yaohong.com</a>
   </strong>
   All Rights Reserved. 备案号：暂时没有
  </div>
 </footer>
</body>
<script type="text/javascript">
	$(function() {
		uploading();
	});
	var widths = [ 0, 0, 0, 0, 0 ];
	var count = 0;
	function uploading() {
		if (count >= 15) {
			return;
		}
		$(".progress-bar").each(function(i) {
			var width = widths[i] += Math.round(Math.random() * 10);
			if (widths[i] > 100) {
				widths[i] = 0;
				width = 100;
				count++;
			}
			$(this).css({
				width : width + "%"
			});
			$(this).text(width ? width + "%" : 0 + "%");
		})
		setTimeout(uploading, 500)
	}
	function onScrollspy(target){
		//$('body').scrollspy({ target: target });
		$('[data-spy="scroll"]').each(function(){
			var $spy = $(this).scrollspy('refresh')
		})
	} 
	
</script>
</html>