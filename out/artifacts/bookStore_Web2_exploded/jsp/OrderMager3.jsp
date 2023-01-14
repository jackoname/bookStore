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
    <title>管理员</title>
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
<div action="smy"STYLE="margin-left:1050px;border: #2aabd2 solid 1px;width: auto;margin-top: 20px;background-color:lightblue;border-radius: 15px;">
    <a  href="toOrder2?id=${requestScope.id}&flag=1" class="btn btn-link">首页</a>
    <a href="toOrder2?id=${requestScope.id}&flag=6" >新增商品</a>
    <a href="toOrder2?id=${requestScope.id}&flag=7" >下架商品</a>
    <a href="toOrder2?id=${requestScope.id}&flag=8" >修改商品</a>

</div>

<div style="border: #4cae4c 1px solid; width: 900px;height: auto;margin-left: 300px;background-color: white; border-radius:80px;margin-top: 50px;" id="ar">
    <table border="1px" style="text-align: center;margin:50px;margin-left:200px;position: center;">
        <caption style="text-align: center">${requestScope.order}</caption>
        <th STYLE="text-align: center;">图片</th>
        <th STYLE="text-align: center">编号</th>
        <th STYLE="text-align: center">书名</th>
        <th colspan="2"  STYLE="text-align: center;width: 60px;">价钱</th>
        <th colspan="" STYLE="width: 80px;text-align: center;">库存</th>

        <c:forEach var="item" items="${requestScope.get('list')}">
            <div class="row-fluid" style="float: left;" >
                <tr>
                    <td STYLE="width: 80px;height:120px;"><text style="color: #4cae4c;text-align: center;"><img src="${item.getBookpricture()}"style="width:60px;height:100px;"/></text></td>
                    <td><text style="color: #4cae4c;text-align: center">《${item.getBookid()}》</text></td>
                    <td><text style="color: #4cae4c;text-align: center">《${item.getBookname()}》</text></td>
                    <td colspan="2" style="width: 60px;"><text style="color: red;text-align: center">${item.getBookprice()}</text></td>
                    <td STYLE="color:darkslategrey;width: 30px;">${item.getBookmun()}</td>
                </tr>
            </div>
        </c:forEach>

    </table>

</div>

</body>
</html>
