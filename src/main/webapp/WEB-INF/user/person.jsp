<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
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
        <form class="navbar-form navbar-left navbar-right" role="search">
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
                                            <li><a href ="#">信黑</a></li>
                                            <li><a href ="#">書法家</a></li>
                                            <li><a href ="#">陳繼世</a></li>
                                            <li><a href ="#">字體中國</a></li>
                                            <li><a href ="#">蘋果</a></li>
                                            <li><a href ="#">字體管家</a></li>
                                            <li><a href ="#">本墨</a></li>
                                            <li><a href ="#">更多...</a></li>
                                        </ul>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4>類型</h4>
                                        <ul>
                                            <li><a href ="#">圓體</a></li>
                                            <li><a href ="#">魏碑</a></li>
                                            <li><a href ="#">篆書</a></li>
                                            <li><a href ="#">行楷</a></li>
                                            <li><a href ="#">美素體</a></li>
                                            <li><a href ="#">書法體</a></li>
                                            <li><a href ="#">綜藝體</a></li>
                                            <li><a href ="#">更多...</a></li>
                                        </ul>   
                                    </div>
                                    <div class="col1 me-one">
                                        <h4>編碼</h4>
                                        <ul>
                                            <li><a href ="#">統一字符編碼(UNICODE)</a></li>
                                            <li><a href ="#">繁體中文(BIG5)</a></li>
                                            <li><a href ="#">簡體大字符集(GBK)</a></li>
                                            <li><a href ="#">簡體中文(GB2312)</a></li>
                                            <li><a href ="#">其他</a></li>
                                            
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
                                       <h4><a href ="#">API接口文檔</a></h4>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4><a href ="#">後端SDK工具包</a></h4>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4><a href ="#">H5在綫編輯插件</a></h4>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4><a href ="#">即時文字插件</a></h4>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4><a href ="#">JS插件(盧教模式)</a></h4>
                                    </div>
                                    <div class="col1 me-one">
                                        <h4><a href ="#">WordPress挿件</a></h4>
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
<div class="container">
<div class="row">
<div class="col-xs-12">
    <div class="alert alert-success" role="alert">
        <strong>hello~ &nbsp;李先生</strong> <span class="pull-right">歡迎來到個人中心~</span>
    </div>
</div>
</div>
<div class="row">
    <div class="col-xs-2">
        <ul class="nav nav-pills nav-stacked" style="height: 400px">
          <li class="active"><a href="${pageContext.request.contextPath}/user/person">個人資料</a></li>
          <li><a href="${pageContext.request.contextPath}/user/account">我的帳戶</a></li>
          <li><a href="${pageContext.request.contextPath}/user/fontManage">字庫管理</a></li>
          <li><a href="${pageContext.request.contextPath}/user/message">消息中心</a></li>
        </ul>
    </div>
    <div class="col-xs-10">
        <ul class="nav nav-tabs">
            <li class="active"><a data-toggle="tab" href="#personInfo">瀏覽個人信息</a></li>
            <li><a data-toggle="tab" href="#improve">完善個人信息</a></li>
            <li><a data-toggle="tab" href="#phoneBand">綁定手機</a></li>
            <li><a data-toggle="tab" href="#passwordChange">修改密碼</a></li>
        </ul>

        <div class="tab-content">
            <div id="personInfo" class="tab-pane fade in active">
            <ol class="breadcrumb" style="margin-top: 20px;">
                <li><a href="#">個人資料</a></li>
                <li class="active">瀏覽個人信息</li>
            </ol>
            <div class="row well">
                <div class="col-xs-5">
                    <div class="input-group">
                    <span class="input-group-addon" style=""><span class="glyphicon glyphicon-pencil"></span>&nbsp;暱稱：</span><input class="form-control" disabled="disabled" value=""></input>
                    </div>
                    <br/>
                    <div class="input-group">
                    <span class="input-group-addon">
                    <span class="glyphicon glyphicon-pencil"></span>性別：</span><input class="form-control" disabled="disabled" value=""></input>
                    </div>
                    <br/>
                    <div class="input-group">
                    <span class="input-group-addon">
                    <span class="glyphicon glyphicon-pencil"></span>個性簽名：</span><input class="form-control" disabled="disabled" value=""></input>
                    </div>
                    <br/>
                    <div class="input-group">
                    <span class="input-group-addon">
                    <span class="glyphicon glyphicon-pencil"></span>手機：</span><input class="form-control" disabled="disabled" value=""></input>
                    </div>
                    <br/>
                    <div class="input-group">
                    <span class="input-group-addon">
                    <span class="glyphicon glyphicon-pencil"></span>電話：</span><input class="form-control" disabled="disabled" value=""></input>
                    </div>
                    <br/>
                    <div class="input-group">
                    <span class="input-group-addon">
                    <span class="glyphicon glyphicon-pencil"></span>所在地：</span><input class="form-control" disabled="disabled" value=""></input></div><br/>
                </div>
                <div class="col-xs-2"></div>
                <div class="col-xs-5">
                    <div class="input-group">
                    <span class="input-group-addon">
                    <span class="glyphicon glyphicon-pencil"></span>郵箱：</span><input class="form-control" disabled="disabled" value=""></input>
                    </div>
                    <br/>
                    <div class="input-group">
                    <span class="input-group-addon">
                    <span class="glyphicon glyphicon-pencil"></span>QQ：</span><input class="form-control" disabled="disabled" value=""></input>
                    </div>
                    <br/>
                    <div class="input-group">
                    <span class="input-group-addon">
                    <span class="glyphicon glyphicon-pencil"></span>微信：</span><input class="form-control" disabled="disabled" value=""></input>
                    </div>
                    <br/>
                    <div class="input-group">
                    <span class="input-group-addon">
                    <span class="glyphicon glyphicon-pencil"></span>公司行業：</span><input class="form-control" disabled="disabled" value=""></input>
                    </div>
                    <br/>
                    <div class="input-group">
                    <span class="input-group-addon">
                    <span class="glyphicon glyphicon-pencil"></span>公司名字：</span><input class="form-control" disabled="disabled" value=""></input>
                    </div>
                    <br/>
                </div>
                </div>
            </div>
            <div id="improve" class="tab-pane fade">
            <ol class="breadcrumb" style="margin-top: 20px;">
                <li><a href="#">個人資料</a></li>
                <li class="active">完善個人信息</li>
            </ol>
            <div class="row well">
            <form action="#" method="post">
                <div class="col-xs-5">
                    <div class="input-group">
                    <span class="input-group-addon" style=""><span class="glyphicon glyphicon-pencil"></span>&nbsp;暱稱：</span><input name="name" type="text" class="form-control"  value=""></input>
                    </div>
                    <br/>
                    <div class="input-group">
                    <span class="input-group-addon">
                    <span class="glyphicon glyphicon-pencil"></span>性別：</span>
                    <input class="form-control" name="sex" type="text" disabled="disabled" value="男" id="sex"></input> 
                    <div class="input-group-btn">
                        <button type="button" class="btn btn-default 
                        dropdown-toggle" data-toggle="dropdown">選擇
                            <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu pull-right">
                            <li>
                                <a href="#" onclick='$("#sex").val("男")'>男</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#" onclick='$("#sex").val("女")'>女</a>
                            </li>
                        </ul>
                    </div>
                    </div>
                    <br/>
                    <div class="input-group">
                    <span class="input-group-addon">
                    <span class="glyphicon glyphicon-pencil"></span>所在地：</span>
                    <select name="cmbProvince" class="form-control" id="cmbProvince" style="width: 33%;">
                    </select>
                    <select name="cmbCity" class="form-control" id="cmbCity" style="width: 33%;">
                    </select>
                    <select name="cmbArea" class="form-control" id="cmbArea" style="width: 34%;">
                    </select>
                    </div>
                    <br/>
                    <div class="input-group">
                    <span class="input-group-addon">
                    <span class="glyphicon glyphicon-pencil"></span>公司名字：</span><input class="form-control" value=""></input>
                    </div>
                    <br/>
                    <div class="input-group">
                    <span class="input-group-addon">
                    <span class="glyphicon glyphicon-pencil"></span>公司行業：</span><input class="form-control" value=""></input>
                    </div>
                    <br/>
                    
                </div>
                <div class="col-xs-2"></div>
                <div class="col-xs-5">
                    <div class="input-group">
                    <span class="input-group-addon">
                    <span class="glyphicon glyphicon-pencil"></span>電話：</span><input class="form-control" value=""></input></div><br/>
                    <div class="input-group">
                    <span class="input-group-addon">
                    <span class="glyphicon glyphicon-pencil"></span>郵箱：</span><input type="email" class="form-control" value=""></input>
                    </div>
                    <br/>
                    <div class="input-group">
                    <span class="input-group-addon">
                    <span class="glyphicon glyphicon-pencil"></span>QQ：</span><input class="form-control" value=""></input>
                    </div>
                    <br/>
                    <div class="input-group">
                    <span class="input-group-addon">
                    <span class="glyphicon glyphicon-pencil"></span>微信：</span><input class="form-control" value=""></input>
                    </div>
                    <br/>
                    <button class="btn btn-primary" type="reset">重置</button>
                    <button class="btn btn-success pull-right" type="submit">提交</button>
                    
                </div>
                </form>
                </div>
              
            </div>
            <div id="phoneBand" class="tab-pane fade">
            <ol class="breadcrumb" style="margin-top: 20px;">
                <li><a href="#">個人資料</a></li>
                <li class="active">綁定手機</li>
            </ol>
            <div class="row well">
                <div class="col-xs-5">
                    <div class="input-group">
                        <span class="input-group-addon">
                        <span class="glyphicon glyphicon-pencil"></span>原手機號碼：</span><input class="form-control" value="" disabled="disabled"></input>
                    </div>
                </div>
                <div class="col-xs-2"></div>
                <div class="col-xs-5">
                    <div class="input-group">
                        <span class="input-group-addon">
                        <span class="glyphicon glyphicon-pencil"></span>新手機號碼：</span>
                        <input class="form-control" value=""></input>
                        <span class="input-group-btn">
                            <button class="btn btn-success" type="button">發送驗證碼</button>
                        </span>
                    </div>
                    <br/>
                    <div class="input-group">
                        <span class="input-group-addon">
                        <span class="glyphicon glyphicon-pencil"></span>驗證碼：</span>
                        <input class="form-control" value=""></input>
                        <span class="input-group-btn">
                            <button class="btn btn-success" type="button">確定</button>
                        </span>
                    </div>
                </div>
            </div>
            </div>
            <div id="passwordChange" class="tab-pane fade">
              <ol class="breadcrumb" style="margin-top: 20px;">
                <li><a href="#">個人資料</a></li>
                <li class="active">修改密碼</li>
            </ol>
            <div class="row well">
                <div class="col-xs-5">
                    <div class="input-group">
                        <span class="input-group-addon">
                        <span class="glyphicon glyphicon-pencil"></span>原密碼：</span><input class="form-control" value=""></input>
                    </div>
                    <br/>
                    <div class="input-group">
                        <span class="input-group-addon">
                        <span class="glyphicon glyphicon-pencil"></span>新密碼：</span><input class="form-control" value=""></input>
                    </div>
                    <br/>
                    <div class="input-group">
                        <span class="input-group-addon">
                        <span class="glyphicon glyphicon-pencil"></span>確認密碼：</span><input class="form-control" value=""></input>
                    </div>
                    <br/>
                    <button class="btn btn-success pull-right" type="submit">提交</button>
                </div>
                <div class="col-xs-2"></div>
                <div class="col-xs-5">
                    
                    
                </div>
            </div>
            </div>
        </div>
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
<script src="${pageContext.request.contextPath}/js/jsAddress.js"></script>
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

        addressInit('cmbProvince', 'cmbCity', 'cmbArea');

    }); 
</script>

  </body>
</html>
