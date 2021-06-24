<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>信息填报</title>
  <script src="css/layui.all.js" charset="utf-8"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.js"></script> 
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="css/layui.css"  media="all">
  <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<body>
  <% String username=session.getAttribute("username").toString();%>         
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
  <legend>信息填报</legend>
</fieldset>
 
<form class="layui-form" action="xuqiuServlet" name="myform" onSubmit="return check();">
  <div class="layui-form-item">
    <label class="layui-form-label">*机构全称</label>
    <div class="layui-input-inline">
      <input name="JGMC" class="layui-input" value="<%=username %>" disabled="" type="text" placeholder="" autocomplete="off">
    </div>
    <label class="layui-form-label">归口管理部门</label>
     <div class="layui-input-inline">
      <select name="GKGLBM">
        <option value=""></option>
      </select>
    </div>
  </div>
  
   <div class="layui-form-item">
    <label class="layui-form-label">*通信地址</label>
    <div class="layui-input-inline">
      <input name="TXDZ" class="layui-input" type="text" placeholder="" autocomplete="off">
    </div>
    <label class="layui-form-label">*所在地域</label>
     <div class="layui-input-inline">
      <select name="SZDY">
        <option value=""></option>
        <option value="石家庄市" selected="">石家庄市</option>
        <option value="唐山市">唐山市</option>
        <option value="秦皇岛市">秦皇岛市</option>
        <option value="邯郸市">邯郸市</option>
        <option value="邢台市">邢台市</option>
        <option value="保定市">保定市</option>
        <option value="张家口市">张家口市</option>
        <option value="承德市">承德市</option>
        <option value="沧州市">沧州市</option>
        <option value="廊坊市">廊坊市</option>
        <option value="衡水市">衡水市</option>
        <option value="定州市">定州市</option>
        <option value="辛集市">辛集市</option>
        <option value="其他（河北工大）">其他（河北工大）</option>
      </select>
    </div>
  </div>
  
  <div class="layui-form-item">
    <label class="layui-form-label">网址</label>
    <div class="layui-input-inline">
      <input name="DWWZ" class="layui-input" type="text" placeholder="" autocomplete="off">
    </div>
     <label class="layui-form-label">*电子信箱</label>
      <div class="layui-input-inline">
        <input name="DZYX" class="layui-input" type="text" autocomplete="off">
      </div>
  </div>
  
  <div class="layui-form-item">
    <label class="layui-form-label">*法人代表</label>
      <div class="layui-input-inline">
        <input name="FRDB" class="layui-input" type="text" autocomplete="off">
      </div>
     <label class="layui-form-label">邮政编码</label>
      <div class="layui-input-inline">
        <input name="YZBM" value="" class="layui-input" type="text" autocomplete="off">
      </div>
    </div>
  
  <div class="layui-form-item"> 
      <label class="layui-form-label">*联系人</label>
      <div class="layui-input-inline">
        <input name="LXR" class="layui-input" type="text" autocomplete="off">
      </div>
       <label class="layui-form-label">固定电话</label>
      <div class="layui-input-inline">
        <input name="GDDH" class="layui-input" type="text" autocomplete="off">
      </div>
      <label class="layui-form-label">*手机</label>
      <div class="layui-input-inline">
        <input name="YDDH" class="layui-input" type="text" autocomplete="off">
      </div>
  </div>
  
     <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">传真</label>
      <div class="layui-input-inline">
        <input name="CZ" class="layui-input" type="text" autocomplete="off">
      </div>
    </div>
  </div>
  
   <div class="layui-form-item">
    <label class="layui-form-label">*机构属性</label>
    <div class="layui-input-block">
      <input name="JGSX" title="企业" type="radio" checked="" value="企业">
      <input name="JGSX" title="高等院校" type="radio" value="高等院校">
   	  <input name="JGSX" title="研究机构" type="radio" checked="" value="研究机构">
      <input name="JGSX" title="其他" type="radio" value="其他">
    </div>
  </div>
  
   <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">*机构简介（限200字）</label>
    <div class="layui-input-block">
      <textarea class="layui-textarea" placeholder="请输入内容" name="JGJJ"></textarea>
    </div>
  </div>
  
  <div class="layui-form-item">
      <label class="layui-form-label">*技术需求名称</label>
      <div class="layui-input-block">
        <input name="JSXQMC" class="layui-input" type="text" autocomplete="off">
      </div>
  </div>
  
   <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">需求年限</label>
      <div class="layui-input-inline">
        <input name="QSXQNF" class="layui-input" type="text" autocomplete="off"> 
             年--
      </div>
      <div class="layui-input-inline">
        <input name="JZXQNF" class="layui-input" type="text" autocomplete="off">年
      </div>
    </div>
  </div>
  
   <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">*重大科技需求概述(限500字)</label>
    <div class="layui-input-block">
      <textarea class="layui-textarea" placeholder="请输入内容" name="ZDKJXQGS"></textarea>
    </div>
  </div>
  
  <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">*关键字(至少填写一个，至多填写5个)</label>
     <div class="layui-input-inline">
       <input name="GJZ" class="layui-input" type="text" autocomplete="off">
     </div>
     <div class="layui-input-inline">
       <input name="GJZ" class="layui-input" type="text" autocomplete="off">
     </div>
     <div class="layui-input-inline">
       <input name="GJZ" class="layui-input" type="text" autocomplete="off">
     </div>
     <div class="layui-input-inline">
       <input name="GJZ" class="layui-input" type="text" autocomplete="off">
     </div>
     <div class="layui-input-inline">
       <input name="GJZ" class="layui-input" type="text" autocomplete="off">
     </div>
  </div>
  
   <div class="layui-form-item">
      <label class="layui-form-label">拟投入资金总额（万元）</label>
      <div class="layui-input-inline">
        <input name="JHZTZ" class="layui-input" type="text" autocomplete="off">
      </div>
  </div>
  
   <div class="layui-form-item">
    <label class="layui-form-label">技术需求解决方式</label>
    <div class="layui-input-block">
      <input name="JSXQHZMS" value="dlkf" title="独立开发" type="radio" checked="" lay-skin="primary">
      <input name="JSXQHZMS" value="jszr" title="技术转让" type="radio" lay-skin="primary">
      <input name="JSXQHZMS" value="jsrg" title="技术入股" type="radio" lay-skin="primary">
	  <input name="JSXQHZMS" value="hzkf" title="合作开发" type="radio" lay-skin="primary">  
	  <input name="JSXQHZMS" value="qt" title="其他" type="radio" lay-skin="primary">    
    </div>
  </div>
  
  <div class="layui-form-item">
      <label class="layui-form-label">合作意向单位</label>
      <div class="layui-input-inline">
        <input name="HZYXDW" class="layui-input" type="text" autocomplete="off">
      </div>
  </div>
  
    <div class="layui-form-item">
    <label class="layui-form-label">*科技活动类型</label>
    <div class="layui-input-block" id="yjlx">
      <input name="YJLX" title="基础研究" type="radio" checked="" value="基础研究" lay-filter="aaa">
      <input name="YJLX" title="应用研究" type="radio" value="应用研究" lay-filter="aaa">
   	  <input name="YJLX" title="试验发展" type="radio" checked="" value="试验发展" lay-filter="aaa">
      <input name="YJLX" title="研究与试验发展成果应用" type="radio" value="研究与试验发展成果应用" lay-filter="aaa">
      <input name="YJLX" title="技术推广与科技服务" type="radio" value="技术推广与科技服务" lay-filter="aaa">
      <input name="YJLX" title="生产性活动" type="radio" value="生产性活动" lay-filter="aaa">
    </div>
  </div>
  
   <div class="layui-form-item xkfl">
      <label class="layui-form-label">学科分类(限基础研究填写)</label>
      <div class="layui-input-inline">
      <select name="XKFL" id="sheng">
        <option value="" selected=""></option>
        <option value="经济学" >经济学</option>
        <option value="工学">工学</option>
      </select>
      </div>
       <div class="layui-input-inline">
       <select name="XKFL" id="shi">
        <option value=""></option>
        <option value="经济学类" selected="">经济学类</option>
        <option value="财政学类">财政学类</option>
        <option value="金融学类">金融学类</option>
        <option value="经济与贸易类">经济与贸易类</option>
        <option value="力学类">力学类</option>
        <option value="机械类">机械类</option>
        <option value="仪器类">仪器类</option>
        <option value="材料类">材料类</option>
        <option value="能源动力类">能源动力类</option>
        <option value="电气类">电气类</option>
        <option value="电子信息类">电子信息类</option>
        <option value="自动化类">自动化类</option>
        <option value="计算机类">计算机类</option>
        <option value="土木类">土木类</option>
        <option value="水利类">水利类</option>
        <option value="测绘类">测绘类</option>
        <option value="化工与制药类">化工与制药类</option>
        <option value="地质类">地质类</option>
        <option value="矿业类">矿业类</option>
        <option value="纺织类">纺织类</option>
        <option value="轻工类">轻工类</option>
        <option value="交通运输类">交通运输类</option>
        <option value="海洋工程类">海洋工程类</option>
        <option value="航空航天类">航空航天类</option>
        <option value="兵器类">兵器类</option>
        <option value="核工程类">核工程类</option>
        <option value="农业工程类">农业工程类</option>
        <option value="林业工程类">林业工程类</option>
        <option value="环境科学与工程类">环境科学与工程类</option>
        <option value="生物医学工程类">生物医学工程类</option>
        <option value="食物科学与工程类">食物科学与工程类</option>
        <option value="建筑类">建筑类</option>
        <option value="安全科学与工程类">安全科学与工程类</option>
        <option value="生物工程类">生物工程类</option>
        <option value="公安技术类">公安技术类</option>
      </select>
      </div>
      <div class="layui-input-inline">
       <select name="XKFL" id="xian">
        <option value="" selected=""></option>
        <option value="经济学">经济学</option>
        <option value="经济统计学">经济统计学</option>
      </select>
    </div>
  </div>
  
  <script>
    var osheng=document.getElementById("sheng");
    var oshi=document.getElementById("shi");
    var oxian=document.getElementById("xian");

    var arr_sheng=["经济学","工学"];

    var arr_shi=[
        ["经济学类","财政学类","金融学类","经济与贸易类"],<!--数组中的第一个元素内又定义一个数组存的市的值-->
        ["力学类","机械类","仪器类","材料类"]
    ];

    var arr_xian=[
            [
                ["经济学","经济统计学"]
            ]
    ];

    var  quanju_arr;//创建一个全局对象，用于存储一个中间数组

    function input_arr(arr,event){//封装一个函数，用于向下拉栏中添加元素
        for(var i=0;i<arr.length;i++){//下拉栏内的元素来源于数组中的元素，遍历数组
            var option=new Option(arr[i],i);//创建Option对象（这个O要大写），存入值
            event.appendChild(option);//把option添加到event对象的末尾
        }
    }

    input_arr(arr_sheng,osheng);//调用,给省下拉栏添元素

    osheng.onchange= function () {//给下拉栏绑定事件（当下拉栏元素改变时执行）
        oshi.options.length=1;//当省下拉栏改变时，清空市的下拉栏内元素
        oxian.options.length=1;//当省下拉栏改变时，清空县的下拉栏内元素
        var index=this.value;//每一个option标签都有一个value值索引，获取索引，用于数组中元素的选择
        var arr_shi_next=arr_shi[index];//获取当前选择省的市元素并赋给一个数组
        quanju_arr=arr_xian[index];//获取当前选择省中市的县元素并赋给定义的中间数组
        input_arr(arr_shi_next,oshi);//调用,给市下拉栏添元素
    }

    oshi.onchange= function () {
        oxian.options.length=1;
        var index=this.value;
        var arr_xian_next=quanju_arr[index];
        input_arr(arr_xian_next,oxian);//调用,给县下拉栏添元素
    }
	</script>

  <div class="layui-form-item xqjsssly" pane="">
    <label class="layui-form-label">需求技术所属领域（非基础研究填写）</label>
    <div class="layui-input-block" id="xqjsssly">
      <input name="XQJSSSLY" value="dzxx" title="电子信息技术" type="checkbox" checked="" lay-skin="primary" lay-filter="aaa">
      <input name="XQJSSSLY" value="gjd" title="光机电一体化" type="checkbox" lay-skin="primary" lay-filter="aaa">
      <input name="XQJSSSLY" value="rj" title="软件" type="checkbox" lay-skin="primary" lay-filter="aaa">
	  <input name="XQJSSSLY" value="swzy" title="生物制药技术" type="checkbox" lay-skin="primary" lay-filter="aaa"> 
	  <input name="XQJSSSLY" value="xcl" title="新材料及应用技术" type="checkbox" lay-skin="primary" lay-filter="aaa">
	  <input name="XQJSSSLY" value="xjzz" title="先进制造技术" type="checkbox" checked="" lay-skin="primary" lay-filter="aaa">
      <input name="XQJSSSLY" value="xdby" title="现代农业技术" type="checkbox" lay-skin="primary" lay-filter="aaa">
      <input name="XQJSSSLY" value="xny" title="新能源与高效节能技术" type="checkbox" lay-skin="primary" lay-filter="aaa">
	  <input name="XQJSSSLY" value="zy" title="资源与环境保护新技术" type="checkbox" lay-skin="primary" lay-filter="aaa"> 
	  <input name="XQJSSSLY" value="其他技术" title="其他技术（注明)" type="checkbox" lay-skin="primary" lay-filter="aaa">
    </div>
  </div>
  
    <div class="layui-form-item qtjsms">
      <label class="layui-form-label">其他技术描述</label>
      <div class="layui-input-block">
        <input name="QTJSMS" class="layui-input" type="text" autocomplete="off">
      </div>
  </div>
  
  <div class="layui-form-item xqjsyyhy">
      <label class="layui-form-label">需求技术应用行业(非基础研究填写)</label>
      <div class="layui-input-inline">
      <select name="XQJSYYHY">
        <option value="" selected=""></option>
        <option value="0100传统产业" >0100传统产业</option>
        <option value="0200战略性新兴产业">0200战略性新兴产业</option>
        <option value="0300现代农业" >0300现代农业</option>
        <option value="0400社会发展及民生">0400社会发展及民生</option>
      </select>
      </div>
       <div class="layui-input-inline">
       <select name="XQJSYYHY">
        <option value="" selected=""></option>
        <option value="0101钢铁">0101钢铁</option>
        <option value="0102装备制造">0102装备制造</option>
        <option value="0103建材">0103建材</option>
        <option value="0104能源">0104能源</option>
        <option value="0105石油化工">0105石油化工</option>
        <option value="0106食品">0106食品</option>
        <option value="0107纺织">0107纺织</option>
        <option value="0201节能环保">0201节能环保</option>
        <option value="0202新一代信息技术">0202新一代信息技术</option>
        <option value="0203生物产业">0203生物产业</option>
        <option value="0204新能源">0204新能源</option>
        <option value="0205新能源汽车">0205新能源汽车</option>
        <option value="0206高端装备制造业">0206高端装备制造业</option>
        <option value="0207新材料">0207新材料</option>
        <option value="0301农产品加工">0301农产品加工</option>
        <option value="0302农业装备">0302农业装备</option>
        <option value="0303集约化种养殖">0303集约化种养殖</option>
        <option value="0401重大疾病">0401重大疾病</option>
        <option value="0402环境保护">0402环境保护</option>
        <option value="0403资源">0403资源</option>
        <option value="0404生态修复">0404生态修复</option>
      </select>
      </div>
       <div class="layui-input-inline">
       <select name="XQJSYYHY">
        <option value="" selected=""></option>
        <option value=""></option>
        <option value=""></option>
      </select>
      </div>
  </div>
 
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" type="submit" name="submit">保存并提交</button>
      <button class="layui-btn layui-btn-primary" type="reset">重置</button>
    </div>
  </div>
</form>
<script>
function check()
{
	 if((myform.JGMC.value!=""))
     {
     }
     else
     {
         alert("机构全称不能为空");
         return false;
     }
	 if((myform.TXDZ.value!=""))
     {
     }
     else
     {
         alert("通讯地址不能为空");
         return false;
     }
	 if((myform.DZYX.value!=""))
     {
     }
     else
     {
         alert("电子信箱不能为空");
         return false;
     }
	 if((myform.FRDB.value!=""))
     {
     }
     else
     {
         alert("法人代表不能为空");
         return false;
     }
	 if((myform.LXR.value!=""))
     {
     }
     else
     {
         alert("联系人不能为空");
         return false;
     }
	 if((myform.YDDH.value!=""))
     {
     }
     else
     {
         alert("手机号不能为空");
         return false;
     }
	 if((myform.JGSX.value!=""))
     {
     }
     else
     {
         alert("机构属性不能为空");
         return false;
     }
	 if((myform.JGJJ.value!=""))
     {
		 if(myform.JGJJ.value.length>500)
		 {
			 alert("机构简介不能超过500字");
		 }
		 else
		 {
		 }
     }
     else
     {
         alert("机构简介不能为空");
         return false;
     }
	 if((myform.JSXQMC.value!=""))
     {
     }
     else
     {
         alert("技术需求名称不能为空");
         return false;
     }
	 if((myform.ZDKJXQGS.value!=""))
     {
		 if(myform.ZDKJXQGS.value.length>500)
		 {
			 alert("重大科技需求概述不能超过500字");
		 }
		 else
		 {
		 }
     }
     else
     {
         alert("重大科技需求概述不能为空");
         return false;
     }
	 if((myform.YJLX.value!=""))
     {
     }
     else
     {
         alert("科技活动类型不能为空");
         return false;
     }
	 if((myform.GJZ.value!=""))
     {
		 alert("填报成功");
      	 return true;
     }
     else
     {
         alert("关键字不能为空");
         return false;
     }
}
</script>

 <script>
        layui.use('form', function () {
            var form = layui.form;
            form.on('radio(aaa)', function (data) {
                if ($('#yjlx input[name="YJLX"]:checked ').val() != "基础研究") {
                    $(".xkfl").hide();
                    $(".xqjsssly").show();
                    $(".xqjsyyhy").show();
                    $(".qtjsms").show();
                }
                else {
                    $(".xkfl").show();
                    $(".xqjsssly").hide();
                    $(".xqjsyyhy").hide();
                    $(".qtjsms").hide();
                }
                form.render();
            });
        });    
</script>
<script type="text/javascript">
            //Demo
            layui.use('form', function(){//声明使用layUI的form
                var form = layui.form;
				form.render();//刷新所有渲染效果，也可以单独熟悉某个效果
                //监听提交
                form.on('submit(formDemo)', function(data){
                    layer.msg(JSON.stringify(data.field));
                    return false;
                });
            });
</script>
</body>
</html>