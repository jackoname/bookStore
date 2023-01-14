<%--
  Created by IntelliJ IDEA.
  User: 欧阳洪健
  Date: 2022/6/1
  Time: 21:11
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加书籍</title>

    <script type="text/javascript" src="static/js/jquery-1.12.4.min.js"></script>
    <link href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <STYLE type="text/css">
        body{
            margin:0px;
            background: linear-gradient(35deg, #CCFFFF, #1e84c6);
        //background:url(imag/background1.png) ;
            background-size:100% 100%;
        }
        .zi{
            text-align: center;
            font-family: cursive;
            font-size: 25px;
            font-weight: bold;
            letter-spacing: 5px;
            color: #130101;
            margin-left: 550px;
            border-radius:10px;
            border: black solid 1px;
            background-color: white;
        }
    </STYLE>

</head>
<body>
<div action="smy"STYLE="margin-left: 1050px;border: #2aabd2 solid 1px;width: auto;margin-top: 20px;background-color:lightblue;border-radius: 15px;">
    <a  href="toOrder2?id=${requestScope.id}&flag=1" class="btn btn-link">首页</a>
    <a href="toOrder2?id=${requestScope.id}&flag=6" >新增商品</a>
    <a href="toOrder2?id=${requestScope.id}&flag=7" >下架商品</a>
    <a href="toOrder2?id=${requestScope.id}&flag=8" >修改商品</a>
</div>
<div style="margin-left: 600px;margin-top: 120px;">
<div style="border: 1px solid;text-align: center;width: 300px;height:380px;">
<form action="addbook" method="post" enctype="multipart/form-data">

    <br>图片<br> <input type="file" name="bookpictures" value="" STYLE="margin-left:80px;"/><br>
    <br>编号 <input type="text" name="bookid" value="" /><br>
    <br>书名&nbsp; <input type="text" name="bookname" value=""/><br>
    <br>价钱&nbsp; <input type="text" name="bookprice" value=""/><br>
    <br>库存&nbsp; <input type="text" name="bookmun" value=""/><br>
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
    <button type="submit" class="btn btn-danger">添加</button>
</form>
</div>
</div>
</body>
</html>
