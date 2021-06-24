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
<title>角色管理</title>
</head>
<body>
<div class="layui-input-inline">
    <input class="layui-btn" type="button" name="tianjia" value="新增角色"/>
</div>
<div class="layui-form">
	<table class="layui-table" id="test">
    	<thead>
    		<tr>
      		<th>角色</th>
      		<th></th>
    		</tr>
    	</thead>
    	<tbody>
  			<c:forEach items="${list}" var="item">
                <tr>
                    <td>${item.permission}</td>
                    <td><a href="">权限管理</a></td>
                </tr>
            </c:forEach>
      	</tbody>
	</table>
</div>
</body>
</html>