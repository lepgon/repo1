<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>Title</title>
    <%--需要引入各种css、js、jquery的插件--%>
    <script type="text/javascript" src="easyui1.7/jquery.min.js"></script>
    <script type="text/javascript" src="easyui1.7/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="easyui1.7/locale/easyui-lang-zh_CN.js"></script>
    <link rel="stylesheet" type="text/css" href="easyui1.7/themes/default/easyui.css"/>
    <link rel="stylesheet" type="text/css" href="easyui1.7/themes/icon.css"/>
</head>
<body>
    <form action="/add" onsubmit="return yaengNAme()">
        商品名称：<input type="text" name="name" onblur="yanzhengNAme(this.value)"><br>
        <span id="yanz"></span><br>
        商品价格：<input type="text" name="price" onblur="check(this.value)"><br>
        <span id="aa"></span><br>
        商品类别：<select id="s1" name="c_id"></select><br>
        <input type="submit"><button><a href="index.jsp">取消</a></button>

    </form>
</body>
<script type="application/javascript">
    $(function () {
        var s1=$('#s1')
        $.post(
            'getAllCategory',
            function (data) {
                for (var i = 0; i < data.length; i++) {
                    var op=new Option(data[i].cname,data[i].cid)
                    s1.append(op)
                }

            }
        )
    })
    var a=true;
    function yanzhengNAme(name) {
        $.post(
            'yanzhengNAme',
            {name:name},
            function (data) {
                if (data){
                    $('#yanz').html("<font color='green'>可以使用</font>")
                    a=true;
                }else {
                    $('#yanz').html("<font color='red'>不能使用</font>")
                    a=false
                }
            }
        )
    }
    function yaengNAme() {
          return a&&b;
    }
    var b=true;
    function check(value){
        var reg= /^\d+(\.\d+)?$/;

        if(reg.test(value)==true){
            $('#aa').html("<font color='green'>都是数字！回通过</font>")
            b=true;
        }else{
            $('#aa').html("<font color='red'>不是纯数字！失败！</font>")
            b=false;
        }
    }
</script>
</html>