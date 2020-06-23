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
        商品名称：<input type="text" name="name" value="${goods.name}"><br>
        商品价格：<input type="text" name="price" value="${goods.price}"><br>
        商品类别：<input type="text" name="c_id" value="${goods.category.cname}"><br>
        <button><a href="index.jsp">确定</a></button>
</body>
</html>