<%@ page language="java" import="java.util.*" isELIgnored="false" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/css/memenu.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/css/bootstrap-switch.min.css" rel="stylesheet" />
    <link href="http://cdn.datatables.net/plug-ins/28e7751dbec/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">

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
            <%--<li><a href="#"><span class="glyphicon glyphicon-user"></span>註冊</a></li>--%>
            <li><a href="#"><span class="glyphicon glyphicon-user"></span>登錄</a></li>
        </ul>
        <form class="navbar-form navbar-left navbar-right form-group has-feedback" role="search" action="${pageContext.request.contextPath}/font/search">
            <div class="form-group has-feedback">
                <input id="search" type="text" name="searchKeyword" class="form-control" placeholder="字體名 廠商 類型 風格" value="${searchKeyword}">
                <span class="glyphicon glyphicon-search form-control-feedback" aria-hidden="true" style="font-size: large"></span>
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
                        <li class="grid"><a href="${pageContext.request.contextPath}/font/fontList">字體列表</a>
                            <%--<div class="mepanel">--%>
                                <%--<div class="row">--%>
                                    <%--<div class="col1 me-one">--%>
                                        <%--<h4>廠商</h4>--%>
                                        <%--<ul>--%>
                                            <%--<li><a href ="#">信黑</a></li>--%>
                                            <%--<li><a href ="#">書法家</a></li>--%>
                                            <%--<li><a href ="#">陳繼世</a></li>--%>
                                            <%--<li><a href ="#">字體中國</a></li>--%>
                                            <%--<li><a href ="#">蘋果</a></li>--%>
                                            <%--<li><a href ="#">字體管家</a></li>--%>
                                            <%--<li><a href ="#">本墨</a></li>--%>
                                            <%--<li><a href ="#">更多...</a></li>--%>
                                        <%--</ul>--%>
                                    <%--</div>--%>
                                    <%--<div class="col1 me-one">--%>
                                        <%--<h4>類型</h4>--%>
                                        <%--<ul>--%>
                                            <%--<li><a href ="#">圓體</a></li>--%>
                                            <%--<li><a href ="#">魏碑</a></li>--%>
                                            <%--<li><a href ="#">篆書</a></li>--%>
                                            <%--<li><a href ="#">行楷</a></li>--%>
                                            <%--<li><a href ="#">美素體</a></li>--%>
                                            <%--<li><a href ="#">書法體</a></li>--%>
                                            <%--<li><a href ="#">綜藝體</a></li>--%>
                                            <%--<li><a href ="#">更多...</a></li>--%>
                                        <%--</ul>   --%>
                                    <%--</div>--%>
                                    <%--<div class="col1 me-one">--%>
                                        <%--<h4>編碼</h4>--%>
                                        <%--<ul>--%>
                                            <%--<li><a href ="#">統一字符編碼(UNICODE)</a></li>--%>
                                            <%--<li><a href ="#">繁體中文(BIG5)</a></li>--%>
                                            <%--<li><a href ="#">簡體大字符集(GBK)</a></li>--%>
                                            <%--<li><a href ="#">簡體中文(GB2312)</a></li>--%>
                                            <%--<li><a href ="#">其他</a></li>--%>
                                            <%----%>
                                        <%--</ul>       --%>
                                    <%--</div>--%>
                                    <%--<div class="col1 me-one">--%>
                                        <%--<h4>更多字體......</h4>--%>
                                            <%----%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        </li>
                        <li class="grid"><a href="#">SDK/插件</a>
                            <div class="mepanel">
                                <div class="row">
                                    <div class="col1 me-one">
                                        <ul>
                                            <li><a href ="#">API接口文檔</a></li>
                                            <li><a href="#">後端SDK工具包</a></li>
                                            <li><a href ="#">H5在綫編輯插件</a></li>
                                        </ul>

                                    </div>
                                    <div class="col1 me-one">
                                        <ul>
                                            <li><a href ="#">即時文字插件</a></li>
                                            <li><a href ="#">JS插件(盧教模式)</a></li>
                                            <li><a href ="#">WordPress挿件</a></li>
                                        </ul>
                                    </div>
                                    <div class="coll me-one">
                                        <ul>
                                            <li><a href ="#">更多</a></li>
                                        </ul>
                                    </div>


                                </div>
                            </div>
                        </li>
                        <li class="grid"><a href="#">幫助中心</a>
                            <div class="mepanel">
                                <div class="row">
                                    <div class="col1 me-one">
                                        <ul>
                                            <li><a>調用方法</a></li>
                                            <li><a>常見問題</a></li>
                                            <li><a>使用規則</a></li>
                                        </ul>
                                    </div>
                                    <div class="col1 me-one">
                                        <ul>
                                            <li><a>版權人認證流程</a></li>
                                            <li><a>線下購買認證流程</a></li>
                                            <li><a>炫幣計費規則</a></li>
                                        </ul>
                                    </div>
                                    <div class="col1 me-one">
                                        <ul>
                                            <li><a>意見反饋</a></li>
                                            <li><a>更多</a></li>
                                            <li><a></a></li>
                                        </ul>
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


    <!--bottom-header-->
<!--header--end-->

<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/simpleCart.min.js"> </script>
<script src="${pageContext.request.contextPath}/js/jquery.zclip.js"> </script>
<script src="${pageContext.request.contextPath}/js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script> 
<!--bootstrap-swich-->
<script src="${pageContext.request.contextPath}/js/bootstrap-switch.min.js"> </script>
<!--dropdown-->
<script src="${pageContext.request.contextPath}/js/jquery.easydropdown.js"></script>
<!--echarts -->     
<script src="${pageContext.request.contextPath}/js/echarts.common.min.js"></script> 
<!-- datatable -->
<script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
<script src="http://cdn.datatables.net/plug-ins/28e7751dbec/integration/bootstrap/3/dataTables.bootstrap.js"></script>
<script type="text/javascript">
	addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
</script>

  </body>
</html>
