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
<a href="add.jsp">添加</a>
<table id="dg"></table>
</body>
<script type="application/javascript">
    $(function () {
        inis()
    })
    function inis() {
        $('#dg').datagrid({
                    url:"findAll",
                    columns:[[
                        {field:"id",title:"编号",width:100},
                        {field:"name",title:"名字",width:100},
                        {field:"price",title:"名字",width:100},
                        {field:"category",title:"名字",width:100,formatter:function (value,rows,index) {
                            return value.cname;

                            }},
                        {field:" ",title:"操作",width:100,formatter:function (value,rows,index) {
                                return "<a href=findById?id="+rows.id+">修改</a>   " +
                                    "<a href=showById?id="+rows.id+">查看</a>   " +
                                    "<a href=deleteById?id="+rows.id+">删除</a>  ";
                            }},
                    ]],
                    pagination:true,
                    pageSize:2,
                    pageList:[2,4],
                    pageNumber:1,
                    fitColumns:true,

                })
    }
</script>
</html>