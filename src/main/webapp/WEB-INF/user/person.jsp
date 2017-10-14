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
    <jsp:include page="../module/header.jsp"></jsp:include>
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
    <jsp:include page="../module/footer.jsp" flush="true"></jsp:include>
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
