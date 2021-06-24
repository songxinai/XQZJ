<%@ page language="java" contentType="text/html; charset=utf-8" import="java.sql.*"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>用户管理</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="css/layui.css"  media="all">
  <script src="css/layui.js" charset="utf-8"></script>
  <script src="css/layui.all.js" charset="utf-8"></script>
  <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<body>  
<div class="layui-form">
<table class="layui-table" id="test">
    <thead>
    <tr>
      <th>用户名</th>
      <th>密码</th>
      <th>角色</th>
      <th></th>
    </tr>
    </thead>
    <tbody>
  		<c:forEach items="${list}" var="item">
                <tr>
                    <td>${item.username}</td>
                    <td>${item.password}</td>
                    <td>${item.permission}</td>
                    <td><a href="">修改</a></td>
                </tr>
        </c:forEach>
    </tbody>
</table>
</div>
</body>
</html>