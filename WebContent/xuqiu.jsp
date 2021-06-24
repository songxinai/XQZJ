<%@ page language="java" contentType="text/html; charset=utf-8" import="java.sql.*"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>需求管理</title>
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
      <th>机构全称</th>
      <th>归口管理部门</th>
      <th>通讯地址</th>
      <th>所在地域</th>
      <th>网址</th>
      <th>电子信箱</th>
      <th>法人代表</th>
      <th>邮政编码</th>
      <th>联系人</th>
      <th>固定电话</th>
      <th>手机</th>
      <th>传真</th>
      <th>机构属性</th>
      <th>机构简介</th>
      <th>技术需求名称</th>
      <th>需求起始年份</th>
      <th>需求截止年份</th>
      <th>技术需求概述</th>
      <th>关键字</th>
      <th>拟投入资金总额</th>
      <th>技术需求解决方式</th>
      <th>科技活动类型</th>
      <th>学科分类</th>
      <th>需求技术所属领域</th>
      <th>需求技术应用行业</th>
      <th></th>
    </tr>
    </thead>
    <tbody>
  		<c:forEach items="${list}" var="item">
                <tr>
                    <td>${item.jgmc}</td>
                    <td>${item.gkglbm}</td>
                    <td>${item.txdz}</td>
                    <td>${item.szdy}</td>
                    <td>${item.dwwz}</td>
                    <td>${item.dzyx}</td>
                    <td>${item.frdb}</td>
                    <td>${item.yzbm}</td>
                    <td>${item.lxr}</td>
                    <td>${item.gddh}</td>
                    <td>${item.yddh}</td>
                    <td>${item.cz}</td>
                    <td>${item.jgsx}</td>
                    <td>${item.jgjj}</td>
                    <td>${item.jsxqmc}</td>
                    <td>${item.qsxqnf}</td>
                    <td>${item.jzxqnf}</td>
                    <td>${item.zdkjxqgs}</td>
                    <td>${item.gjz}</td>
                    <td>${item.jhztz}</td>
                    <td>${item.jsxqhzms}</td>
                    <td>${item.yjlx}</td>
                    <td>${item.xkfl}</td>
                    <td>${item.xqjsssly}</td>
                    <td>${item.xqjsyyhy}</td>
                    <td><a href="">修改</a></td>
                </tr>
            </c:forEach>
      </tbody>
</table>
</div>
</body>
</html>