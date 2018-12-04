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
<title>Insert title here</title>
<script type="text/javascript">
location.href="<%=basePath%>view/login.jsp";
//location.href="http://www.baidu.com";
</script>
</head>
<body>

</body>
<script src="resource/jquery/jquery-3.3.1.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="resource/bootstrap/js/bootstrap.min.js"></script>
</html>