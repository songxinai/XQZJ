<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
<title>登录</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(login/loginbg.jpg);
	background-repeat: repeat-x;
}
-->
</style>
</head>
<body>
	<div class="header"><h2>登录</h2></div>
	
			<form action="login_do" method="post">
				<div class="form-group">
					<label for="username">姓名</label>
					<input type="text" class="form-control" id="username" name="username">
				</div>
				<div class="form-group">
					<label for="password">密码</label>
					<input type="password" class="form-control" id="password" name="password">
				</div>
				<div class="form-group">
					<label for="code">验证码</label>
					<input type="text" class="form-control" id="code" name="code">
  					<img src="number.jsp">
  				</div>
  				<div class="btnbag">
					<input type="button" class="btn btn-primary logbtn" onclick="login()" value="登录">
					<input type="button" class="btn btn-primary mangbtn" onclick="entermang()" value="进入管理">
				</div>
			</form>
</body>
<script type="text/javascript">
	function login()
	{
		var username=$("#username").val();
		var password=$("#password").val();
		var code=$("#code").val();
		if(username==""||password=="")
			alert("请将信息填写完整！");
		else
		{
			$.post(
				"login_do",
				{	username:username,
					password:password,
					code:code},
				function(data){
					if(data=="yes")
					{
						alert("成功登陆！");
						window.location="index.jsp";
					}
					else
						alert("用户不在数据库中或密码错误或验证码错误");
				},
				"text"
			);
		}
	}
</script>
</html>
