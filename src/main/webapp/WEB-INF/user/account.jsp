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
          <li><a href="${pageContext.request.contextPath}/user/person">個人資料</a></li>
          <li class="active"><a href="${pageContext.request.contextPath}/user/account">我的帳戶</a></li>
          <li><a href="${pageContext.request.contextPath}/user/fontManage">字庫管理</a></li>
          <li><a href="${pageContext.request.contextPath}/user/message">消息中心</a></li>
        </ul>
    </div>
    <div class="col-xs-10">
        <ul class="nav nav-tabs">
            <li class="active"><a data-toggle="tab" href="#accountInfo">帳戶總覽</a></li>
            <li><a data-toggle="tab" href="#expenditureDetails">收支明細</a></li>
            <li><a data-toggle="tab" href="#fontManage">字體套餐</a></li>
            <li><a data-toggle="tab" href="#AuthorizationList">被授權列表</a></li>
            <li><a data-toggle="tab" href="#returnRecord">返還酷幣記錄</a></li>
            <li><a data-toggle="tab" href="#expensesRecord">消費記錄</a></li>
            <li><a data-toggle="tab" href="#Vouchers">代金卷</a></li>
            <li><a data-toggle="tab" href="#key">Key</a></li>
            <li><a data-toggle="tab" href="#OSSManage">OSS配置</a></li>
            <li><a data-toggle="tab" href="#whiteList">白名單</a></li>
        </ul>

        <div class="tab-content">
            <div id="accountInfo" class="tab-pane fade in active">
            <ol class="breadcrumb" style="margin-top: 20px;">
                <li><a href="#">我的帳戶</a></li>
                <li class="active">帳戶總覽</li>
            </ol>
            <div class="well">
            <div class="row">
            <p style="margin: 15px;font-size: 20px;">餘額概況</p>
                <div class="col-xs-5">
                    <div class="input-group">
                    <span class="input-group-addon" style=""><span class="glyphicon glyphicon-pencil"></span>&nbsp;帳戶餘額：</span><input class="form-control" disabled="disabled" value="0.00"></input>
                    </div>
                    <br/>
                </div>
            </div>
            <hr style="border-top:3px groove skyblue;" />
            <div class="row">
            <p style="margin: 15px;font-size: 20px;">套餐類別</p>
                <div class="col-xs-5">
                    <div class="input-group">
                    <span class="input-group-addon" style=""><span class="glyphicon glyphicon-pencil"></span>&nbsp;套餐類別：</span><input class="form-control" disabled="disabled" value="按量付費"></input>
                    </div>
                    <br/>
                    <div class="input-group">
                    <span class="input-group-addon" style=""><span class="glyphicon glyphicon-pencil"></span>&nbsp;單頁字數上限：</span><input class="form-control" disabled="disabled" value="500"></input>
                    </div>
                </div>
            </div>
            <hr style="border-top:3px groove skyblue;" />
            <div class="row">
            <p style="margin: 15px;font-size: 20px;">酷幣使用概況</p>
                <div class="col-xs-5">
                    <div class="input-group">
                    <span class="input-group-addon" style=""><span class="glyphicon glyphicon-pencil"></span>&nbsp;總酷幣數：</span><input class="form-control" disabled="disabled" value="100000"></input>
                    </div>
                    <br/>
                    <div class="input-group">
                    <span class="input-group-addon" style=""><span class="glyphicon glyphicon-pencil"></span>&nbsp;已使用酷幣數：</span><input class="form-control" disabled="disabled" value="0"></input>
                    </div>
                    <br/>
                    <div class="input-group">
                    <span class="input-group-addon" style=""><span class="glyphicon glyphicon-pencil"></span>&nbsp;剩餘總酷幣數：</span><input class="form-control" disabled="disabled" value="100000"></input>
                    </div>
                    <br/>
                    <button class="btn btn-success"  data-toggle="tab" href="#expensesRecord">消費記錄</button>
                </div>
            </div>
            <hr style="border-top:3px groove skyblue;" />
            <div class="row">
            <p style="margin: 15px;font-size: 20px;">自動續費管理</p>
                <div class="col-xs-5">
                    <p>&emsp;&emsp;當您的庫幣數不足時，系統會根據您上次的庫幣購買記錄自動從您的帳戶餘額中扣款，完成庫幣充值。</p>
                    <br/>
                    <div class="switch" data-on="success" data-off="danger">
                        <input type="checkbox" name="automaticRenewal" switch="switch"/>
                    </div>
                </div>
            </div>
            <hr style="border-top:3px groove skyblue;" />
            <div class="row">
            <p style="margin: 15px;font-size: 20px;">緊急續費庫幣</p>
                <div class="col-xs-5">
                    <p>&emsp;&emsp;當您已購的套餐中包含的庫幣數提前用完時，可按量購買達到正常服務。</p>
                    <br/>
                    <a class="btn btn-primary" href="#" role="button">緊急充值酷幣</a>
                </div>
            </div>


            </div>
            </div>

            <div id="expenditureDetails" class="tab-pane fade">
            <ol class="breadcrumb" style="margin-top: 20px;">
                <li><a href="#">我的帳戶</a></li>
                <li class="active">收支明細</li>
            </ol>
            <div class="well">
            <div class="row">
                <div class="col-xs-12">
                    <div class="btn-group" data-toggle="buttons">
                        <label class="btn btn-success">
                            <input type="radio" name="transactionTypeButtons" id="option1"> 帳戶支出
                        </label>
                        <label class="btn btn-success">
                            <input type="radio" name="transactionTypeButtons" id="option2"> 微信
                        </label>
                        <label class="btn btn-success">
                            <input type="radio" name="transactionTypeButtons" id="option3"> 支付寶
                        </label>
                        <label class="btn btn-success">
                            <input type="radio" name="transactionTypeButtons" id="option3"> 系統
                        </label>
                    </div>
                    <br/><br/>
                    <div class="btn-group" data-toggle="buttons">
                        <label class="btn btn-success">
                            <input type="radio" name="timeButtons" id="option1"> 今天
                        </label>
                        <label class="btn btn-success">
                            <input type="radio" name="timeButtons" id="option2"> 昨天
                        </label>
                        <label class="btn btn-success">
                            <input type="radio" name="timeButtons" id="option3"> 最近一週
                        </label>
                        <label class="btn btn-success">
                            <input type="radio" name="timeButtons" id="option3"> 最近一個月
                        </label>
                        <label class="btn btn-success">
                            <input type="radio" name="timeButtons" id="option3"> 最近一年
                        </label>
                    </div>
                    <br/><br/>
                    <div class="btn-group" data-toggle="buttons">
                        <label class="btn btn-success">
                            <input type="radio" name="platformButton" id="option1"> 帳戶支出
                        </label>
                        <label class="btn btn-success">
                            <input type="radio" name="platformButton" id="option2"> 在綫支出
                        </label>
                        <label class="btn btn-success">
                            <input type="radio" name="platformButton" id="option3"> 帳戶+在綫
                        </label>
                        <label class="btn btn-success">
                            <input type="radio" name="platformButton" id="option3"> 帳戶收入
                        </label>
                    </div>
                    <br/><br/>
                    <div id="expenditureDetailsEcharts" style="height:400px;width: 900px;"></div>
                    <br/><br/>
                    <table id="expenditureDetailsTable" class="table table-striped table-bordered table-control"> 
                        <thead> 
                         <tr> 
                          <th width="10%">流水號</th> 
                          <th width="10%">交易類別</th> 
                          <th width="10%">活動總金額</th> 
                          <th width="10%">購買酷幣數</th>
                          <th width="10%">帳戶支出</th>
                          <th width="10%">在綫支出</th>
                          <th width="10%">支付平臺</th>
                          <th width="10%">消費時間</th>
                         </tr> 
                        </thead> 
                        <tbody>
                            <tr> 
                              <th width="10%">123</th> 
                              <th width="10%">13</th> 
                              <th width="10%">456</th> 
                              <th width="10%">768</th>
                              <th width="10%">3154.4</th>
                              <th width="10%">123</th>
                              <th width="10%">345</th>
                              <th width="10%">435</th>
                            </tr> 
                            <tr> 
                              <th width="10%">123</th> 
                              <th width="10%">13</th> 
                              <th width="10%">456</th> 
                              <th width="10%">768</th>
                              <th width="10%">3154.4</th>
                              <th width="10%">123</th>
                              <th width="10%">345</th>
                              <th width="10%">435</th>
                            </tr> 
                            <tr> 
                              <th width="10%">123</th> 
                              <th width="10%">13</th> 
                              <th width="10%">456</th> 
                              <th width="10%">768</th>
                              <th width="10%">3154.4</th>
                              <th width="10%">123</th>
                              <th width="10%">345</th>
                              <th width="10%">435</th>
                            </tr> 

                        </tbody> 
                        <tfoot> 
                         <tr> 
                          <th width="10%">流水號</th> 
                          <th width="10%">交易類別</th> 
                          <th width="10%">活動總金額</th> 
                          <th width="10%">購買酷幣數</th>
                          <th width="10%">帳戶支出</th>
                          <th width="10%">在綫支出</th>
                          <th width="10%">支付平臺</th>
                          <th width="10%">消費時間</th>
                         </tr> 
                        </tfoot> 
                        <!-- tbody是必须的 --> 
                    </table>
                </div>
                </div>
                    
                </div>
            </div>
            

            <div id="fontManage" class="tab-pane fade">
            <ol class="breadcrumb" style="margin-top: 20px;">
                <li><a href="#">我的帳戶</a></li>
                <li class="active">字體套餐</li>
            </ol>
            <div class="well">
            <div class="row">
                <div class="col-xs-12">
                    <div class="btn-group" data-toggle="buttons">
                        <label class="btn btn-success">
                            <input type="radio" name="fontManageTimeButton" id="option1"> 全部
                        </label>
                        <label class="btn btn-success">
                            <input type="radio" name="fontManageTimeButton" id="option2"> 有效
                        </label>
                        <label class="btn btn-success">
                            <input type="radio" name="fontManageTimeButton" id="option3"> 已過期
                        </label>
                    </div>
                    <br/><br/>
                    <table id="fontManageTable" class="table table-striped table-bordered table-control"> 
                        <thead> 
                         <tr> 
                          <th width="10%">套餐名稱</th> 
                          <th width="10%">套餐類型</th> 
                          <th width="10%">套餐價格</th> 
                          <th width="10%">授權給</th>
                          <th width="10%">購買數量</th>
                          <th width="10%">有效期</th>
                          <th width="10%">操作</th>
                         </tr> 
                        </thead> 
                        <tbody>
                            <tr> 
                              <th width="10%">123</th> 
                              <th width="10%">13</th> 
                              <th width="10%">456</th> 
                              <th width="10%">768</th>
                              <th width="10%">3154.4</th>
                              <th width="10%">123</th>
                              <th width="10%"></th>
                            </tr> 
                            <tr> 
                              <th width="10%">123</th> 
                              <th width="10%">13</th> 
                              <th width="10%">456</th> 
                              <th width="10%">768</th>
                              <th width="10%">3154.4</th>
                              <th width="10%">123</th>
                              <th width="10%"></th>
                            </tr> 
                            <tr> 
                              <th width="10%">123</th> 
                              <th width="10%">13</th> 
                              <th width="10%">456</th> 
                              <th width="10%">768</th>
                              <th width="10%">3154.4</th>
                              <th width="10%">123</th>
                              <th width="10%"></th>
                            </tr> 

                        </tbody> 
                        <tfoot> 
                         <tr> 
                          <th width="10%">套餐名稱</th> 
                          <th width="10%">套餐類型</th> 
                          <th width="10%">套餐價格</th> 
                          <th width="10%">授權給</th>
                          <th width="10%">購買數量</th>
                          <th width="10%">有效期</th>
                          <th width="10%">操作</th>
                         </tr> 
                        </tfoot> 
                        <!-- tbody是必须的 --> 
                    </table>

                </div>
                </div>
            </div>
            </div>

            <div id="AuthorizationList" class="tab-pane fade">
                <ol class="breadcrumb" style="margin-top: 20px;">
                    <li><a href="#">我的帳戶</a></li>
                    <li class="active">被授權列表</li>
                </ol>
                <div class="well">
                    <div class="row">
                        <p style="margin: 15px;font-size: 20px;">被授權列表</p>
                        <div class="col-xs-12">
                            <div class="btn-group">
                                <button type="button" class="btn btn-success">添加授權方</button>
                                <button type="button" class="btn btn-primary">轉交記錄</button>
                            </div>
                            <br/><br/>
                            <table id="AuthorizationTable" class="table table-striped table-bordered table-control">
                                <thead> 
                                 <tr> 
                                  <th width="10%">序號</th> 
                                  <th width="10%">被授權方</th> 
                                  <th width="10%">添加時間</th> 
                                  <th width="10%">創建於</th>
                                  <th width="10%">操作</th>
                                 </tr> 
                                </thead> 
                                <tbody>
                                    <tr> 
                                      <th width="10%">123</th> 
                                      <th width="10%">13</th> 
                                      <th width="10%">456</th> 
                                      <th width="10%">768</th>
                                      <th width="10%"></th>
                                    </tr> 
                                    <tr> 
                                      <th width="10%">123</th> 
                                      <th width="10%">13</th> 
                                      <th width="10%">456</th> 
                                      <th width="10%">768</th>
                                      <th width="10%"></th>
                                    </tr> 
                                    <tr> 
                                      <th width="10%">123</th> 
                                      <th width="10%">13</th> 
                                      <th width="10%">456</th> 
                                      <th width="10%">768</th>
                                      <th width="10%"></th>
                                    </tr> 
                                </tbody> 
                                <tfoot> 
                                 <tr> 
                                  <th width="10%">序號</th> 
                                  <th width="10%">被授權方</th> 
                                  <th width="10%">添加時間</th> 
                                  <th width="10%">創建於</th>
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
                    <p style="margin: 15px;font-size: 20px;">待接收列表</p>
                        <div class="col-xs-12">
                            <div class="btn-group" data-toggle="buttons">
                                <label class="btn btn-success">
                                    <input type="radio" name="timeButtons2" id="option1"> 今天
                                </label>
                                <label class="btn btn-success">
                                    <input type="radio" name="timeButtons2" id="option2"> 昨天
                                </label>
                                <label class="btn btn-success">
                                    <input type="radio" name="timeButtons2" id="option3"> 最近一週
                                </label>
                                <label class="btn btn-success">
                                    <input type="radio" name="timeButtons2" id="option3"> 最近一個月
                                </label>
                                <label class="btn btn-success">
                                    <input type="radio" name="timeButtons2" id="option3"> 最近一年
                                </label>
                            </div>
                            <br/><br/>
                            <table id="receivedTable" class="table table-striped table-bordered table-control"> 
                                <thead> 
                                 <tr> 
                                  <th width="10%">編號</th> 
                                  <th width="10%">被授權方</th> 
                                  <th width="10%">轉交人</th> 
                                  <th width="10%">轉交時間</th>
                                  <th width="10%">轉交于</th>
                                  <th width="10%">操作</th>
                                 </tr> 
                                </thead> 
                                <tbody>
                                    <tr> 
                                      <th width="10%">123</th> 
                                      <th width="10%">13</th> 
                                      <th width="10%">456</th> 
                                      <th width="10%">768</th>
                                      <th width="10%">3154.4</th>
                                      <th width="10%"></th>
                                    </tr> 
                                    <tr> 
                                      <th width="10%">123</th> 
                                      <th width="10%">13</th> 
                                      <th width="10%">456</th> 
                                      <th width="10%">768</th>
                                      <th width="10%">3154.4</th>
                                      <th width="10%"></th>
                                    </tr> 
                                    <tr> 
                                      <th width="10%">123</th> 
                                      <th width="10%">13</th> 
                                      <th width="10%">456</th> 
                                      <th width="10%">768</th>
                                      <th width="10%">3154.4</th>
                                      <th width="10%"></th>
                                    </tr> 
                                </tbody> 
                                <tfoot> 
                                 <tr> 
                                  <th width="10%">編號</th> 
                                  <th width="10%">被授權方</th> 
                                  <th width="10%">轉交人</th> 
                                  <th width="10%">轉交時間</th>
                                  <th width="10%">轉交于</th>
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

            <div id="returnRecord" class="tab-pane fade">
                <ol class="breadcrumb" style="margin-top: 20px;">
                    <li><a href="#">我的帳戶</a></li>
                    <li class="active">返還酷幣記錄</li>
                </ol>
                <div class="well">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="btn-group" data-toggle="buttons">
                                <label class="btn btn-success">
                                    <input type="radio" name="timeButtons3" id="option1"> 今天
                                </label>
                                <label class="btn btn-success">
                                    <input type="radio" name="timeButtons3" id="option2"> 昨天
                                </label>
                                <label class="btn btn-success">
                                    <input type="radio" name="timeButtons3" id="option3"> 最近一週
                                </label>
                                <label class="btn btn-success">
                                    <input type="radio" name="timeButtons3" id="option3"> 最近一個月
                                </label>
                                <label class="btn btn-success">
                                    <input type="radio" name="timeButtons3" id="option3"> 最近一年
                                </label>
                            </div>
                            <br/><br/>
                            <table id="returnRecordTable" class="table table-striped table-bordered table-control"> 
                                <thead> 
                                 <tr> 
                                  <th width="10%">流水號</th> 
                                  <th width="10%">返還酷幣數</th> 
                                  <th width="10%">操作描述</th> 
                                  <th width="10%">系統返還時間</th>
                                 </tr> 
                                </thead> 
                                <tbody>
                                    <tr> 
                                      <th width="10%">123</th> 
                                      <th width="10%">13</th> 
                                      <th width="10%">456</th> 
                                      <th width="10%">768</th>
                                    </tr> 
                                    <tr> 
                                      <th width="10%">123</th> 
                                      <th width="10%">13</th> 
                                      <th width="10%">456</th> 
                                      <th width="10%">768</th>
                                    </tr> 
                                    <tr> 
                                      <th width="10%">123</th> 
                                      <th width="10%">13</th> 
                                      <th width="10%">456</th> 
                                      <th width="10%">768</th>
                                    </tr> 
                                </tbody> 
                                <tfoot> 
                                 <tr> 
                                  <th width="10%">流水號</th> 
                                  <th width="10%">返還酷幣數</th> 
                                  <th width="10%">操作描述</th> 
                                  <th width="10%">系統返還時間</th>
                                 </tr> 
                                </tfoot> 
                                <!-- tbody是必须的 --> 
                            </table>
                        </div>
                        
                    </div>
                </div>
            </div>

            <div id="expensesRecord" class="tab-pane fade">
                <ol class="breadcrumb" style="margin-top: 20px;">
                    <li><a href="#">我的帳戶</a></li>
                    <li class="active">消費記錄</li>
                </ol>
                <div class="well">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="btn-group" data-toggle="buttons">
                                <label class="btn btn-success">
                                    <input type="radio" name="timeButtons3" id="option1"> 今天
                                </label>
                                <label class="btn btn-success">
                                    <input type="radio" name="timeButtons3" id="option2"> 昨天
                                </label>
                                <label class="btn btn-success">
                                    <input type="radio" name="timeButtons3" id="option3"> 最近一週
                                </label>
                                <label class="btn btn-success">
                                    <input type="radio" name="timeButtons3" id="option3"> 最近一個月
                                </label>
                                <label class="btn btn-success">
                                    <input type="radio" name="timeButtons3" id="option3"> 最近一年
                                </label>
                            </div>
                            <br/><br/>
                            <div id="expensesRecordEcharts" style="height:400px;width: 900px;"></div>
                            <table id="returnRecordTable" class="table table-striped table-bordered table-control"> 
                                <thead> 
                                 <tr> 
                                  <th width="10%">日期</th> 
                                  <th width="10%">消費酷幣數</th> 
                                  <th width="10%">剩餘酷幣數</th> 
                                  <th width="10%">消費明細</th>
                                 </tr> 
                                </thead> 
                                <tbody>
                                    <tr> 
                                      <th width="10%">123</th> 
                                      <th width="10%">13</th> 
                                      <th width="10%">456</th> 
                                      <th width="10%">768</th>
                                    </tr> 
                                    <tr> 
                                      <th width="10%">123</th> 
                                      <th width="10%">13</th> 
                                      <th width="10%">456</th> 
                                      <th width="10%">768</th>
                                    </tr> 
                                    <tr> 
                                      <th width="10%">123</th> 
                                      <th width="10%">13</th> 
                                      <th width="10%">456</th> 
                                      <th width="10%">768</th>
                                    </tr> 
                                </tbody> 
                                <tfoot> 
                                 <tr> 
                                  <th width="10%">日期</th> 
                                  <th width="10%">消費酷幣數</th> 
                                  <th width="10%">剩餘酷幣數</th> 
                                  <th width="10%">消費明細</th>
                                 </tr> 
                                </tfoot> 
                                <!-- tbody是必须的 --> 
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <div id="Vouchers" class="tab-pane fade">
                <ol class="breadcrumb" style="margin-top: 20px;">
                    <li><a href="#">我的帳戶</a></li>
                    <li class="active">代金卷</li>
                </ol>
                <div class="well">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="btn-group" data-toggle="buttons">
                                <label class="btn btn-success">
                                    <input type="radio" name="VouchersRange" id="option1"> 全部
                                </label>
                                <label class="btn btn-success">
                                    <input type="radio" name="VouchersRange" id="option2"> 有效
                                </label>
                                <label class="btn btn-success">
                                    <input type="radio" name="VouchersRange" id="option3"> 已過期
                                </label>
                            </div>
                            <br/><br/>
                            <table id="expenditureDetailsTable" class="table table-striped table-bordered table-control"> 
                                <thead> 
                                 <tr> 
                                  <th width="10%">編號</th> 
                                  <th width="10%">金額</th> 
                                  <th width="10%">狀態</th> 
                                  <th width="10%">有效期限大約</th>
                                  <th width="10%">有效期截止</th>
                                  <th width="10%">贈送時間</th>
                                 </tr> 
                                </thead> 
                                <tbody>
                                    <tr> 
                                      <th width="10%">123</th> 
                                      <th width="10%">13</th> 
                                      <th width="10%">456</th> 
                                      <th width="10%">768</th>
                                      <th width="10%">3154.4</th>
                                      <th width="10%">123</th>
                                    </tr> 
                                    <tr> 
                                      <th width="10%">123</th> 
                                      <th width="10%">13</th> 
                                      <th width="10%">456</th> 
                                      <th width="10%">768</th>
                                      <th width="10%">3154.4</th>
                                      <th width="10%">123</th>
                                    </tr> 
                                    <tr> 
                                      <th width="10%">123</th> 
                                      <th width="10%">13</th> 
                                      <th width="10%">456</th> 
                                      <th width="10%">768</th>
                                      <th width="10%">3154.4</th>
                                      <th width="10%">123</th>
                                    </tr> 

                                </tbody> 
                                <tfoot> 
                                 <tr> 
                                  <th width="10%">編號</th> 
                                  <th width="10%">金額</th> 
                                  <th width="10%">狀態</th> 
                                  <th width="10%">有效期限大約</th>
                                  <th width="10%">有效期截止</th>
                                  <th width="10%">贈送時間</th>
                                 </tr> 
                                </tfoot> 
                                <!-- tbody是必须的 --> 
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <div id="key" class="tab-pane fade">
            <ol class="breadcrumb" style="margin-top: 20px;">
                <li><a href="#">我的帳戶</a></li>
                <li class="active">key</li>
            </ol>
            <div class="well">
            <div class="row">
                <div class="col-xs-8">
                    <div class="input-group">
                        <span class="input-group-addon">
                        <span class="glyphicon glyphicon-pencil"></span>ApiKey ：</span>
                        <input id="ApiKey" class="form-control" value="7559c90239e55e475f7caba7730c6882"></input>
                        <span id="copyApiKey" class="input-group-btn">
                            <button class="btn btn-success" type="button">複製到剪貼板</button>
                        </span>
                    </div>
                    <br/>
                    <div class="input-group">
                        <span class="input-group-addon">
                        <span class="glyphicon glyphicon-pencil"></span>UserKey ：</span>
                        <input id="UserKey" class="form-control" value="38D9E36EB30FE422"></input>
                        <span id="copyUserKey" class="input-group-btn">
                            <button class="btn btn-success" type="button">複製到剪貼板</button>
                        </span>
                    </div>
                </div>
            </div>
            </div>
            </div>

            <div id="OSSManage" class="tab-pane fade">
                <ol class="breadcrumb" style="margin-top: 20px;">
                    <li><a href="#">我的帳戶</a></li>
                    <li class="active">OSS配置</li>
                </ol>
                <div class="well">
                    <div class="row">
                        <div class="col-xs-2"></div>
                        <div class="col-xs-8">
                        <form action="#" method="post">
                            <div class="input-group">
                                <span class="input-group-addon">*<span class="glyphicon glyphicon-pencil"></span>&nbsp;AccessId：</span><input class="form-control" placeholder="AccessId"></input>
                            </div>
                            <br/>
                            <div class="input-group">
                                <span class="input-group-addon">*<span class="glyphicon glyphicon-pencil"></span>&nbsp;AccessKey：</span><input class="form-control" placeholder="AccessKey"></input>
                            </div>
                            <br/>
                            <div class="input-group">
                                <span class="input-group-addon">*<span class="glyphicon glyphicon-pencil"></span>&nbsp;Bucket：</span><input class="form-control" placeholder="Bucket"></input>
                            </div>
                            <br/>
                            <div class="input-group">
                                <span class="input-group-addon">*<span class="glyphicon glyphicon-pencil"></span>&nbsp;EndPoint：</span><input class="form-control" placeholder="節點"></input>
                                <span class="input-group-btn">
                                    <button class="btn btn-primary" type="button">選擇節點</button>
                                </span>
                            </div>
                            <br/>
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-pencil"></span>&nbsp;CDN域名：</span><input class="form-control" placeholder="不需要http://或https://"></input>
                            </div>
                            <br/>
                            
                            <div class="switch" data-on="success" data-off="danger">
                                <input type="checkbox" name="OSSOn" switch="switch"/>
                            </div>
                            <p style="margin: 15px;font-size: 15px;color: red;">(*為必填)</p>
                            <div class="btn-group pull-right">
                                <button type="button" class="btn btn-success">保存配置</button>
                                <button type="reset" class="btn btn-primary">清除</button>
                            </div>
                        </form>
                        </div>
                        <div class="col-xs-2"></div>
                    </div>
                </div>
            </div>

            <div id="whiteList" class="tab-pane fade">
                <ol class="breadcrumb" style="margin-top: 20px;">
                    <li><a href="#">我的帳戶</a></li>
                    <li class="active">白名單</li>
                </ol>
                <div class="well">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="switch" data-on="success" data-off="danger">
                                <input type="checkbox" name="SMSNotification" switch="switch" checked="checked" />
                            </div>
                        </div>
                    </div>
                    <hr style="border-top:3px groove skyblue;" />
                    <div class="row">
                        <p style="margin: 15px;font-size: 20px;">白名單列表</p>
                        <div class="col-xs-12">
                            <button class="btn btn-success">添加白名單</button><br/><br/>
                            <table id="whiteListTable" class="table table-striped table-bordered table-control">
                                <thead> 
                                 <tr> 
                                  <th width="10%">編號</th> 
                                  <th width="10%">域名</th> 
                                  <th width="10%">操作</th>
                                 </tr> 
                                </thead> 
                                <tbody>
                                    <tr> 
                                      <th width="10%">123</th> 
                                      <th width="10%">13</th> 
                                      <th width="10%">456</th>
                                    </tr> 
                                    <tr> 
                                      <th width="10%">123</th> 
                                      <th width="10%">13</th> 
                                      <th width="10%">456</th>
                                    </tr> 
                                    <tr> 
                                      <th width="10%">123</th> 
                                      <th width="10%">13</th> 
                                      <th width="10%">456</th>
                                    </tr> 
                                </tbody> 
                                <tfoot> 
                                 <tr> 
                                  <th width="10%">編號</th> 
                                  <th width="10%">域名</th> 
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
                    <p style="margin: 15px;font-size: 20px;">域名發現列表 (您可能想要添加到白名單的域名)</p>
                        <div class="col-xs-12">
                            <table id="domainNameDiscoveryListTable" class="table table-striped table-bordered table-control"> 
                                <thead> 
                                 <tr> 
                                  <th width="10%">編號</th> 
                                  <th width="10%">域名</th> 
                                  <th width="10%">操作</th>
                                 </tr> 
                                </thead> 
                                <tbody>
                                    <tr> 
                                      <th width="10%">123</th> 
                                      <th width="10%">13</th> 
                                      <th width="10%">456</th>
                                    </tr> 
                                    <tr> 
                                      <th width="10%">123</th> 
                                      <th width="10%">13</th> 
                                      <th width="10%">456</th>
                                    </tr> 
                                    <tr> 
                                      <th width="10%">123</th> 
                                      <th width="10%">13</th> 
                                      <th width="10%">456</th>
                                    </tr> 
                                </tbody> 
                                <tfoot> 
                                 <tr> 
                                  <th width="10%">編號</th> 
                                  <th width="10%">域名</th> 
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
        
        $("[name='automaticRenewal']").bootstrapSwitch({
            onText:"開",  
            offText:"關",  
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
        

        $("[name='OSSOn']").bootstrapSwitch({
            onText:"立即啟用",  
            offText:"暫不使用",  
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

        $("[name='SMSNotification']").bootstrapSwitch({
            onText:"開起短信提醒",  
            offText:"關閉短信提醒",  
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

        //複製到剪貼板
        var root = $('#main-header').attr("data-id");
        $("#copyApiKey").zclip({
             path: root + '/js/ZeroClipboard.swf',
             copy: function(){
             return $("#ApiKey").val();
             },
             afterCopy:function(){/* 复制成功后的操作 */
                 var $code=$("#ApiKey").val();
                 var fade_node="<div class='copy-tips'><div class='copy-tips-wrap'>"+'code: ' + $code + ' has been copied'+"</div></div>";
                 var $copysuc = $(fade_node);
                 $("body").find(".copy-tips").remove().end().append($copysuc);
                 $(".copy-tips").fadeOut(2500);
             }
        });

        $("table").DataTable({
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
<!-- echarts -->
<script type="text/javascript">

        // 基于准备好的dom，初始化echarts实例
        var expenditureDetailsEcharts = echarts.init(document.getElementById('expenditureDetailsEcharts'));
        // 指定图表的配置项和数据
        var option = {
            title : {
                text: '收支明細'
            },
            tooltip : {
                trigger: 'axis'
            },
            legend: {
                data:['總金額','帳戶支出','在綫支出','卷抵扣']
            },
            toolbox: {
                show : true,
                feature : {
                    mark : {show: true},
                    dataView : {show: true, readOnly: false},
                    magicType : {show: true, type: ['line', 'bar', 'stack', 'tiled']},
                    restore : {show: true},
                    saveAsImage : {show: true}
                }
            },
            calculable : true,
            xAxis : [
                {
                    type : 'category',
                    boundaryGap : false,
                    data : ['周一','周二','周三','周四','周五','周六','周日']
                }
            ],
            yAxis : [
                {
                    type : 'value',
                     axisLabel : {
                        formatter: '{value} 元'
                    }
                }
            ],
            series : [
                {
                    name:'總金額',
                    type:'line',
                    data:[320, 332, 301, 334, 390, 330, 320]
                },
                {
                    name:'帳戶支出',
                    type:'line',
                    data:[220, 182, 191, 234, 290, 330, 310]
                },
                {
                    name:'在綫支出',
                    type:'line',
                    data:[150, 232, 201, 154, 190, 330, 410]
                },
                {
                    name:'卷抵扣',
                    type:'line',
                    data:[120, 132, 101, 134, 90, 230, 210]
                },
                
            ]
        };
        // 使用刚指定的配置项和数据显示图表。
        expenditureDetailsEcharts.setOption(option);

        // 基于准备好的dom，初始化echarts实例
        var expensesRecordEcharts = echarts.init(document.getElementById('expensesRecordEcharts'));
        // 指定图表的配置项和数据
        var option = {
            title : {
                text: '消費酷幣數'
            },
            tooltip : {
                trigger: 'axis'
            },
            legend: {
                data:['消費酷幣數']
            },
            toolbox: {
                show : true,
                feature : {
                    mark : {show: true},
                    dataView : {show: true, readOnly: false},
                    magicType : {show: true, type: ['line', 'bar', 'stack', 'tiled']},
                    restore : {show: true},
                    saveAsImage : {show: true}
                }
            },
            calculable : true,
            xAxis : [
                {
                    type : 'category',
                    boundaryGap : false,
                    data : ['周一','周二','周三','周四','周五','周六','周日']
                }
            ],
            yAxis : [
                {
                    type : 'value',
                     axisLabel : {
                        formatter: '{value} 元'
                    }
                }
            ],
            series : [
                {
                    name:'消費酷幣數',
                    type:'line',
                    data:[320, 332, 301, 334, 390, 330, 320]
                }
                
            ]
        };
        // 使用刚指定的配置项和数据显示图表。
        expensesRecordEcharts.setOption(option);


</script>
<!--js--end-->
</body>

</html>
