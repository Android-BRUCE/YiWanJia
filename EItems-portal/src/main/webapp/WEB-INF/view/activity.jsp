<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

	<title>杭州钱王万家信息科技有限公司</title>
	<meta name="keywords" content="杭州钱王万家信息科技有限公司"/>
	<meta name="description" content="杭州钱王万家信息科技有限公司"/>



	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link rel="/stylesheet" href="${pageContext.request.contextPath}/materialize/css/materialize.min.css" media="screen,projection" />
	<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/css/fancybox/jquery.fancybox.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/css/flexslider.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" />

	<link href="${pageContext.request.contextPath}/css/public/default/css-outM/style.css" rel="stylesheet" />

	<link href="${pageContext.request.contextPath}/css/public/default/css-outM/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/css/public/default/css-outM/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/css/public/default/css-outM/jquery.SuperSlide.2.1.1.js"></script>
	<script src="${pageContext.request.contextPath}/css/public/default/css-outM/common.js" type="text/javascript"></script>
</head>
<body>
<header class="topbar">
	<div class="container">
		<div class="row">
			<!-- social icon-->
			<div class="col-sm-3">
				<ul class="social-network">
					<li><a class="waves-effect waves-dark" href="#"><i class="fa fa-facebook"></i></a></li>
					<li><a class="waves-effect waves-dark" href="#"><i class="fa fa-twitter"></i></a></li>
					<li><a class="waves-effect waves-dark" href="#"><i class="fa fa-linkedin"></i></a></li>
					<li><a class="waves-effect waves-dark" href="#"><i class="fa fa-pinterest"></i></a></li>
					<li><a class="waves-effect waves-dark" href="#"><i class="fa fa-google-plus"></i></a></li>
				</ul>
			</div>
			<div class="col-sm-9">
				<div class="row">
					<ul class="info">
						<li><i class="icon-info-blocks material-icons">question_answer</i><span>info@Arrive.com</span></li>
						<li><i class="icon-info-blocks material-icons">perm_phone_msg</i><span>+(012) 345 6789</span></li>
					</ul>
					<div class="clr"></div>
				</div>
			</div>
		</div>
	</div>
</header>
<header>
	<div class="navbar navbar-default navbar-static-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html">
					<%--<i class="icon-info-blocks material-icons">language</i>--%>
					<img src="/img/top.png" alt="" height="50" width="50" align=""/>
				</a>
			</div>
			<div class="navbar-collapse collapse ">
				<ul class="nav navbar-nav">
					<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/index.html">主页</a></li>
					<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/portfolio.html">产品展示</a></li>
					<li ><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/services.html">服务与支持</a></li>
					<%--<li><a class="waves-effect waves-dark" href="pricing.html">Pricing</a></li>--%>
					<li class="dropdown">
						<a href="#" data-toggle="dropdown" class="dropdown-toggle waves-effect waves-dark">关于我们 <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/about.html">公司介绍</a></li>
							<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/news/page.html">公司新闻</a></li>
							<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/culture.html">公司文化</a></li>
							<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/activity/page.html">公司活动</a></li>
							<li><a class="waves-effect waves-dark" href="#">加入我们</a></li>
						</ul>
					</li>
					<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/contact/contactUs.html">联系我们</a></li>
				</ul>
			</div>

		</div>
	</div>
</header>

<section id="inner-headline">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h2 class="pageTitle">公司活动</h2>
			</div>
		</div>
	</div>
</section>


<ul class="ny_news_list">

	<c:forEach items="${paging.rows}" var="pr">
		<dl>
			<dd><a href="newsdetail.aspx?id=${pr.id}"><img src="${pr.image}"  alt="${pr.title}"/></a></dd>
			<dt>
				<a class="bt" href="activitydetail.aspx?id=${pr.id}">${pr.title}</a>
				<div class="nr_ms">${pr.point}</div>
				<a class="more" href="activitydetail.aspx?id=${pr.id}">了解详细<span>>></span></a>
			</dt>
		</dl>


	</c:forEach>
	<span id='DcmsPage_PageInfo' style='display:none;'>9|43</span>
	<div id="clear"></div>


	<div id="fengye"><!--分页-->
		<style>
			<!--
			#dcms_pager .pages {border:none;text-transform:uppercase;font-size:12px;margin:10px 0 10px 0;padding:0;height:20px;clear:both;text-align:center;}
			#dcms_pager .pages a {border:1px solid #ccc;text-decoration:none;margin:0 5px 0 0;padding:5px 12px 5px 12px;font-size:14px;height:16px;line-height:16px; color:#333;}
			#dcms_pager .pages a:hover {border:1px solid #189c43; color:#189c43;}
			#dcms_pager .pages .pgempty {border:1px solid #ccc;color:#ccc;}
			#dcms_pager .pages .pgempty:hover{border:1px solid #ccc;color:#ccc;}
			#dcms_pager .pages .pgcurrent,#dcms_pager .pages .pgcurrent:hover {border:1px solid #189c43;color:#fff;font-weight:bold;background-color:#189c43;}
			-->
		</style>
		<div id="dcms_pager">
			<div class="pages">
				<a href="javascript:void(0)">当前页：${paging.page}</a>
			<a class="pgNext" href="${pageContext.request.contextPath}/activity/page.aspx?page=1">首页</a>
				<c:if test="${paging.page==1}">
					<a class="pgNext" href="${pageContext.request.contextPath}/activity/page.aspx?page=${paging.page}">上一页</a>
				</c:if>
				<c:if test="${paging.page>1}">
					<a class="pgNext" href="${pageContext.request.contextPath}/news/page.aspx?page=${paging.page-1}">上一页</a>
				</c:if>

				<c:if test="${paging.totalPage>=1}">
				<a href="${pageContext.request.contextPath}/activity/page.aspx?page=1">1</a>
				</c:if>
			<c:if test="${paging.totalPage>=2}">
				<a href="${pageContext.request.contextPath}/activity/page.aspx?page=2">2</a>
			</c:if>
			<c:if test="${paging.totalPage>=3}">
				<a href="${pageContext.request.contextPath}/activity/page.aspx?page=3">3</a>
			</c:if>
			<c:if test="${paging.totalPage>=4}">
				<a href="${pageContext.request.contextPath}/activity/page.aspx?page=4">4</a>
			</c:if>
			<c:if test="${paging.totalPage>5}">
				<a href="${pageContext.request.contextPath}/activity/page.aspx?page=5">5</a>
			</c:if>
				<c:if test="${paging.page==paging.totalPage}">
					<a class="pgNext" href="${pageContext.request.contextPath}/activity/page.aspx?page=${paging.totalPage}">下一页</a>
				</c:if>
				<c:if test="${paging.page<paging.totalPage}">
					<a class="pgNext" href="${pageContext.request.contextPath}/activity/page.aspx?page=${paging.page+1}">下一页</a>
				</c:if>
			<a class="pgNext" href="${pageContext.request.contextPath}/activity/page.aspx?page=${paging.totalPage}">尾页</a>

		</div>

		</div>


	</div>


</ul>

</div>
<footer>
<div id="foot_box"><!-- 底部 -->

	<%--<div class="w1200_center">--%>


		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<div class="widget">
						<h5 class="widgetheading">Our Contact</h5>
						<address>
							<strong>Bootstrap company Inc</strong><br>
							JC Main Road, Near Silnile tower<br>
							Pin-21542 NewYork US.</address>
						<p>
							<i class="icon-phone"></i> (123) 456-789 - 1255-12584 <br>
							<i class="icon-envelope-alt"></i> email@domainname.com
						</p>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="widget">
						<h5 class="widgetheading">Quick Links</h5>
						<ul class="link-list">
							<li><a class="waves-effect waves-dark" href="#">Latest Events</a></li>
							<li><a class="waves-effect waves-dark" href="#">Terms and conditions</a></li>
							<li><a class="waves-effect waves-dark" href="#">Privacy policy</a></li>
							<li><a class="waves-effect waves-dark" href="#">Career</a></li>
							<li><a class="waves-effect waves-dark" href="#">Contact us</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="widget">
						<h5 class="widgetheading">Latest posts</h5>
						<ul class="link-list">
							<li><a class="waves-effect waves-dark" href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></li>
							<li><a class="waves-effect waves-dark" href="#">Pellentesque et pulvinar enim. Quisque at tempor ligula</a></li>
							<li><a class="waves-effect waves-dark" href="#">Natus error sit voluptatem accusantium doloremque</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="widget">
						<h5 class="widgetheading">Recent News</h5>
						<ul class="link-list">
							<li><a class="waves-effect waves-dark" href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></li>
							<li><a class="waves-effect waves-dark" href="#">Pellentesque et pulvinar enim. Quisque at tempor ligula</a></li>
							<li><a class="waves-effect waves-dark" href="#">Natus error sit voluptatem accusantium doloremque</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<div id="sub-footer">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<div class="copyright">
							<p>
								Copyright &copy; 2017.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
							</p>
						</div>
					</div>
					<div class="col-lg-6">
						<ul class="social-network">
							<li><a class="waves-effect waves-dark" href="#" data-placement="top" title="Facebook"><i class="fa fa-facebook"></i></a></li>
							<li><a class="waves-effect waves-dark" href="#" data-placement="top" title="Twitter"><i class="fa fa-twitter"></i></a></li>
							<li><a class="waves-effect waves-dark" href="#" data-placement="top" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
							<li><a class="waves-effect waves-dark" href="#" data-placement="top" title="Pinterest"><i class="fa fa-pinterest"></i></a></li>
							<li><a class="waves-effect waves-dark" href="#" data-placement="top" title="Google plus"><i class="fa fa-google-plus"></i></a></li>
						</ul>
					</div>

				</div>
			</div>
		</div>

	<%--</div>--%>
</div>
</footer>
<a href="#" class="scrollup waves-effect waves-dark"><i class="fa fa-angle-up active"></i></a>
<!-- javascript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.easing.1.3.js"></script>
<script src="${pageContext.request.contextPath}/materialize/js/materialize.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.fancybox.pack.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.fancybox-media.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.flexslider.js"></script>
<script src="${pageContext.request.contextPath}/js/animate.js"></script>
<!-- Vendor Scripts -->
<script src="${pageContext.request.contextPath}/js/modernizr.custom.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.isotope.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.magnific-popup.min.js"></script>
<script src="${pageContext.request.contextPath}/js/animate.js"></script>
<script src="${pageContext.request.contextPath}/js/custom.js"></script>

<script src="${pageContext.request.contextPath}/contact/jqBootstrapValidation.js"></script>
<script src="${pageContext.request.contextPath}/contact/contact_me.js"></script>
</body>
</html>