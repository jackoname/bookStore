<%--
  Created by IntelliJ IDEA.
  User: 欧阳洪健
  Date: 2022/6/30
  Time: 15:10
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>小欧书店</title>

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

<form action="smy"STYLE="margin-left: 0px;border: #2aabd2 solid 1px;width: auto;margin-top: 20px;background-color:lightblue">
    <text STYLE="color: #2b669a;font-size: medium;font-style: oblique; margin-left: 15px;">欢迎您！${requestScope.id}</text>
    <text class="zi">小欧书店</text>
    <input type="text" name="userid" value="${requestScope.id}" hidden="ture">
    <input type="submit" class="btn btn-link" value="个人中心" STYLE="margin-left:350px;">
    <a href="toScar?id=${requestScope.id}" class="btn btn-link"> 购物车</a>
    <a  href="about" class="btn btn-link">关于我们</a>
    <a href="inf">退出登录</a>
</form>



<form action="showbookss" method="post" class="form-search" STYLE="margin-left: 420px;width: auto;margin-top: 20px;">
    <div class="input-append">
        <input type="text" name="bookname" value="${requestScope.id}" hidden="Ture">
        <input type="text" class="span1 search-query" STYLE="height: 40px;width: 500px; border-radius: 15px;"name="bookmore"placeholder="请输入关键字"/>
        <button  class="btn btn-mini btn-primary"STYLE="border-radius: 15px;">搜索</button><a href="showbooks?id=${requestScope.id}&flag=5">返回全部</a>
    </div>
</form>

<c:forEach var="book" items="${requestScope.get('list')}">
    <div class="row-fluid" style="border: solid black 1px;width: 200px;height: 300px; background-color:whitesmoke;margin: 20px; border-radius: 3px; margin: 10px;float: left;">
    <img src="${book.getBookpricture()}" STYLE="height: 200px;width: 180px; margin:7.5px; margin-top: 15px;margin-bottom: -15px;"/>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
           <div STYLE="border: green 1px solid ; background-color: white;border-radius: 10px; height: 110px;width: 102%;margin-left: -2.5px;">
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <text style="color:black; font-size: 18px;">${book.getBookname()}</text>
     <p>&nbsp;&nbsp;
         <text style="color: red;font-size: 20px;">￥</text> <text style="color:black; font-size: 16px;">${book.getBookprice()} <text style="color: green;font-size: 15px">
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             [库存:&nbsp;${book.getBookmun()}]</text></text></p>
        <p></p>
               <form action="addCar?id=${requestScope.id}" method="post">
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <input type="text" name="userid" value="${requestScope.id}" hidden="true"/>
                 <input type="text" name="bookid" value="${book.getBookid()}" hidden="true"/>
                   <input type="text" name="bookname" value="${book.getBookname()}" hidden="true"/>
                   <input type="text" name="bookprice" value="${book.getBookprice()}" hidden="true"/>
                   <input type="text" name="bookpricture" value="${book.getBookpricture()}" hidden="true"/>
                   <button type="submit" class="btn btn-mini btn-danger">加入购物车</button>
               </form>
    </div>
    </div>
</c:forEach>
</body>
</html>
