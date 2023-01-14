<%--
  Created by IntelliJ IDEA.
  User: 欧阳洪健
  Date: 2022/6/30
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
            height:320px;
            width:780px;
            margin-top: 80px;
            margin-left: 350px;
            padding-right: 10px;
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
            margin-top: 20px;
        }

        .bb{
            border-radius: 10px;
            border: black solid 1px;
            width: 80%;
            height: 50px;
            padding: 10px;
            background-color: white;
            margin-left: auto;
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
    <p class="aa">用户名:${requestScope.id}</p>
    <form action="updatu" method="post">

            <div class="control-group"><br>
                <div class="controls">
                    <input type="text" value="${requestScope.id}" name="userid" hidden="true"/>
                    <word>修改地址:</word>
                    <input  class="bb" type="text" id="1"  name="adder" placeholder="请输入地址"/>
                </div><br>

                <div class="control-group"><br>
                    <div class="controls">
                        <word>修改邮箱:</word>
                        <input class="bb" type="text" id="111"  name="email" placeholder="请输入邮箱"/>
                    </div><br>
            <div class="control-group">
                <div class="controls">
                    <button type="submit" class="btn btn-small btn-success" >确认修改</button><br>
                    <br><a href="tochange">修改密码</a>
                </div>
            </div>
        </div>
            </div>
    </form>
</div>
</body>
</html>
