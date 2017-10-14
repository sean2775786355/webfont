<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>炫字網-首頁-勵志打造最好的字體服務平臺</title>
    
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="${pageContext.request.contextPath}/css/memenu.css" rel="stylesheet" type="text/css" media="all" />


  </head>
  
  <body>
    <jsp:include page="./module/header.jsp"></jsp:include>

<!--page-->
<div id="myCarousel" class="carousel slide">
    <!-- 轮播（Carousel）指标 -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>   
    <!-- 轮播（Carousel）项目 -->
    <div class="carousel-inner">
        <div class="item active">
            <img src="./images/browser.png" alt="First slide">
        </div>
        <div class="item">
            <img src="./images/chinese.png" alt="Second slide">
        </div>
        <div class="item">
            <img src="./images/font.png" alt="Third slide">
        </div>
    </div>
    <!-- 轮播（Carousel）导航 -->
    <a class="carousel-control left" href="#myCarousel"
       data-slide="prev"></a>
    <a class="carousel-control right" href="#myCarousel"
       data-slide="next"></a>
</div> 
    
    
    <!--about-starts-->
    <br/><br/>
    <!-- 最新动态开始 -->
    <div class="logo">
        <h1>最新動態</h1>
    </div>
    <div class="about"> 
        <div class="container">
            <div class="about-top grid-1">
                <div class="col-md-4 about-left">
                    <figure class="effect-bubba">
                        <img class="img-responsive" src="images/SDK.png" alt=""/>
                        <figcaption>
                            <h2>SDK</h2>
                            <p>新增炫字網SDK</p> 
                        </figcaption>           
                    </figure>
                </div>
                <div class="col-md-4 about-left">
                    <figure class="effect-bubba">
                        <img class="img-responsive" src="images/wordpress.png" alt=""/>
                        <figcaption>
                            <h4>WordPress</h4>
                            <p>新增的WordPress插件</p>   
                        </figcaption>           
                    </figure>
                </div>
                <div class="col-md-4 about-left">
                    <figure class="effect-bubba">
                        <img class="img-responsive" src="images/OSS.png" alt=""/>
                        <figcaption>
                            <h4>OSS</h4>
                            <p>新增自定義阿里雲OSS配置支持</p>  
                        </figcaption>           
                    </figure>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
<!--page--end-->

	<jsp:include page="./module/footer.jsp"></jsp:include>

<!--js-->
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/simpleCart.min.js"> </script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script> 
<!--dropdown-->
<script src="${pageContext.request.contextPath}/js/jquery.easydropdown.js"></script>
<script type="application/x-javascript">
        addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
        $(function(){
            //固定头部
            $(document).bind('mousewheel', function() {
                if($(window).scrollTop()==0){
                    $("#header1").attr("class", "navbar navbar-default");
                }else {
                    $("#header1").attr("class", "navbar navbar-default navbar-fixed-top")
                }
            });


        });

</script>

  </body>
</html>
