<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title></title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="css/layui.css"  media="all">
  <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<body>

<div class="layui-btn-container">
  <button class="layui-btn layui-btn-sm" type="button" lay-demo="getChecked">获取选中节点数据</button>
  <button class="layui-btn layui-btn-sm" type="button" lay-demo="setChecked">勾选指定节点</button>
  <button class="layui-btn layui-btn-sm" type="button" lay-demo="reload">重载实例</button>
</div>
 
<div class="demo-tree-more" id="test12"></div>
        
<script src="css/layui.js" charset="utf-8"></script>
<script src="css/layui.all.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
layui.use(['tree', 'util'], function(){
  var tree = layui.tree
  ,layer = layui.layer
  ,util = layui.util
  
  //模拟数据
  ,data = [{
    title: '0100传统产业'
    ,id: 1
    ,field: 'name1'
    ,checked: true
    ,spread: true
    ,children: [{
      title: '0101钢铁'
      ,id: 2
      ,field: 'name11'
      ,href: 'https://www.layui.com/'
    },{
      title: '0102装备制造'
      ,id: 3
      ,spread: true
    },{
      title: '0103建材'
         ,id: 4
         ,spread: true
   	},{
   	  title: '0104能源'
   	  ,id: 5
   	  ,spread: true
   	},{
   	  title: '0105石油化工'
      ,id: 6
      ,spread: true
    },{
      title: '0106食品'
      ,id: 7
      ,spread: true
    },{
      title: '0107纺织'
      ,id: 8
      ,field: ''
  }]
  },{
    title: '0200战略性新兴产业'
    ,id: 9
    ,field: ''
    ,spread: true
    ,children: [{
      title: '0201节能环保'
      ,id: 10
      ,field: ''
      ,spread: true
   },{
    	title: '0202新一代信息技术'
        ,id: 11
        ,field: ''
    	,spread: true
   },{
    	title: '0203生物产业'
       ,id: 12
       ,field: ''
       ,spread: true
   },{
        title: '0204新能源'
        ,id: 13
        ,field: ''
        ,spread: true
   },{
    	title: '0205新能源汽车'
        ,id: 13
        ,field: ''
        ,spread: true
   },{
  	  	title: '0206高端装备制造业'
        ,id: 14
        ,field: ''
        ,spread: true
    },{
      title: '0207新材料'
      ,id: 16
      ,field: ''
    }]
  },{
    title: '0300现代农业'
    ,id: 16
    ,field: ''
    ,children: [{
      title: '0301农产品加工'
      ,id: 17
      ,field: ''
      ,fixed: true
   },{
	  title: '0302农业装备'
	  ,id: 18
      ,field: ''
      ,fixed: true
   },{
	   title: '0303集约化种养殖'
       ,id: 19
	   ,field: ''
	   ,fixed: true
    }]
   },{
    title: '0400社会发展及民生'
    ,id: 20
    ,field: ''
    ,children: [{
      title: '0401重大疾病'
      ,id: 21
      ,field: ''
      ,fixed: true
   },{
	   title: '0402环境保护'
	   ,id: 22
	   ,field: ''
	   ,fixed: true
   },{
	   title: '0403资源'
	   ,id: 17
	   ,field: ''
	   ,fixed: true
   },{
	   title: '0404生态修复'
       ,id: 23
	   ,field: ''
       ,fixed: true
}]
}]
  
 
  //基本演示
  tree.render({
    elem: '#test12'
    ,data: data
    ,showCheckbox: true  //是否显示复选框
    ,id: 'demoId1'
    ,isJump: true //是否允许点击节点时弹出新窗口跳转
    ,click: function(obj){
      var data = obj.data;  //获取当前点击的节点数据
      layer.msg('状态：'+ obj.state + '<br>节点数据：' + JSON.stringify(data));
    }
  });
  
  //按钮事件
  util.event('lay-demo', {
    getChecked: function(othis){
      var checkedData = tree.getChecked('demoId1'); //获取选中节点的数据
      
      layer.alert(JSON.stringify(checkedData), {shade:0});
      console.log(checkedData);
    }
    ,setChecked: function(){
      tree.setChecked('demoId1', [12, 16]); //勾选指定节点
    }
    ,reload: function(){
      //重载实例
      tree.reload('demoId1', {
        
      });
      
    }
  });
});
</script>

</body>
</html>