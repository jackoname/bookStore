<%--
  Created by IntelliJ IDEA.
  User: 欧阳洪健
  Date: 2022/5/30
  Time: 23:40
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>购物车</title>
    <title>Title</title>
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
        #ar{
            background: linear-gradient(to right bottom,lightblue,lightgrey);

        }
    </STYLE>
</head>
<body>
<div action="smy"STYLE="margin-left: 1050px;border: #2aabd2 solid 1px;width: auto;margin-top: 20px;background-color:lightblue;border-radius: 15px;">
    <a href="showbooks?id=${requestScope.id}&flag=5"STYLE="margin-left:30px;">首页</a>
    <a href="toOrder1?id=${requestScope.id}&flag=1" class="btn btn-link">待发货订单</a>
    <a  href="toOrder1?id=${requestScope.id}&flag=2" class="btn btn-link">已发货订单</a>
    <a href="toOrder1?id=${requestScope.id}&flag=3">已完成订单</a>
    <a href="toScar?id=${requestScope.id}" STYLE="margin-left: 20px;">购物车</a>
</div>
<div style="border: #4cae4c 1px solid; width: 900px;height: auto;margin-left: 300px;background-color: white; border-radius:80px;margin-top: 50px;" id="ar">
    <table border="1px" style="text-align: center;margin:50px;margin-left:280px;position: center;">
        <caption style="text-align: center">${requestScope.order}</caption>
        <th STYLE="text-align: center;">图片</th>
        <th STYLE="text-align: center">书名</th>
        <th colspan="2"  STYLE="text-align: center;width: 60px;">价钱</th>
        <th colspan="2" STYLE="text-align: center">操作</th>
        <c:forEach var="item" items="${requestScope.get('list')}">
            <div class="row-fluid" style="float: left;" >
                <tr>
                    <td STYLE="width: 80px;height:120px;"><text style="color: #4cae4c;text-align: center;"><img src="${item.getBookpricture()}"style="width:60px;height:100px;"/></text></td>
                    <td><text style="color: #4cae4c;text-align: center">《${item.getBookname()}》</text></td>
                    <td colspan="2" style="width: 60px;"><text style="color: red;text-align: center">${item.getBookprice()}</text></td>
                    <td colspan="4" style="width: 80px;">
                        <form action="reobj" method="post"><br>
                            <input type="text" value="${item.getUserid()}" name="userid" hidden="true"/>
                            <input type="text" value="${item.getOrderid()}" name="orderid" hidden="true"/>
                            <input type="text" value="${item.getBookid()}" name="bookid" hidden="true"/>
                            <input type="text" value="${item.getState()}" name="state" hidden="true"/>
                            <button type="submits" class="btn btn-danger">收货</button>
                        </form>
                    </td>
                </tr>
            </div>
        </c:forEach>

    </table>

</div>

</body>
</html>
