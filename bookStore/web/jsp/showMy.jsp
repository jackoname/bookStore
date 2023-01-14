<%--
  Created by IntelliJ IDEA.
  User: 欧阳洪健
  Date: 2022/5/30
  Time: 11:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
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

        .containe{
            float: left;
            text-align: center;
            height:350px;
            width:500px;
            padding: 20px;
            margin-top: 120px;
            margin-left: 480px;
            //padding-right: 10px;
            border: solid  1px;
        //  background: rgb(212,193,220);
            border-radius: 30px;
            opacity: 0.95;
        }
        .bn{
            position: relative;
            border: solid 1px;
            width: 300px;
            height: 80px;
            margin-top: 20px;
            background-color: white;
            border-radius: 20px;
            margin-left: 690px;

        }
        .zi{
            text-align: center;
            font-family: cursive;
            font-size: 50px;
            font-weight: bold;
            letter-spacing: 5px;
            color: #130101;
        }
        .aa{
            border: black 1px solid;
            padding: 5px;
            width: auto;
            border-radius: 10px;
            margin-left: 10px;
            background-color: #5cb85c;
        }
        .bb{
          border-radius: 10px;
            border: black solid 1px;
            width: 20%;
            background-color: white; margin-left: 180px;
        }
    </STYLE>
</head>
<body>
<div STYLE="text-align:center; margin-left:-120px;">
    <div class="bn">
        <H1><name-bookstore-name STYLE="text-align:center;"><text class="zi">个人中心</text></name-bookstore-name></H1>
    </div>
</div>

<div class="containe">
    <div class="row-fluid">
        <p>
        <p class="bb">用户名</p>  <div class="span4" >
        <p class="aa">${requestScope.list.getUserid()}</p>
    </div>
    </p>
        <p> <p class="bb">邮箱</p>
        <div class="span8">
            <p class="aa"> ${requestScope.list.getEmail()}</p>
        </div>
        </p>
        <p><p class="bb">地址</p>
        <div class="span8"> <p class="aa">${requestScope.list.getAdder()}</p>
    </div></p>
        <form action="cmy">
            <input type="text" hidden="true" name="userid" value="${requestScope.list.getUserid()}">
            <input type="submit" class="btn  btn-success" value="修改个人信息"/>
        </form>
        <br>
    </div>

</div>
</div>
</body>
</html>
