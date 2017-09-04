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
    <nav class="navbar navbar-default" role="navigation" id="header1">
    <div class="container-fluid">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#example-navbar-collapse" aria-expanded="false">
        <span class="sr-only">切換導航</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#">炫字網</a>
    </div>
    <div class="collapse navbar-collapse" id="example-navbar-collapse">
        <ul class="nav navbar-nav">
            
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    語言
                    <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="#">繁體中文</a></li>
                    <li><a href="#">简体中文</a></li>
                    <li><a href="#">English</a></li>
                    
                </ul>
            </li>
        </ul>

        <ul class="nav navbar-nav navbar-right"> 
            <li><a href="#"><span class="glyphicon glyphicon-user"></span> 注册</a></li> 
            <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> 登录</a></li> 
        </ul> 
        <form class="navbar-form navbar-left navbar-right" role="search" action="search.html">
            <div class="input-group">
                <input type="text" class="form-control" placeholder="Search">
                <span class="input-group-btn">
                    <button type="submit" class="btn btn-default">提交</button>
                </span>
            </div>
            
        </form>
        
        
    </div>
    </div>
</nav>

<!--bottom-header-->
    <div class="header-bottom">
        <div class="container">
            <div class="header">

                <div class="col-md-9 header-left">             
                <div class="top-nav">
                
                    <ul class="memenu skyblue">
                    <li class="active"><a href="index.html">首頁</a></li>
                        <li class="grid"><a href="products.html">字體列表</a>
                            <div class="mepanel">
                                <div class="row">
                                    <div class="col1 me-one">
                                        <h4>廠商</h4>
                                        <ul>
                                            <li><a href="products.html">信黑</a></li>
                                            <li><a href="products.html">書法家</a></li>
                                            <li><a href="products.html">陳繼世</a></li>
                                            <li><a href="products.html">字體中國</a></li>
                                            <li><a href="products.html">蘋果</a></li>
                                            <li><a href="products.html">字體管家</a></li>
                                            <li><a href="products.html">本墨</a></li>
                                            <li><a href="products.html">更多...</a></li>
                                        </ul>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4>類型</h4>
                                        <ul>
                                            <li><a href="products.html">圓體</a></li>
                                            <li><a href="products.html">魏碑</a></li>
                                            <li><a href="products.html">篆書</a></li>
                                            <li><a href="products.html">行楷</a></li>
                                            <li><a href="products.html">美素體</a></li>
                                            <li><a href="products.html">書法體</a></li>
                                            <li><a href="products.html">綜藝體</a></li>
                                            <li><a href="products.html">更多...</a></li>
                                        </ul>   
                                    </div>
                                    <div class="col1 me-one">
                                        <h4>編碼</h4>
                                        <ul>
                                            <li><a href="products.html">統一字符編碼(UNICODE)</a></li>
                                            <li><a href="products.html">繁體中文(BIG5)</a></li>
                                            <li><a href="products.html">簡體大字符集(GBK)</a></li>
                                            <li><a href="products.html">簡體中文(GB2312)</a></li>
                                            <li><a href="products.html">其他</a></li>
                                            
                                        </ul>       
                                    </div>
                                    <div class="col1 me-one">
                                        <h4>更多字體。。。</h4>
                                            
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="grid"><a href="#">SDK/插件</a>
                            <div class="mepanel">
                                <div class="row">
                                    <div class="col1 me-one">
                                       <h4><a href="products.html">API接口文檔</a></h4>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4><a href="products.html">後端SDK工具包</a></h4>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4><a href="products.html">H5在綫編輯插件</a></h4>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4><a href="products.html">即時文字插件</a></h4>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4><a href="products.html">JS插件(盧教模式)</a></h4>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4><a href="products.html">WordPress挿件</a></h4>
                                    </div>

                                </div>
                            </div>
                        </li>
                        <li class="grid"><a href="#">幫助中心</a>
                            <div class="mepanel">
                                <div class="row">
                                    <div class="col1 me-one">
                                        <h4>調用方法</h4>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4>常見問題</h4>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4>使用規則</h4>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4>版權人認證流程</h4>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4>線下購買認證流程</h4>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4>炫幣計費規則</h4>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4>意見反饋</h4>
                                    </div>
                                    
                                    
                                </div>
                            </div>
                        </li>
                        <li class="grid"><a href="typo.html">最新動態</a>
                        </li>
                        <li class="grid"><a href="contact.html">關於我們</a>
                        </li>
                        <li class="grid"><a href="contact.html">特色功能</a>
                        </li>

                    </ul>
                </div>
                <div class="clearfix"> </div>
            </div>
            
            <div class="clearfix"> </div>
            </div>
        </div>
    </div>
    <hr style="height:10px;border:none;border-top:10px groove skyblue;" />
    <!--bottom-header-->
<!--header--end-->
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
       data-slide="prev">&lsaquo;</a>
    <a class="carousel-control right" href="#myCarousel" 
       data-slide="next">&rsaquo;</a>
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

<!--footer-->
<div class="information">
        <div class="container">
            <div class="infor-top">
                <div class="col-md-3 infor-left">
                    <h3>Follow Us</h3>
                    <ul>
                        <li><a href="#"><span class="fb"></span><h6>Facebook</h6></a></li>
                        <li><a href="#"><span class="twit"></span><h6>Twitter</h6></a></li>
                        <li><a href="#"><span class="google"></span><h6>Google+</h6></a></li>
                    </ul>
                </div>
                <div class="col-md-3 infor-left">
                    <h3>了解炫字網</h3>
                    <ul>
                        <li><a href="#"><p>關於我們</p></a></li>
                        <li><a href="#"><p>定制個性字庫服務</p></a></li>
                        <li><a href="#"><p>有問題請聯繫我們</p></a></li>
                        <li><a href="#"><p>服務的知名客戶</p></a></li>
                        <li><a href="#"><p>榮譽之旅</p></a></li>
                        <li><a href="#"><p>幫助中心</p></a></li>

                    </ul>
                </div>
                <div class="col-md-3 infor-left">
                    <h3>立即聯繫我們</h3>
                    <ul>
                        <li><a href="#"><p>QQ：</p></a></li>
                        <li><a href="#"><p>536269586</p></a></li>
                        <li><a href="#"><p>微信公眾號：</p></a></li>
                        <li><a href="#"><p>xuanziwang007</p></a></li>
                        <li><a href="#"><p>QQ交流群:</p></a></li>
                        <li><a href="#"><p>0235629584</p></a></li>
                    </ul>
                </div>
                <div class="col-md-3 infor-left">
                    <h3>炫字網</h3>
                    <h4>
                        <span>炫字網是全球第一中文網頁字體（在線字體）服務平台。
                    </h4>
                    <h5>炫字網，中文網頁字體首選。</h5>  
                    <p><a href="mailto:example@email.com">contact@example.com</a></p>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    
    <div class="footer">
        <div class="container">
            <div class="footer-top">
                <div class="col-md-6 footer-left">
                    
                </div>
                <div class="col-md-6 footer-right">                 
                    <p>Copyright &copy; 2017.safewind All rights reserved.<a target="_blank" href="http://www.cssmoban.com/"></a></p>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
<!--footer--end-->

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
