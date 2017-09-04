<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>炫字網-首頁-勵志打造最好的字體服務平臺</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="${pageContext.request.contextPath}/css/memenu.css" rel="stylesheet" type="text/css" media="all" />
</head>


<body>
<!--header-->
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
                    <li class="active"><a href="${pageContext.request.contextPath}/index">首頁</a></li>
                        <li class="grid"><a href="${pageContext.request.contextPath}/font/products">字體列表</a>
                            <div class="mepanel">
                                <div class="row">
                                    <div class="col1 me-one">
                                        <h4>廠商</h4>
                                        <ul>
                                            <li><a href="#">信黑</a></li>
                                            <li><a href="#">書法家</a></li>
                                            <li><a href="#">陳繼世</a></li>
                                            <li><a href="#">字體中國</a></li>
                                            <li><a href="#">蘋果</a></li>
                                            <li><a href="#">字體管家</a></li>
                                            <li><a href="#">本墨</a></li>
                                            <li><a href="#">更多...</a></li>
                                        </ul>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4>類型</h4>
                                        <ul>
                                            <li><a href="#">圓體</a></li>
                                            <li><a href="#">魏碑</a></li>
                                            <li><a href="#">篆書</a></li>
                                            <li><a href="#">行楷</a></li>
                                            <li><a href="#">美素體</a></li>
                                            <li><a href="#">書法體</a></li>
                                            <li><a href="#">綜藝體</a></li>
                                            <li><a href="#">更多...</a></li>
                                        </ul>   
                                    </div>
                                    <div class="col1 me-one">
                                        <h4>編碼</h4>
                                        <ul>
                                            <li><a href="#">統一字符編碼(UNICODE)</a></li>
                                            <li><a href="#">繁體中文(BIG5)</a></li>
                                            <li><a href="#">簡體大字符集(GBK)</a></li>
                                            <li><a href="#">簡體中文(GB2312)</a></li>
                                            <li><a href="#">其他</a></li>
                                            
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
                                       <h4><a href="#">API接口文檔</a></h4>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4><a href="#">後端SDK工具包</a></h4>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4><a href="#">H5在綫編輯插件</a></h4>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4><a href="#">即時文字插件</a></h4>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4><a href="#">JS插件(盧教模式)</a></h4>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4><a href="#">WordPress挿件</a></h4>
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
                        <li class="grid"><a href="#">最新動態</a>
                        </li>
                        <li class="grid"><a href="#">關於我們</a>
                        </li>
                        <li class="grid"><a href="#">特色功能</a>
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
<!--start-breadcrumbs-->
    <div class="breadcrumbs">
        <div class="container">
            <div class="breadcrumbs-main">
                <ol class="breadcrumb">
                    <li><a href="${pageContext.request.contextPath}/index">炫字網</a></li>
                    <li class="active">字體列表</li>
                </ol>
            </div>
        </div>
    </div>
    <!--end-breadcrumbs-->
    <!--prdt-starts-->
    <div class="prdt"> 
        <div class="container">
            <div class="prdt-top">
                <div class="col-md-9 prdt-left">
                    <div class="product-one">

                        <div class="col-md-12 product-left p-left">
                            <div class="product-main simpleCart_shelfItem">
                                <a href="#" class="mask" style="font-size: 25px">思源黑體Light龍飛鳳舞中國文字之美</a>
                                <div class="product-bottom">
                                    <h3>思源|黑體|簡體中文（GB2312）|中文|正規字體</h3><br/>
                                    <div class="btn-group pull-right" style="margin:10px">
                                        <button class="btn btn-primary">使用</button>
                                        <button class="btn btn-success">收藏</button>
                                    </div>
                                    <br/>
                                    <h3 class="">12188收藏/ 130推薦/ 764412使用/ 55評論</h3>
                                </div>
                                <div class="srch srch1">
                                    <span>-20%</span>

                                </div>
                            </div>
                        </div>
                        
                        <div class="col-md-12 product-left p-left">
                            <div class="product-main simpleCart_shelfItem">
                                <a href="#" class="mask" style="font-size: 25px">思源黑體Light龍飛鳳舞中國文字之美</a>
                                <div class="product-bottom">
                                    <h3>思源|黑體|簡體中文（GB2312）|中文|正規字體</h3><br/>
                                    <div class="btn-group pull-right" style="margin:10px">
                                        <button class="btn btn-primary">使用</button>
                                        <button class="btn btn-success">收藏</button>
                                    </div>
                                    <br/>
                                    <h3 class="">12188收藏/ 130推薦/ 764412使用/ 55評論</h3>
                                </div>
                                <div class="srch srch1">
                                    <span>-20%</span>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 product-left p-left">
                            <div class="product-main simpleCart_shelfItem">
                                <a href="#" class="mask" style="font-size: 25px">思源黑體Light龍飛鳳舞中國文字之美</a>
                                <div class="product-bottom">
                                    <h3>思源|黑體|簡體中文（GB2312）|中文|正規字體</h3><br/>
                                    <div class="btn-group pull-right" style="margin:10px">
                                        <button class="btn btn-primary">使用</button>
                                        <button class="btn btn-success">收藏</button>
                                    </div>
                                    <br/>
                                    <h3 class="">12188收藏/ 130推薦/ 764412使用/ 55評論</h3>
                                </div>
                                <div class="srch srch1">
                                    <span>-20%</span>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 product-left p-left">
                            <div class="product-main simpleCart_shelfItem">
                                <a href="#" class="mask" style="font-size: 25px">思源黑體Light龍飛鳳舞中國文字之美</a>
                                <div class="product-bottom">
                                    <h3>思源|黑體|簡體中文（GB2312）|中文|正規字體</h3><br/>
                                    <div class="btn-group pull-right" style="margin:10px">
                                        <button class="btn btn-primary">使用</button>
                                        <button class="btn btn-success">收藏</button>
                                    </div>
                                    <br/>
                                    <h3 class="">12188收藏/ 130推薦/ 764412使用/ 55評論</h3>
                                </div>
                                <div class="srch srch1">
                                    <span>-20%</span>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 product-left p-left">
                            <div class="product-main simpleCart_shelfItem">
                                <a href="#" class="mask" style="font-size: 25px">思源黑體Light龍飛鳳舞中國文字之美</a>
                                <div class="product-bottom">
                                    <h3>思源|黑體|簡體中文（GB2312）|中文|正規字體</h3><br/>
                                    <div class="btn-group pull-right" style="margin:10px">
                                        <button class="btn btn-primary">使用</button>
                                        <button class="btn btn-success">收藏</button>
                                    </div>
                                    <br/>
                                    <h3 class="">12188收藏/ 130推薦/ 764412使用/ 55評論</h3>
                                </div>
                                <div class="srch srch1">
                                    <span>-20%</span>

                                </div>
                            </div>
                        </div>

                        

                        
                        <ul class="pagination pull-right">
                            <li><a href="#">&laquo;</a></li>
                            <li class="active"><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">&raquo;</a></li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>

                    
                </div>  
                <div class="col-md-3 prdt-right">
                    <div class="w_sidebar">
                        <section class="sky-form">
                            <h4>廠商</h4>
                                <div class="row1 row2 scroll-pane">
                                    <div class="col col-4">
                                        <label class="radio"><input type="radio" name="factory" checked=""><i></i>所有廠商</label>
                                        <label class="radio"><input type="radio" name="factory" ><i></i>信黑</label>
                                        <label class="radio"><input type="radio" name="factory"><i></i>書法家</label>
                                        <label class="radio"><input type="radio" name="factory"><i></i>陳繼世</label>
                                        <label class="radio"><input type="radio" name="factory"><i></i>字體中國</label>
                                        <label class="radio"><input type="radio" name="factory"><i></i>蘋果</label>
                                        <label class="radio"><input type="radio" name="factory"><i></i>字體管家</label>
                                        <label class="radio"><input type="radio" name="factory"><i></i>本墨</label>
                                        <label class="radio"><input type="radio" name="factory"><i></i>義啟</label>
                                        <label class="radio"><input type="radio" name="factory"><i></i>站酷</label>
                                        <label class="radio"><input type="radio" name="factory"><i></i>龐門正道</label>
                                        <label class="radio"><input type="radio" name="factory"><i></i>逐浪</label>
                                        <label class="radio"><input type="radio" name="factory"><i></i>Adobe</label>
                                        <label class="radio"><input type="radio" name="factory"><i></i>思源</label>
                                        

                                    </div>
                                    
                                </div>                      
                        </section>
                        <section class="sky-form">
                            <h4>類型</h4>
                                <div class="row1 row2 scroll-pane">
                                    <div class="col col-4">
                                        <label class="radio"><input type="radio" name="type" checked=""><i></i>所有類型</label>
                                        <label class="radio"><input type="radio" name="type" ><i></i>圓體</label>
                                        <label class="radio"><input type="radio" name="type"><i></i>魏碑</label>
                                        <label class="radio"><input type="radio" name="type"><i></i>篆書</label>
                                        <label class="radio"><input type="radio" name="type"><i></i>行楷</label>
                                        <label class="radio"><input type="radio" name="type"><i></i>美術體</label>
                                        <label class="radio"><input type="radio" name="type"><i></i>書法體</label>
                                        <label class="radio"><input type="radio" name="type"><i></i>綜藝體</label>
                                        <label class="radio"><input type="radio" name="type"><i></i>草書</label>
                                        <label class="radio"><input type="radio" name="type"><i></i>隸書</label>
                                        <label class="radio"><input type="radio" name="type"><i></i>黑體</label>
                                        <label class="radio"><input type="radio" name="type"><i></i>行書</label>
                                        <label class="radio"><input type="radio" name="type"><i></i>楷體</label>
                                        <label class="radio"><input type="radio" name="type"><i></i>宋體</label>
                                        <label class="radio"><input type="radio" name="type"><i></i>其他</label>



                                    </div>
                                    
                                </div>                      
                        </section>
                        <section class="sky-form">
                            <h4>編碼</h4>
                                <div class="row1 row2 scroll-pane">
                                    <div class="col col-4">
                                        <label class="radio"><input type="radio" name="code" checked=""><i></i>所有編碼</label>
                                        <label class="radio"><input type="radio" name="code"><i></i>統一字元編碼（UNICODE）</label>
                                        <label class="radio"><input type="radio" name="code"><i></i>繁體中文（BIG5）</label>
                                        <label class="radio"><input type="radio" name="code"><i></i>簡體大字元集（GBK）</label>
                                        <label class="radio"><input type="radio" name="code"><i></i>簡體中文（GB2312）</label>
                                        <label class="radio"><input type="radio" name="code"><i></i>其他</label>
                                    </div>
                                </div>                      
                        </section>
                        <section class="sky-form">
                            <h4>語系</h4>
                                <div class="row1 row2 scroll-pane">
                                    <div class="col col-4">
                                        <label class="radio"><input type="radio" name="language" checked=""><i></i>所有語系</label>
                                        <label class="radio"><input type="radio" name="language"><i></i>中文</label>
                                        <label class="radio"><input type="radio" name="language"><i></i>English</label>
                                        <label class="radio"><input type="radio" name="language"><i></i>其他</label>
                                        
                                    </div>
                                </div>                      
                        </section>
                        <section class="sky-form">
                            <h4>風格</h4>
                                <div class="row1 row2 scroll-pane">
                                    <div class="col col-4">
                                        <label class="radio"><input type="radio" name="style" checked=""><i></i>所有風格</label>
                                        <label class="radio"><input type="radio" name="style"><i></i>非主流字體</label>
                                        <label class="radio"><input type="radio" name="style"><i></i>變化圖案</label>
                                        <label class="radio"><input type="radio" name="style"><i></i>招牌標誌</label>
                                        <label class="radio"><input type="radio" name="style"><i></i>點數字體</label>
                                        <label class="radio"><input type="radio" name="style"><i></i>波浪字體</label>
                                        <label class="radio"><input type="radio" name="style"><i></i>動物圖案</label>
                                        <label class="radio"><input type="radio" name="style"><i></i>廣告字體</label>
                                        <label class="radio"><input type="radio" name="style"><i></i>空心字體</label>
                                        <label class="radio"><input type="radio" name="style"><i></i>單線超細</label>
                                        <label class="radio"><input type="radio" name="style"><i></i>精緻綜藝</label>
                                        <label class="radio"><input type="radio" name="style"><i></i>固定寬度</label>
                                        <label class="radio"><input type="radio" name="style"><i></i>卡通動漫</label>
                                        <label class="radio"><input type="radio" name="style"><i></i>草書</label>
                                        <label class="radio"><input type="radio" name="style"><i></i>塗鴉</label>
                                        <label class="radio"><input type="radio" name="style"><i></i>兒童字體</label>
                                        <label class="radio"><input type="radio" name="style"><i></i>毛筆</label>
                                        <label class="radio"><input type="radio" name="style"><i></i>美術字體</label>
                                        <label class="radio"><input type="radio" name="style"><i></i>硬筆手寫</label>
                                        <label class="radio"><input type="radio" name="style"><i></i>正規字體</label>
                                        <label class="radio"><input type="radio" name="style"><i></i>其他</label>
                                    </div>
                                </div>                      
                        </section>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <!--product-end-->
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
<!--js--end-->
</body>

</html>
