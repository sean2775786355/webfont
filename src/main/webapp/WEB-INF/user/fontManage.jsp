<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>炫字網-首頁-勵志打造最好的字體服務平臺</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/css/memenu.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/css/bootstrap-switch.min.css" rel="stylesheet" />
    <link href="http://cdn.datatables.net/plug-ins/28e7751dbec/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">
    
    <style type="text/css">
     /* 复制提示 */
     .copy-tips{position:fixed;z-index:999;bottom:50%;left:50%;margin:0 0 -20px -80px;background-color:rgba(0, 0, 0, 0.2);filter:progid:DXImageTransform.Microsoft.Gradient(startColorstr=#30000000, endColorstr=#30000000);padding:6px;}
     .copy-tips-wrap{padding:10px 20px;text-align:center;border:1px solid #F4D9A6;background-color:#FFFDEE;font-size:14px;}
    </style>
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
          <li><a href="${pageContext.request.contextPath}/user/person">個人資料</a></li>
          <li><a href="${pageContext.request.contextPath}/user/account">我的帳戶</a></li>
          <li class="active"><a href="${pageContext.request.contextPath}/user/fontManage">字庫管理</a></li>
          <li><a href="${pageContext.request.contextPath}/user/message">消息中心</a></li>
        </ul>
    </div>
    <div class="col-xs-10">
        <ul class="nav nav-tabs">
            <li class="active"><a data-toggle="tab" href="#fontUpload">字體上傳</a></li>
            <li><a data-toggle="tab" href="#notPass">未通過</a></li>
            <li><a data-toggle="tab" href="#inAudit">審核中</a></li>
            <li><a data-toggle="tab" href="#havePassed">已通過</a></li>
            <li><a data-toggle="tab" href="#offlinePurchaseOfCopyrightCertificate">線下易購版權證明</a></li>
            <li><a data-toggle="tab" href="#CSSUsageLog">CSS使用記錄</a></li>
            <li><a data-toggle="tab" href="#JSUsageLog">JS使用記錄</a></li>
            <li><a data-toggle="tab" href="#collectionList">收藏列表</a></li>
            <li><a data-toggle="tab" href="#commented">評論過的</a></li>
        </ul>

        <div class="tab-content">
            <div id="fontUpload" class="tab-pane fade in active">
            <ol class="breadcrumb" style="margin-top: 20px;">
                <li><a href="#">字庫管理</a></li>
                <li class="active">字體上傳</li>
            </ol>
            <div class="well"> 
            <form action="#">
            <div class="row">
            
                <div class="col-xs-3"></div>
                <div class="col-xs-5">
                    <p style="margin: 15px;font-size: 15px;">*字體廠商</p>
                    <select class="form-control" name="fontMaker">
                    <!-- 從數據庫取 -->
                      <c:forEach var="manufacturer" items="${manufacturerList}">
                          <option>${manufacturer.name}</option>
                      </c:forEach>
                    </select>
                </div>
            </div>
            
            <div class="row">
        
                <div class="col-xs-3"></div>
                <div class="col-xs-5">
                    <p style="margin: 15px;font-size: 15px;">*字體類型</p>
                    <select class="form-control" name="fontType">
                    <!-- 從數據庫取 -->
                      <c:forEach items="${typeList}" var="type">
                          <option>${type.name}</option>
                      </c:forEach>
                    </select>
                </div>
            </div>
            
            <div class="row">
        
                <div class="col-xs-3"></div>
                <div class="col-xs-5">
                    <p style="margin: 15px;font-size: 15px;">*字體編碼</p>
                    <select class="form-control" name="fontEncoding">
                    <!-- 從數據庫取 -->
                      <c:forEach items="${encodingList}" var="encoding">
                          <option>${encoding.name}</option>
                      </c:forEach>
                    </select>
                </div>
            </div>
            
            <div class="row">
        
                <div class="col-xs-3"></div>
                <div class="col-xs-5">
                    <p style="margin: 15px;font-size: 15px;">*字體語系</p>
                    <select class="form-control" name="fontFamily">
                    <!-- 從數據庫取 -->
                        <c:forEach items="${phylumList}" var="phylum">
                            <option>${phylum.name}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
        
            <div class="row">
        
                <div class="col-xs-3"></div>
                <div class="col-xs-5">
                    <p style="margin: 15px;font-size: 15px;">*字體風格</p>
                    <select class="form-control" name="fontStyle">
                    <!-- 從數據庫取 -->
                      <c:forEach items="${styleList}" var="style">
                          <option>${style.name}</option>
                      </c:forEach>
                    </select>
                </div>
            </div>

            <div class="row">
        
                <div class="col-xs-3"></div>
                <div class="col-xs-5">
                    <p style="margin: 15px;font-size: 15px;">*分享與託管</p>
                    <div class="switch" data-on="success" data-off="danger">
                        <input type="checkbox" name="shareOrHosting" switch="switch"/>
                    </div>
                </div>
            </div>

            <div class="row">
        
                <div class="col-xs-3"></div>
                <div class="col-xs-5">
                    <p style="margin: 15px;font-size: 15px;">*選擇字體文件</p>
                    <input type="file" class="" name="fontFile" />
                </div>
            </div>

            <div class="row">
        
                <div class="col-xs-3"></div>
                <div class="col-xs-5">
                    <p style="margin: 15px;font-size: 15px;">*字體描述</p>
                    <textarea name="fontDescribe" class="form-control" style="height: 100px" placeholder="500字以內"></textarea>
                </div>
            </div>
            <br/>
            <br/>
            <div class="row">
        
                <div class="col-xs-3"></div>
                <div class="col-xs-5">
                    <div class="btn-group pull-right">
                        <button type="button" class="btn btn-success">提交</button>
                        <button type="reset" class="btn btn-primary">重置</button>
                    </div>
                </div>
            </div>

            </form>

            </div>
            </div>

            <div id="notPass" class="tab-pane fade">
            <ol class="breadcrumb" style="margin-top: 20px;">
                <li><a href="#">字庫管理</a></li>
                <li class="active">未通過</li>
            </ol>
            <div class="well">
            <div class="row">
                <div class="col-xs-12">
                    
                    <table id="notPassTable" class="table table-striped table-bordered table-control"> 
                        <thead> 
                         <tr> 
                          <th width="10%">序號</th> 
                          <th width="10%">ID號</th> 
                          <th width="10%">創建時間</th> 
                          <th width="10%">字體文件名</th>
                          <th width="10%">審核狀態</th>
                         </tr> 
                        </thead> 
                        <tbody>
                            <tr> 
                              <th width="10%">1</th>
                              <th width="10%">1</th>
                              <th width="10%">2017-10-18</th>
                              <th width="10%">华文龙体</th>
                              <th width="10%">未通过</th>
                            </tr> 
                            <tr> 
                              <th width="10%">2</th>
                              <th width="10%">2</th>
                              <th width="10%">2017-9-18</th>
                              <th width="10%">中国黑体</th>
                              <th width="10%">未通过</th>
                            </tr> 
                            <tr> 
                              <th width="10%">3</th>
                              <th width="10%">3</th>
                              <th width="10%">2017-9-18</th>
                              <th width="10%">行楷</th>
                              <th width="10%">未通过</th>
                            </tr> 

                        </tbody> 
                        <tfoot> 
                         <tr> 
                          <th width="10%">序號</th> 
                          <th width="10%">ID號</th> 
                          <th width="10%">創建時間</th> 
                          <th width="10%">字體文件名</th>
                          <th width="10%">審核狀態</th>
                         </tr> 
                        </tfoot> 
                        <!-- tbody是必须的 --> 
                    </table>
                </div>
                </div>
                    
                </div>
            </div>
            

            <div id="inAudit" class="tab-pane fade">
            <ol class="breadcrumb" style="margin-top: 20px;">
                <li><a href="#">字庫管理</a></li>
                <li class="active">審核中</li>
            </ol>
            <div class="well">
            <div class="row">
                <div class="col-xs-12">
                    <table id="inAuditTable" class="table table-striped table-bordered table-control"> 
                        <thead> 
                         <tr> 
                          <th width="10%">序號</th> 
                          <th width="10%">ID號</th> 
                          <th width="10%">創建時間</th> 
                          <th width="10%">字體文件名</th>
                          <th width="10%">審核狀態</th>
                         </tr> 
                        </thead> 
                        <tbody>
                            <tr> 
                              <th width="10%">1</th>
                              <th width="10%">1</th>
                              <th width="10%">2017/05/06</th>
                              <th width="10%">华文龙体</th>
                              <th width="10%">审核中</th>
                            </tr> 
                            <tr> 
                              <th width="10%">2</th>
                              <th width="10%">2</th>
                              <th width="10%">2017/06/21</th>
                              <th width="10%">中国黑体</th>
                              <th width="10%">审核中</th>
                            </tr>
                            <tr>
                              <th width="10%">3</th>
                              <th width="10%">3</th>
                              <th width="10%">2017/06/30</th>
                              <th width="10%">行楷</th>
                              <th width="10%">审核中</th>
                            </tr>
                        </tbody> 
                        <tfoot> 
                         <tr> 
                          <th width="10%">序號</th> 
                          <th width="10%">ID號</th> 
                          <th width="10%">創建時間</th> 
                          <th width="10%">字體文件名</th>
                          <th width="10%">審核狀態</th>
                         </tr> 
                        </tfoot> 
                        <!-- tbody是必须的 --> 
                    </table>

                </div>
                </div>
            </div>
            </div>

            <div id="havePassed" class="tab-pane fade">
                <ol class="breadcrumb" style="margin-top: 20px;">
                    <li><a href="#">字庫管理</a></li>
                    <li class="active">已通過</li>
                </ol>
                <div class="well">
                    <div class="row">
                        <div class="col-xs-12">
                            <table id="havePassedTable" class="table table-striped table-bordered table-control">
                                <thead> 
                                 <tr> 
                                  <th width="10%">序號</th> 
                                  <th width="10%">字體編號</th> 
                                  <th width="10%">審核時間</th> 
                                  <th width="10%">AccessKey</th>
                                  <th width="10%">字体文件名</th>
                                 </tr> 
                                </thead> 
                                <tbody>
                                    <tr> 
                                      <th width="10%">1</th>
                                      <th width="10%">1</th>
                                      <th width="10%">2017/10/20</th>
                                      <th width="10%">12533EAAFS1SCA1CS1A6C16SAS</th>
                                      <th width="10%">华文龙体</th>
                                    </tr> 
                                    <tr> 
                                      <th width="10%">2</th>
                                      <th width="10%">2</th>
                                      <th width="10%">2017/10/21</th>
                                      <th width="10%">1255ADA2CSA2C2SAACS02SC0SA</th>
                                      <th width="10%">中国黑体</th>
                                    </tr> 
                                    <tr> 
                                      <th width="10%">3</th>
                                      <th width="10%">3</th>
                                      <th width="10%">2017/10/21</th>
                                      <th width="10%">1ASASFSADC1SA531SA31CSSA2FC</th>
                                      <th width="10%">行楷</th>
                                    </tr> 
                                </tbody> 
                                <tfoot> 
                                 <tr> 
                                  <th width="10%">序號</th> 
                                  <th width="10%">字體編號</th> 
                                  <th width="10%">審核時間</th> 
                                  <th width="10%">AccessKey</th>
                                  <th width="10%">字体文件名</th>
                                 </tr> 
                                </tfoot> 
                                <!-- tbody是必须的 --> 
                            </table>
                            <br/>
                        </div>
                    </div>
                    
                </div>
            </div>

            <div id="offlinePurchaseOfCopyrightCertificate" class="tab-pane fade">
                <ol class="breadcrumb" style="margin-top: 20px;">
                    <li><a href="#">字庫管理</a></li>
                    <li class="active">線下已購版權證明</li>
                </ol>
                <div class="well">
                    <div class="row">
                        <p style="margin: 15px;font-size: 20px;">審核中</p>
                        <div class="col-xs-12">
                            <table id="inAuditTable2" class="table table-striped table-bordered table-control">
                                <thead> 
                                 <tr> 
                                  <th width="10%">字體名稱</th> 
                                  <th width="10%">申請時間</th> 
                                  <th width="10%">申請于</th> 
                                  <th width="10%">操作</th>
                                 </tr> 
                                </thead>
                                <tbody>
                                <tr>
                                    <th width="10%">幼圆 龙飞凤舞 中国字体</th>
                                    <th width="10%">2017/10/21</th>
                                    <th width="10%">字体管理中心</th>
                                    <th width="10%"></th>
                                </tr>
                                <tr>
                                    <th width="10%">义启悠悠夏日体 龙飞凤舞 中国文字之美</th>
                                    <th width="10%">2017/10/21</th>
                                    <th width="10%">字体管理中心</th>
                                    <th width="10%"></th>
                                </tr>
                                <tr>
                                    <th width="10%">义启紫水晶体 龙飞凤舞 中国文字之美</th>
                                    <th width="10%">2017/10/21</th>
                                    <th width="10%">字体管理中心</th>
                                    <th width="10%"></th>
                                </tr>
                                </tbody>
                                <tfoot> 
                                 <tr> 
                                  <th width="10%">字體名稱</th> 
                                  <th width="10%">申請時間</th> 
                                  <th width="10%">申請于</th> 
                                  <th width="10%">操作</th>
                                 </tr> 
                                </tfoot> 
                                <!-- tbody是必须的 --> 
                            </table>
                            <br/>
                        </div>
                    </div>
                    <hr style="border-top:3px groove skyblue;" />
                    <div class="row">
                    <p style="margin: 15px;font-size: 20px;">已通過</p>
                        <div class="col-xs-12">
                            
                            <table id="havePassedTable2" class="table table-striped table-bordered table-control"> 
                                <thead> 
                                 <tr> 
                                  <th width="10%">字體名稱</th> 
                                  <th width="10%">審核時間</th> 
                                  <th width="10%">審核于</th> 
                                  <th width="10%">操作</th>
                                 </tr> 
                                </thead> 
                                <tbody>
                                    <tr> 
                                      <th width="10%">幼圆 龙飞凤舞 中国字体</th>
                                      <th width="10%">2017/10/21</th>
                                      <th width="10%">字体管理中心</th>
                                      <th width="10%"></th>
                                    </tr> 
                                    <tr> 
                                      <th width="10%">义启悠悠夏日体 龙飞凤舞 中国文字之美</th>
                                      <th width="10%">2017/10/21</th>
                                      <th width="10%">字体管理中心</th>
                                      <th width="10%"></th>
                                    </tr> 
                                    <tr> 
                                      <th width="10%">义启紫水晶体 龙飞凤舞 中国文字之美</th>
                                      <th width="10%">2017/10/21</th>
                                      <th width="10%">字体管理中心</th>
                                      <th width="10%"></th>
                                    </tr> 
                                </tbody> 
                                <tfoot> 
                                 <tr> 
                                  <th width="10%">字體名稱</th> 
                                  <th width="10%">審核時間</th> 
                                  <th width="10%">審核于</th> 
                                  <th width="10%">操作</th>
                                 </tr> 
                                </tfoot> 
                                <!-- tbody是必须的 --> 
                            </table>
                        </div>
                    </div>
                    <hr style="border-top:3px groove skyblue;" />

                    <div class="row">
                    <p style="margin: 15px;font-size: 20px;">未通過</p>
                        <div class="col-xs-12">
                            
                            <table id="notPassTable2" class="table table-striped table-bordered table-control"> 
                                <thead> 
                                 <tr> 
                                  <th width="10%">字體名稱</th> 
                                  <th width="10%">審核時間</th> 
                                  <th width="10%">審核于</th> 
                                  <th width="10%">操作</th>
                                 </tr> 
                                </thead>
                                <tbody>
                                <tr>
                                    <th width="10%">幼圆 龙飞凤舞 中国字体</th>
                                    <th width="10%">2017/10/21</th>
                                    <th width="10%">字体管理中心</th>
                                    <th width="10%"></th>
                                </tr>
                                <tr>
                                    <th width="10%">义启悠悠夏日体 龙飞凤舞 中国文字之美</th>
                                    <th width="10%">2017/10/21</th>
                                    <th width="10%">字体管理中心</th>
                                    <th width="10%"></th>
                                </tr>
                                <tr>
                                    <th width="10%">义启紫水晶体 龙飞凤舞 中国文字之美</th>
                                    <th width="10%">2017/10/21</th>
                                    <th width="10%">字体管理中心</th>
                                    <th width="10%"></th>
                                </tr>
                                </tbody>
                                <tfoot> 
                                 <tr> 
                                  <th width="10%">字體名稱</th> 
                                  <th width="10%">審核時間</th> 
                                  <th width="10%">審核于</th> 
                                  <th width="10%">操作</th>
                                 </tr> 
                                </tfoot> 
                                <!-- tbody是必须的 --> 
                            </table>
                        </div>
                    </div>
                    <hr style="border-top:3px groove skyblue;" />
                        
                    
                </div>
            </div>

            <div id="CSSUsageLog" class="tab-pane fade">
                <ol class="breadcrumb" style="margin-top: 20px;">
                    <li><a href="#">字庫管理</a></li>
                    <li class="active">CSS使用記錄</li>
                </ol>
                <div class="well">
                    <div class="row">
                        <div class="col-xs-12">
                            <table id="CSSUsageLogTable" class="table table-striped table-bordered table-control"> 
                                <thead> 
                                 <tr> 
                                  <th width="10%">序號</th> 
                                  <th width="10%">字體風格</th> 
                                  <th width="10%">字體類型</th> 
                                  <th width="10%">FontFamily</th>
                                  <th width="10%">操作</th>
                                 </tr> 
                                </thead> 
                                <tbody>
                                    <tr> 
                                      <th>1</th>
                                      <th>波浪字体</th>
                                      <th>行楷</th>
                                      <th>经典中圆简 龙飞凤舞 中国文字之美</th>
                                      <th></th>
                                    </tr> 
                                    <tr> 
                                      <th>2</th>
                                      <th>精致综艺</th>
                                      <th>书法体</th>
                                      <th>微软雅黑 龙飞凤舞 中国字体</th>
                                      <th></th>
                                    </tr>

                                </tbody> 
                                <tfoot> 
                                 <tr> 
                                  <th width="10%">序號</th> 
                                  <th width="10%">字體風格</th> 
                                  <th width="10%">字體類型</th> 
                                  <th width="10%">英文FontFamily</th>
                                  <th width="10%">中文FontFamily</th>
                                  <th width="10%">操作</th>
                                 </tr> 
                                </tfoot>
                                <!-- tbody是必须的 --> 
                            </table>

                        </div>
                    </div>
                </div>
            </div>

            <div id="JSUsageLog" class="tab-pane fade">
                <ol class="breadcrumb" style="margin-top: 20px;">
                    <li><a href="#">字庫管理</a></li>
                    <li class="active">JS使用記錄</li>
                </ol>
                <div class="well">
                    <div class="row">
                        <div class="col-xs-12">
                            <table id="JSUsageLogTable" class="table table-striped table-bordered table-control"> 
                                <thead> 
                                 <tr> 
                                  <th width="10%">序號</th> 
                                  <th width="80%">鏈接</th>
                                  <th width="10%">操作</th>
                                 </tr> 
                                </thead> 
                                <tbody>
                                    <tr> 
                                      <th>1</th>
                                      <th>http://www.font.com/1</th>
                                      <th></th>
                                    </tr> 
                                    <tr> 
                                      <th>2</th>
                                      <th>http://www.font.com/2</th>
                                      <th></th>
                                    </tr> 
                                    <tr> 
                                      <th>3</th>
                                      <th>http://www.font.com/3</th>
                                      <th></th>
                                    </tr> 

                                </tbody> 
                                <tfoot> 
                                 <tr> 
                                  <th width="10%">序號</th> 
                                  <th width="80%">鏈接</th>
                                  <th width="10%">操作</th>
                                 </tr> 
                                </tfoot>
                                <!-- tbody是必须的 --> 
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <div id="collectionList" class="tab-pane fade">
            <ol class="breadcrumb" style="margin-top: 20px;">
                <li><a href="#">字庫管理</a></li>
                <li class="active">收藏列表</li>
            </ol>
            <div class="well">
            <div class="row">
                <div class="col-xs-12">
                    <table id="collectionListTable" class="table table-striped table-bordered table-control"> 
                                <thead> 
                                 <tr> 
                                  <th width="10%">字體編號</th> 
                                  <th width="10%">AccessKey</th>
                                  <th width="10%">FontFamily</th>
                                  <th width="10%">收藏時間</th>
                                  <th width="10%">操作</th>
                                 </tr> 
                                </thead> 
                                <tbody>
                                    <tr> 
                                      <th>1</th>
                                      <th>12WEWCSQCX15SA1X5ASX16ASA</th>
                                      <th>黑体Light 龙飞凤舞 中国文字之美</th>
                                      <th>2016/07/22</th>
                                      <th></th>
                                    </tr> 
                                    <tr> 
                                      <th>2</th>
                                      <th>12ACSDCEW61A6CA03A9SXCSAC</th>
                                      <th>经典中圆简 龙飞凤舞 中国文字之美</th>
                                      <th>2017/07/21</th>
                                      <th></th>
                                    </tr> 
                                    <tr> 
                                      <th>3</th>
                                      <th>12A4520DAZ61A6CA03A9SXCSAC</th>
                                      <th>微软雅黑 龙飞凤舞 中国字体</th>
                                      <th>2017/10/01</th>
                                      <th></th>
                                    </tr> 

                                </tbody> 
                                <tfoot> 
                                 <tr> 
                                  <th width="10%">字體編號</th> 
                                  <th width="10%">AccessKey</th>
                                  <th width="10%">FontFamily</th>
                                  <th width="10%">收藏時間</th>
                                  <th width="10%">操作</th>
                                 </tr> 
                                </tfoot>
                                <!-- tbody是必须的 --> 
                            </table>
                </div>
            </div>
            </div>
            </div>

            <div id="commented" class="tab-pane fade">
                <ol class="breadcrumb" style="margin-top: 20px;">
                    <li><a href="#">字庫管理</a></li>
                    <li class="active">評論過的</li>
                </ol>
                <div class="well">
                    <div class="row">
                        <div class="col-xs-5"></div>
                        <div class="col-xs-2">
                            暫無數據
                        </div>
                        <div class="col-xs-5"></div>
                    </div>
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
        
        $("[name='shareOrHosting']").bootstrapSwitch({
            onText:"分享",  
            offText:"託管",  
            onColor:"success",  
            offColor:"info",  
            
            onSwitchChange:function(event,state){  
                if(state==true){ 
                    //這裡處理事件
                    //alert("開起成功");  
                }else{  
                    //這裡處理事件
                    //alert("關閉成功");  
                }  
        }  
        });
        

        

        

        

        $(".table").DataTable({
              language: {  
                  "sProcessing": "处理中...",  
                  "sLengthMenu": "显示 _MENU_ 项结果",  
                  "sZeroRecords": "没有匹配结果",  
                  "sInfo": "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",  
                  "sInfoEmpty": "显示第 0 至 0 项结果，共 0 项",  
                  "sInfoFiltered": "(由 _MAX_ 项结果过滤)",  
                  "sInfoPostFix": "",  
                  "sSearch": "搜索:",  
                  "sUrl": "",  
                  "sEmptyTable": "表中数据为空",  
                  "sLoadingRecords": "载入中...",  
                  "sInfoThousands": ",",  
                  "oPaginate": {  
                      "sFirst": "首页",  
                      "sPrevious": "上页",  
                      "sNext": "下页",  
                      "sLast": "末页"  
                  },  
                  "oAria": {  
                      "sSortAscending": ": 以升序排列此列",  
                      "sSortDescending": ": 以降序排列此列"  
                  }  
              }  
        });
        



    }); 
</script>
<!--js--end-->
</body>

</html>
