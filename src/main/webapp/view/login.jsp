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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" type="text/css" href="resource/bootstrap/css/bootstrap.min.css">
<script src="resource/jquery/jquery-3.3.1.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="resource/bootstrap/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<div class="container" style="background-image:url(timg.jpg);">
		<div class="row align-items-center justify-content-center" style="height: 100vh;">
		<div class="col-md-4">
		</div>
		<div class="col-md-4">
			<div class="card"  style="background-color:rgb(204, 229, 255)">
				<form role="form" class="px-1 py-1" action="login/login.do" method="post">
					<div class="form-group">
						 
						<label for="exampleInputEmail1">
							Email address
						</label>
						<input type="text" class="form-control" id="exampleInputEmail1" name="yhbh">
					</div>
					<div class="form-group">
						 
						<label for="exampleInputPassword1">
							Password
						</label>
						<input type="password" class="form-control" id="exampleInputPassword1" name="passwd">
					</div>
					<div class="checkbox">
						 
						<label>
							<input type="checkbox"> Check me out
						</label>
					</div>
					<button type="submit" class="btn btn-success btn-block">
						Submit
					</button>
					<button  class="btn btn-outline-info btn-block">
						check
					</button>
				</form>
			</div>
		</div>
		<div class="col-md-4">
		</div>
	</div>
</div>
</body>
</html>