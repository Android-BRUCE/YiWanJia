<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<link rel="icon" sizes="124x124" href="${pageContext.request.contextPath}/img/logo.png">
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/img/logo.png">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

	<title>杭州钱王万家信息科技有限公司</title>
	<meta name="keywords" content="杭州钱王万家信息科技有限公司"/>
	<meta name="description" content="杭州钱王万家信息科技有限公司"/>
	<link href="${pageContext.request.contextPath}/css/public/fonts-google.css" rel="stylesheet">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/materialize/css/materialize.min.css" media="screen,projection" />
	<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/css/fancybox/jquery.fancybox.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/css/flexslider.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/css/public/default/css-outM/style.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/css/public/default/css-outM/style.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" />
</head>
<body>
<%--<header class="topbar">--%>
	<%--<div class="container">--%>
		<%--<div class="row">--%>
			<%--<!-- social icon-->--%>
			<%--<div class="col-sm-3">--%>
			<%--</div>--%>
			<%--<div class="col-sm-9">--%>
				<%--<div class="row">--%>
					<%--<ul class="info">--%>
						<%--<li><i class="icon-info-blocks material-icons">邮箱地址: </i><span>zjqwwy@163.com</span></li>--%>
						<%--<li><i class="icon-info-blocks material-icons">联系电话: </i><span>0571-61099111</span></li>--%>
					<%--</ul>--%>
					<%--<div class="clr"></div>--%>
				<%--</div>--%>
			<%--</div>--%>
		<%--</div>--%>
	<%--</div>--%>
<%--</header>--%>
<header>
	<div class="navbar navbar-default navbar-static-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="${pageContext.request.contextPath}/index.html">
					<img src="${pageContext.request.contextPath}/img/public/logo02.png" alt="" height="65" width="200" style="margin-bottom: 20px;float: left" />
					<%--钱王万家--%>
				</a>

			</div>
			<div class="navbar-collapse collapse ">
				<ul class="nav navbar-nav">
					<li ><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/index.html">首 页</a></li>
					<li class="active"><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/news.html">新闻资讯</a></li>
					<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/portfolio.html">产品中心</a></li>
					<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/support.html">解决方案</a></li><!--服务支持-->
					<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/case.html">公司案例</a></li><!---->
					<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/joinUs.html">人才招聘</a></li><!--加入我们-->
					<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/about.html">关于我们</a></li>
				</ul>
			</div>
		</div>
	</div>
</header>

<section id="inner-headline">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h2 class="pageTitle">新闻资讯</h2>
			</div>
		</div>
	</div>
</section>


<ul class="ny_news_list">

	<c:forEach items="${paging.rows}" var="pr">
		<dl>
			<dd><a href="${pageContext.request.contextPath}/news/newsdetail.aspx?id=${pr.id}"><img src="${pr.image}"  alt="${pr.newstitle}"/></a></dd>
			<dt>
				<a class="bt" href="${pageContext.request.contextPath}/news/newsdetail.aspx?id=${pr.id}">${pr.newstitle}</a>
				<div class="nr_ms">${pr.point}</div>
				<a class="more" href="${pageContext.request.contextPath}/news/newsdetail.aspx?id=${pr.id}">了解详细<span>>></span></a>
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
			<a class="pgNext" href="${pageContext.request.contextPath}/news.aspx?page=1">首页</a>
				<c:if test="${paging.page==1}">
					<a class="pgNext" href="${pageContext.request.contextPath}/news.aspx?page=${paging.page}">上一页</a>
				</c:if>
				<c:if test="${paging.page>1}">
					<a class="pgNext" href="${pageContext.request.contextPath}/news.aspx?page=${paging.page-1}">上一页</a>
				</c:if>

				<c:if test="${paging.totalPage>=1}">
				<a href="${pageContext.request.contextPath}/news.aspx?page=1">1</a>
				</c:if>
			<c:if test="${paging.totalPage>=2}">
				<a href="${pageContext.request.contextPath}/news.aspx?page=2">2</a>
			</c:if>
			<c:if test="${paging.totalPage>=3}">
				<a href="${pageContext.request.contextPath}/news.aspx?page=3">3</a>
			</c:if>
			<c:if test="${paging.totalPage>=4}">
				<a href="${pageContext.request.contextPath}/news.aspx?page=4">4</a>
			</c:if>
			<c:if test="${paging.totalPage>5}">
				<a href="${pageContext.request.contextPath}/news.aspx?page=5">5</a>
			</c:if>
				<c:if test="${paging.page==paging.totalPage}">
					<a class="pgNext" href="${pageContext.request.contextPath}/news.aspx?page=${paging.totalPage}">下一页</a>
				</c:if>
				<c:if test="${paging.page<paging.totalPage}">
					<a class="pgNext" href="${pageContext.request.contextPath}/news.aspx?page=${paging.page+1}">下一页</a>
				</c:if>
			<a class="pgNext" href="${pageContext.request.contextPath}/news.aspx?page=${paging.totalPage}">尾页</a>

		</div>

		</div>


	</div>


</ul>

</div>
<footer>
	<div class="container">
		<div class="row">
			<div class="col-sm-3">
				<div class="widget">
					<h5 class="widgetheading">联系方式</h5>
					<ul class="foot_add_box">
						<li class="foot_tel">&nbsp;0571-61099111</li>
						<li class="foot_add">zjqwwy@163.com</li>
					</ul>
					<br>
					<address>
						杭州市临安市青山湖街道<br>
						大园路958号科创大楼A603</address>
				</div>
			</div>
			<div class="col-sm-3">
				<div class="widget">
					<h5 class="widgetheading">产品中心</h5>
					<ul class="link-list">
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/supportPages.aspx?id=1">智慧环卫监控平台</a></li>
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/supportPages.aspx?id=2">智慧垃圾分类平台</a></li>
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/supportPages.aspx?id=3">智慧养老服务平台</a></li>
					</ul>
				</div>
			</div>
			<div class="col-sm-3">
				<div class="widget">
					<h5 class="widgetheading">新闻资讯</h5>
					<ul class="link-list">
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/news.html">公司新闻</a></li>
					</ul>
				</div>
			</div>
			<div class="col-sm-4" style="float: right;margin-right: 150px;margin-top: 0px;">
				<div class="widget">
					<h5 class="widgetheading"></h5>
					<ul class="link-list">
						<img src="${pageContext.request.contextPath}/img/public/erweima.jpg" alt="" height="170" width="290" align="微信扫一扫">
					</ul>
				</div>
			</div></div>
	</div>
	<div id="sub-footer" style="margin-top: 20px">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="copyright" style="float: left">
						<p>
							Copyright &copy; 2017.杭州钱王万家信息科技有限公司 All rights reserved.
						</p>
					</div>
				</div>
				<div class="col-lg-6" style="float: right">
					<ul class="copyright">
						<p>&nbsp;&nbsp;&nbsp;&nbsp;浙ICP备14036718号-6浙公网安备 33018502001594号</p></ul>
				</div>
			</div>
		</div>
	</div>
</footer>
<a href="#" class="scrollup waves-effect waves-dark"><i class="fa fa-angle-up active"></i></a>
<!-- javascript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.easing.1.3.js"></script>
<%--<script src="${pageContext.request.contextPath}/materialize/js/materialize.min.js"></script>--%>
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

<script type="text/javascript" src="${pageContext.request.contextPath}/css/public/default/css-outM/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/css/public/default/css-outM/jquery.SuperSlide.2.1.1.js"></script>
<script src="${pageContext.request.contextPath}/css/public/default/css-outM/common.js" type="text/javascript"></script>
</body>
</html>
