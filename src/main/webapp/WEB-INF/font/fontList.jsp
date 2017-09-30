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
                <div class="product-one" id="fontList1">
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
                        <%--<li><a href="${pageContext.request.contextPath}/font/fontList?currentPage=1">首頁</a></li>--%>
                        <li><a href="${pageContext.request.contextPath}/font/fontList?currentPage=${pageInfo.currentPage-1}">&lt;&lt;</a></li>
                        <li><a href="${pageContext.request.contextPath}/font/fontList?currentPage=${pageInfo.currentPage}">${pageInfo.currentPage}</a></li>
                        <c:if test="${(pageInfo.currentPage+1)<=pageInfo.totalPage}">
                            <li><a href="${pageContext.request.contextPath}/font/fontList?currentPage=${pageInfo.currentPage+1}">${pageInfo.currentPage+1}</a></li>
                        </c:if>
                        <c:if test="${(pageInfo.currentPage+2)<=pageInfo.totalPage}">
                            <li><a href="${pageContext.request.contextPath}/font/fontList?currentPage=${pageInfo.currentPage+2}">${pageInfo.currentPage+2}</a></li>
                        </c:if>
                        <c:if test="${(pageInfo.currentPage+3)<=pageInfo.totalPage}">
                            <li><a href="${pageContext.request.contextPath}/font/fontList?currentPage=${pageInfo.currentPage+3}">${pageInfo.currentPage+3}</a></li>
                        </c:if>
                        <c:if test="${(pageInfo.currentPage+4)<=pageInfo.totalPage}">
                            <li><a href="${pageContext.request.contextPath}/font/fontList?currentPage=${pageInfo.currentPage+4}">${pageInfo.currentPage+4}</a></li>
                        </c:if>

                        <li><a href="${pageContext.request.contextPath}/font/fontList?currentPage=${pageInfo.currentPage+1}">&gt;&gt;</a></li>
                        <%--<li><a href="${pageContext.request.contextPath}/font/fontList?currentPage=${pageInfo.totalPage}">尾頁</a></li>--%>
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
                                <c:forEach items="${manufacturerList}" var="manufacturer">
                                    <label class="radio"><input id="${manufacturer.id}" type="radio"><i></i>${manufacturer.name}</label>
                                </c:forEach>
                            </div>

                        </div>
                    </section>
                    <section class="sky-form">
                        <h4>類型</h4>
                        <div class="row1 row2 scroll-pane">
                            <div class="col col-4">
                                <label class="radio"><input type="radio" name="type" checked=""><i></i>所有類型</label>
                                <c:forEach items="${typeList}" var="type">
                                    <label class="radio"><input id="${type.id}" type="radio"><i></i>${type.name}</label>
                                </c:forEach>
                            </div>

                        </div>
                    </section>
                    <section class="sky-form">
                        <h4>編碼</h4>
                        <div class="row1 row2 scroll-pane">
                            <div class="col col-4">
                                <label class="radio"><input type="radio" name="code" checked=""><i></i>所有編碼</label>
                                <c:forEach items="${encodingList}" var="encoding">
                                    <label class="radio"><input id="${encoding.id}" type="radio"><i></i>${encoding.name}（${encoding.eName}）</label>
                                </c:forEach>
                            </div>
                        </div>
                    </section>
                    <section class="sky-form">
                        <h4>語系</h4>
                        <div class="row1 row2 scroll-pane">
                            <div class="col col-4">
                                <label class="radio"><input type="radio" name="language" checked=""><i></i>所有語系</label>
                                <c:forEach items="${phylumList}" var="phylum">
                                    <label class="radio"><input id="${phylum.id}" type="radio"><i></i>${phylum.name}</label>
                                </c:forEach>
                            </div>
                        </div>
                    </section>
                    <section class="sky-form">
                        <h4>風格</h4>
                        <div class="row1 row2 scroll-pane">
                            <div class="col col-4">
                                <label class="radio"><input type="radio" name="style" checked=""><i></i>所有風格</label>

                                <c:forEach items="${styleList}" var="style">
                                    <label class="radio"><input id="${style.id}" type="radio"><i></i>${style.name}</label>
                                </c:forEach>
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
                    <span>炫字網是全球第一中文網頁字體（在線字體）服務平台。</span>
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
<script type="text/javascript" charset="utf8" src="http://cdn.datatables.net/1.10.15/js/jquery.dataTables.js"></script>
<script src="${pageContext.request.contextPath}/js/simpleCart.min.js"> </script>
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
<!--js--end-->
</body>

</html>
