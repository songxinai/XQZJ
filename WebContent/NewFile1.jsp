<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>三级联动</title>
</head>
<body>
<select id="sheng">
    <option value="">-请选择-</option><!--先创建三个下拉栏，分别对应 省 市 县-->
</select>

<select id="shi">
    <option value="">-请选择-</option>
</select>

<select id="xian">
    <option value="">-请选择-</option>
</select>
<script>
    var osheng=document.getElementById("sheng");
    var oshi=document.getElementById("shi");
    var oxian=document.getElementById("xian");

    var arr_sheng=["经济学","工学"];

    var arr_shi=[
        ["经济学类","财政学类","金融学类","经济与贸易类"],<!--数组中的第一个元素内又定义一个数组存的市的值-->
        ["力学类","机械类","仪器类","材料类"]
    ];

    var arr_xian=[<!--创建一个三维数组，最外层每一个元素（对应省）-->
            [<!--数组中定义四个数组（对应市）-->
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
</body>
</html>
