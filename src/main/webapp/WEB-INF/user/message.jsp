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
          <li><a href="${pageContext.request.contextPath}/user/fontManage">字庫管理</a></li>
          <li class="active"><a href="${pageContext.request.contextPath}/user/message">消息中心</a></li>
        </ul>
    </div>
    <div class="col-xs-10">
        <ul class="nav nav-tabs">
            <li class="active"><a data-toggle="tab" href="#feedback">意見反饋</a></li>
            <li><a data-toggle="tab" href="#messageCenter">消息中心</a></li>
        </ul>

        <div class="tab-content">
            <div id="feedback" class="tab-pane fade in active">
            <ol class="breadcrumb" style="margin-top: 20px;">
                <li><a href="#">消息中心</a></li>
                <li class="active">意見反饋</li>
            </ol>
            <div class="well"> 
            
            <div class="row">
                <div class="col-xs-12">
                    <button class="btn btn-success">提交反饋</button>
                    <br/><br/>
                    <table id="feedbackTable" class="table table-striped table-bordered table-control"> 
                        <thead> 
                         <tr> 
                          <th width="10%">序號</th> 
                          <th width="10%">反饋內容</th> 
                          <th width="10%">消息狀態</th> 
                          <th width="10%">反饋時間</th>
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
                          <th width="10%">反饋內容</th> 
                          <th width="10%">消息狀態</th> 
                          <th width="10%">反饋時間</th>
                          <th width="10%">操作</th>
                         </tr> 
                        </tfoot> 
                        <!-- tbody是必须的 --> 
                    </table>
                </div>
            </div>
            

            </div>
            </div>

            <div id="messageCenter" class="tab-pane fade">
            <ol class="breadcrumb" style="margin-top: 20px;">
                <li><a href="#">消息中心</a></li>
                <li class="active">消息中心</li>
            </ol>
            <div class="well">
            <div class="row">
                <div class="col-xs-12">
                    
                    <table id="messageCenterTable" class="table table-striped table-bordered table-control"> 
                        <thead> 
                         <tr> 
                          <th width="10%">消息內容</th> 
                          <th width="10%">消息類別</th> 
                          <th width="10%">消息狀態</th> 
                          <th width="10%">接收時間</th>
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
                          <th width="10%">消息內容</th> 
                          <th width="10%">消息類別</th> 
                          <th width="10%">消息狀態</th> 
                          <th width="10%">接收時間</th>
                          <th width="10%">操作</th>
                         </tr> 
                        </tfoot> 
                        <!-- tbody是必须的 --> 
                    </table>
                </div>
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
<!--js--end-->
</body>

</html>
