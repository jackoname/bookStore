<%--
  Created by IntelliJ IDEA.
  User: 欧阳洪健
  Date: 2022/5/29
  Time: 19:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>首页</title>
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
        height:200px;
        width:280px;
        margin-top: 120px;
        margin-left: 180px;
        padding-right: 10px;
        border: solid  1px;
      //background: rgb(212,193,220);
        border-radius: 30px;
        opacity: 0.95;
      }
      word{
        color: gray;
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
    </STYLE>
  </head>
  <body>
  <div STYLE="text-align:center;">
   <div class="bn">
     <H1><name-bookstore-name STYLE="text-align:center;"><text class="zi">小欧书店</text></name-bookstore-name></H1>
   </div>
  </div>
  <hr style="border: #2b542c solid 0.5px ;width: 90%" >
    <div  class="container-fluid" >
      <div>
  <div id="myCarousel" class="carousel slide" style="width: 800px; height:400px; margin-left: 100px;margin-top: 20px; float: left;">
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <!-- Carousel items -->
    <div class="carousel-inner" STYLE="margin-top: 50px">
      <div class="active item"><div STYLE="text-align: center">
        <img src="imag/33.png" width="800px" /></div></div>
      <div class="item"><div STYLE="text-align: center;"><img src="/imag/11.png" width="800px" ;></div></div>
      <div class="item"><div STYLE="text-align: center"><img src="/imag/22.png"width="800px" ></div></div>

    </div>
    <!-- Carousel nav -->
    <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
    <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>

  </div>

        </div>

      <!------------------------>
      <div>

  <div class="containe">
    <form class="form-horizontal" action="tologin" method="post">
      <div class="control-group" style="margin-top:10px">
        <br>
        <div class="controls" >
          <word>账号:</word>
          <input type="text" id="inputEmail" name="userid" placeholder="请输入账号"/>
        </div>
      </div>
      <div class="control-group"><br>
        <div class="controls">
          <word>密码:</word>
          <input type="password" id="inputPassword"  name="password" placeholder="请输入密码"/>
        </div><br>
        <div class="control-group">
          <div class="controls">
            <button type="submit" class="btn btn-small btn-success" >登录</button><br>
          <br> <a href="newuser">俺要注册</a>&nbsp&nbsp<a href="tochange">忘记密码</a>
          </div>
        </div>
      </div>
    </form>
  </div>
    </div>
    </div>
  </div>
  </body>
</html>
