<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">


	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" media="all" />
</head>

<body>
	<!--footer-->
	<div class="information">
		<div class="container">
			<div class="infor-top">
				<div class="col-md-3 infor-left">
					<h3>Follow Us</h3>
					<ul>
						<li><a href="#"><span class="fb"></span>
							<h6>Facebook</h6></a></li>
						<li><a href="#"><span class="twit"></span>
							<h6>Twitter</h6></a></li>
						<li><a href="#"><span class="google"></span>
							<h6>Google+</h6></a></li>
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
					<p>
						<a href="mailto:example@email.com">contact@example.com</a>
					</p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>

	<div class="footer">
		<div class="container">
			<div class="footer-top">
				<div class="col-md-6 footer-left"></div>
				<div class="col-md-6 footer-right">
					<p>
						Copyright &copy; 2017.safewind All rights reserved.<a
							target="_blank" href="http://www.cssmoban.com/"></a>
					</p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--footer--end-->
</body>
</html>
