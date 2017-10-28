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

<div>
    <form action="" method="">
        <input type="text" id="username" name="username" />
        <input type="password" id="password" name="password" />
        <input type="submit" value="登陆" />
    </form>
</div>

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
