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
    <form action="/update" onsubmit="return submitPrice()">
         <input type="hidden" name="id" value="${goods.id}"><br>
        商品名称：<input type="text" name="name"  value="${goods.name}"><br>
        商品价格：<input type="text" name="price" value="${goods.price}" onblur="yanzhengUPdtae(this.value)">
            <span id="as"></span>
        <br>
        商品类别：<select id="s1" name="c_id"></select><br>
        <input type="submit"><button><a href="index.jsp">取消</a></button>

    </form>
</body>
<script type="application/javascript">
var a=true
    function yanzhengUPdtae(price){
       var pri=${goods.price}
        if (price>pri){
           $('#as').html("<font color='green'>可以使用<font>")
            a=true
       }else {
            $('#as').html("<font color='red'>价格比以前的小<font>")
            a=false
        }
    }
    function submitPrice(){
    return a;
    }
    $(function () {
        var a=${goods.c_id}
        var s1=$('#s1')
        $.post(
            'getAllCategory',
            function (data) {
                for (var i = 0; i < data.length; i++) {
                   if (a==data[i].cid){
                       var op=new Option(data[i].cname,data[i].cid)
                       op.selected=true
                       s1.append(op)
                   }else {
                       var op=new Option(data[i].cname,data[i].cid)
                       s1.append(op)
                   }
                }

            }
        )
    })
</script>
</html>