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
    <link rel="stylesheet" type="text/css" href="http://cdn.datatables.net/1.10.15/css/jquery.dataTables.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/docs.min.css" type="text/css" >
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="${pageContext.request.contextPath}/css/memenu.css" rel="stylesheet" type="text/css" media="all" />
</head>


<body>
<jsp:include page="../module/header.jsp"></jsp:include>
<br>
<br>
<br>
<!--bottom-header-->
<br>
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
                <div class="product-one" id="fontList">
                    <c:forEach items="${fontBriefList}" var="fontBrief">
                        <div class="col-md-12 product-left p-left">
                            <div class="product-main simpleCart_shelfItem">
                                <a href="#" class="mask" style="font-size: 25px">${fontBrief.name}</a>
                                <div class="product-bottom">
                                    <h3>${fontBrief.manufacture}|${fontBrief.type}|${fontBrief.encoding}（${fontBrief.eEncoding}）|${fontBrief.phylum}|${fontBrief.style}</h3><br/>
                                    <div class="btn-group pull-right" style="margin:10px">
                                        <button class="btn btn-primary">使用</button>
                                        <button class="btn btn-success">收藏</button>
                                    </div>
                                    <br/>
                                    <h3 class="">${fontBrief.collectedTime}收藏/ ${fontBrief.recommondedTime}推薦/ ${fontBrief.usedTime}使用/ ${fontBrief.recommondedTime}評論</h3>
                                </div>
                                <div class="srch srch1">
                                    <span>-20%</span>

                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <ul class="pagination pull-right">
                        <c:if test="${(pageInfo.currentPage-1)>=1}">
                            <li><a href="${pageContext.request.contextPath}/font/exactSearch/${pageInfo.currentPage-1}/${font.manufacturerId}/${font.typeId}/${font.encodingId}/${font.phylumId}/${font.styleId}/${sort}">&lt;&lt;</a></li>
                        </c:if>
                        <li><a href="${pageContext.request.contextPath}/font/exactSearch/${pageInfo.currentPage}/${font.manufacturerId}/${font.typeId}/${font.encodingId}/${font.phylumId}/${font.styleId}/${sort}">${pageInfo.currentPage}</a></li>
                        <c:if test="${(pageInfo.currentPage+1)<=pageInfo.totalPage}">
                            <li><a href="${pageContext.request.contextPath}/font/exactSearch/${pageInfo.currentPage+1}/${font.manufacturerId}/${font.typeId}/${font.encodingId}/${font.phylumId}/${font.styleId}/${sort}">${pageInfo.currentPage+1}</a></li>
                        </c:if>
                        <c:if test="${(pageInfo.currentPage+2)<=pageInfo.totalPage}">
                            <li><a href="${pageContext.request.contextPath}/font/exactSearch/${pageInfo.currentPage+2}/${font.manufacturerId}/${font.typeId}/${font.encodingId}/${font.phylumId}/${font.styleId}/${sort}">${pageInfo.currentPage+2}</a></li>
                        </c:if>
                        <c:if test="${(pageInfo.currentPage+3)<=pageInfo.totalPage}">
                            <li><a href="${pageContext.request.contextPath}/font/exactSearch/${pageInfo.currentPage+3}/${font.manufacturerId}/${font.typeId}/${font.encodingId}/${font.phylumId}/${font.styleId}/${sort}">${pageInfo.currentPage+3}</a></li>
                        </c:if>
                        <c:if test="${(pageInfo.currentPage+4)<=pageInfo.totalPage}">
                            <li><a href="${pageContext.request.contextPath}/font/exactSearch/${pageInfo.currentPage+4}/${font.manufacturerId}/${font.typeId}/${font.encodingId}/${font.phylumId}/${font.styleId}/${sort}">${pageInfo.currentPage+4}</a></li>
                        </c:if>

                        <c:if test="${(pageInfo.currentPage+1)<=pageInfo.totalPage}">
                            <li><a href="${pageContext.request.contextPath}/font/exactSearch/${pageInfo.currentPage+1}/${font.manufacturerId}/${font.typeId}/${font.encodingId}/${font.phylumId}/${font.styleId}/${sort}">&gt;&gt;</a></li>
                        </c:if>
                    </ul>

                    <div class="clearfix"></div>
                </div>

                <div id="page">

                </div>

            </div>
            <div class="col-md-3 prdt-right">
                <nav class="bs-docs-sidebar hidden-print hidden-xs hidden-sm affix">
                    <ul class="nav bs-docs-sidenav" id="test">
                        <br/><br/>
                        <!-- 添加了active就能被展开 -->
                        <li class="">
                            <a >廠商</a>
                            <ul class="nav">
                                <c:forEach items="${manufacturerList}" var="manufacturer" end="25">
                                    <li class="">
                                        <a>
                                            <input id="manufacturer" type="radio" name="manufacturer" value="${manufacturer.id}"/>${manufacturer.name}
                                        </a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </li>

                        <li class="">
                            <a >類型</a>
                            <ul class="nav">
                                <c:forEach items="${typeList}" var="type">
                                    <li class="">
                                        <a>
                                            <input id="type" type="radio" name="type" value="${type.id}"> ${type.name}
                                        </a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </li>



                        <li class="">
                            <a >編碼</a>
                            <ul class="nav">
                                <c:forEach items="${encodingList}" var="encoding">
                                    <li class="">
                                        <a>
                                            <input id="encoding" type="radio" name="encoding" value="${encoding.id}">${encoding.name}
                                        </a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </li>

                        <li class="">
                            <a >語系</a>
                            <ul class="nav">
                                <c:forEach items="${phylumList}" var="phylum">
                                    <li>
                                        <a>
                                            <input id="phylum" type="radio" name="phylum" value="${phylum.id}">${phylum.name}
                                        </a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </li>

                        <li class="">
                            <a >風格</a>
                            <ul class="nav">
                                <c:forEach items="${styleList}" var="style">
                                    <li class="">
                                        <a>
                                            <input id="style" type="radio" name="style" value="${style.id}">${style.name}
                                        </a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </li>
                        <li>
                            <!--排序就写成静态的吧！ 避免给服务器造成过大负载-->
                            <a>排序</a>
                            <ul class="nav">
                                <li class="">
                                    <a>
                                        <input  type="radio" name="sort" value="1">使用最多
                                    </a>
                                </li>
                                <li class="">
                                    <a>
                                        <input  type="radio" name="sort" value="2">推荐最多
                                    </a>
                                </li>
                                <li class="">
                                    <a>
                                        <input  type="radio" name="sort" value="3">评论最多
                                    </a>
                                </li>
                                <li class="">
                                    <a>
                                        <input  type="radio" name="sort" value="4">收藏最多
                                    </a>
                                </li>
                                <li class="">
                                    <a>
                                        <input  type="radio" name="sort" value="5">最新上传
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="" onclick="submit();"><a>搜索</a></li>
                    </ul>
                </nav>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--product-end-->
<!--page--end-->
<!--设置根路径-->
<input type="hidden" id="main-header" value="${pageContext.request.contextPath}" />
<!--footer-->
<jsp:include page="../module/footer.jsp" flush="true"></jsp:include>
<!--footer--end-->

<!--js-->
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" charset="utf8" src="http://cdn.datatables.net/1.10.15/js/jquery.dataTables.js"></script>
<script src="${pageContext.request.contextPath}/js/simpleCart.min.js"> </script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/docs.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/memenu.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jqPaginator.js"></script>

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
<script type="text/javascript">
    //动态的向 点击的li标签加入 class="active"
    $('#test li').click(function(event) {
        /* Act on the event */
        $(this).siblings('li').removeClass('active');
        $(this).addClass('active')
    });

    var currentPage =1;
    function submit() {
        var root = $('#main-header').val();
        window.location.href=root+"/font/exactSearch/"+currentPage+"/"+$('#manufacturer:checked').val()+"/"
            +$('#type:checked').val()+"/"+ $('#encoding:checked').val()+"/"+$('#phylum:checked').val()+"/"
            +$('#style:checked').val()+"/"+$('input[name="sort"]:checked').val();

    }
</script>
<!--js--end-->
</body>

</html>
