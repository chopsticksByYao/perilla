<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>" />
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="resource/bootstrap-4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="resource/bootstrap-fileinput-4.5.1/css/fileinput.min.css">
<script src="resource/jquery/jquery-3.3.1.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="resource/bootstrap-4.0.0/js/bootstrap.min.js"></script>
<script src="resource/bootstrap-fileinput-4.5.1/js/fileinput.min.js"></script>
<script src="resource/bootstrap-fileinput-4.5.1/js/locales/zh.js"></script>
<script src="resource/bootstrap-fileinput-4.5.1/themes/fas/theme.js"></script>
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
<body>
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
  <div class="col-md-4"></div>
  <div class="row col-md-4 m-auto justify-content-center">
  <input id="file-upload" type="file" multiple class="file" name="files"/>
  </div>
  <div class="col-md-4">
   <form action="<%=basePath%>download/download.do" method="post">
    <div class="row form-group">
     <label for="text">文件名:</label>
     <input type="text" name="fileName" class="form-control"/><button type="submit" class="btn btn-primary">Submit</button>
    </div>
   </form>
  </div>
 </div>
</body>
<script type="text/javascript">
	$('#file-upload').fileinput({
		theme : 'fas',
		language : 'zh',
		uploadUrl : '<%=basePath%>upload/upload.do',
		allowedFileExtensions : [ 'jpg', 'png', 'gif' , 'mp4']
	});
	
	
	$("#file-upload").on("fileuploaded", function (event, data, previewId, index) {
			alert(ddd);
	})
	
	$('#file-upload').on('fileerror', function(event, data, msg) {
		alert(ddd);
	});
</script>
</html>