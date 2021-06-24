<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
 <script src="css/layui.all.js" charset="utf-8"></script>
 <script src="https://code.jquery.com/jquery-3.3.1.js"></script> 
 <meta name="renderer" content="webkit">
 <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
 <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
 <link rel="stylesheet" href="css/layui.css"  media="all">
<title>权限管理</title>
</head>
<body>
<div class="layui-form">
    <a href="addquanxian.jsp">授予权限</a>
	<table class="layui-table" id="test">
    	<thead>
    		<tr>
      			<th>角色</th>
      			<th>权限</th>
    		</tr>
    	</thead>
    	<tbody>
  			<c:forEach items="${list}" var="item">
                <tr>
                    <td>${item.permission}</td>
                    <td>${item.permissionid}</td>
                </tr>
            </c:forEach>
      	</tbody>
	</table>
</div>
</body>
</html>