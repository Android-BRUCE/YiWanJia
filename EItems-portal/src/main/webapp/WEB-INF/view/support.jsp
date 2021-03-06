<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<link rel="icon" sizes="124x124" href="${pageContext.request.contextPath}/img/logo.png">
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/img/logo.png">
<meta charset="utf-8">
<title>杭州钱王万家信息科技有限公司</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="杭州钱王万家信息科技有限公司" />
<meta name="author" content="杭州钱王万家信息科技有限公司" />
<meta name="keywords" content="钱王万家" />
<!-- css -->
	<link href="${pageContext.request.contextPath}/css/public/fonts-google.css" rel="stylesheet">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/materialize/css/materialize.min.css" media="screen,projection" />
	<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/css/fancybox/jquery.fancybox.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/css/flexslider.css" rel="stylesheet" />
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/css/public/default/css-outM/style.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" />




<%--<script type="text/javascript" src="/css/public/default/css-outM/jquery.min.js"></script>--%>

	<%--<script type="text/javascript" src="/css/public/default/css-outM/jquery.SuperSlide.2.1.1.js"></script>--%>

	<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

</head>
<body>
<div id="wrapper">
	<header class="topbar">
		<div class="container">
			<div class="row">
			</div>
		</div>
	</header>

	<!-- start header -->
	<!-- start header -->
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
						<%--<i class="icon-info-blocks material-icons">language</i>--%>
							<img src="${pageContext.request.contextPath}/img/public/logo02.png" alt="" height="65" width="200" style="margin-bottom: 20px;float: left" />
						<%--钱王万家--%>
					</a>

				</div>
				<div class="navbar-collapse collapse ">
					<ul class="nav navbar-nav">
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/index.html">首 页</a></li>
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/news.html">新闻资讯</a></li>
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/portfolio.html">产品中心</a></li>
						<li class="active"><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/support.html">解决方案</a></li><!--服务支持-->
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
				<h2 class="pageTitle">解决方案</h2>
			</div>
		</div>
	</div>
	</section>
	<%--<div class="map_box"><!--当前位置-->--%>
		<%--<div class="w1200_center"><!--版块居中-->--%>
			<%--<div class="ny_news_nav">--%>
				<%--<a href="job.aspx" id="nynavID1" class="acvier">企业文化</a>--%>
				<%--<a href="job_ln.aspx" id="nynavID2">员工宣言</a>--%>
				<%--<a href="job_fc.aspx" id="nynavID3">万家语录</a>--%>
				<%--<script language="javascript" type="text/javascript">--%>
                    <%--try {--%>
                        <%--document.getElementById("nynavID" + nynav).className = "acvier";--%>
                    <%--}--%>
                    <%--catch (e) {}--%>
				<%--</script>--%>
			<%--</div>--%>
			<%--<div id="clear"></div>--%>
		<%--</div>--%>


	<%--</div><!--当前位置 END-->--%>

	<section id="content">



		<div class="container">
		<%--<div class="about-main" id="company-profile">--%>
			<div id="nr_main_box2">
				<%--<div id="about_text">--%>
						<!-- =++++++++++++++context   start+++++++-->
	<div style="float: left">
		<c:forEach items="${solution}" var="pr">
			<ul class="ny_case_list" >
				<dl>
					<dd><a href="${pageContext.request.contextPath}/supportPages.aspx?id=${pr.id}"><img src="${pr.image}"  alt="${pr.title}"/></a></dd>
					<dt>
						<a class="bt"  href="${pageContext.request.contextPath}/supportPages.aspx?id=${pr.id}">${pr.title}</a>
						<div class="nr_ms">${pr.point}</div>
						<a class="more" href="${pageContext.request.contextPath}/supportPages.aspx?id=${pr.id}">了解详细<span>>></span></a>
					</dt>
				</dl>
				<span id='DcmsPage_PageInfo' style='display:none;'>1|1</span>
			</ul>

		</c:forEach>


				<%--<ul class="ny_case_list" >--%>

					<%--<dl>--%>
						<%--<dd><a href="Solutiondetail.aspx?id=36"><img src="http://www.zjlyzhkj.com/Upload/%E6%99%BA%E6%85%A7%E7%8E%AF%E5%8D%AB%E6%95%B4%E4%BD%93%E8%A7%A3%E5%86%B3%E6%96%B9%E6%A1%88-16451662589.jpg"  alt="智慧环卫整体解决方案"/></a></dd>--%>
						<%--<dt>--%>
							<%--<a class="bt"  href="Solutiondetail.aspx?id=36">智慧垃圾分类平台</a>--%>
							<%--<div class="nr_ms">‍方案简介：智慧环卫整体解决方案是借助信息化基础发展起来的环卫管理升级模式，通过整合互联网、物联网、GPS、GIS、移动通信网络等信息技术，改变以往依靠人力…</div>--%>
							<%--<a class="more" href="Solutiondetail.aspx?id=36">了解详细<span>>></span></a>--%>
						<%--</dt>--%>
					<%--</dl>--%>
					<%--<span id='DcmsPage_PageInfo' style='display:none;'>1|1</span>--%>


				<%--</ul>--%>
		<%--<ul class="ny_case_list" >--%>

			<%--<dl>--%>
				<%--<dd><a href="Solutiondetail.aspx?id=36"><img src="http://www.zjlyzhkj.com/Upload/%E6%99%BA%E6%85%A7%E7%8E%AF%E5%8D%AB%E6%95%B4%E4%BD%93%E8%A7%A3%E5%86%B3%E6%96%B9%E6%A1%88-16451662589.jpg"  alt="智慧环卫整体解决方案"/></a></dd>--%>
				<%--<dt>--%>
					<%--<a class="bt"  href="Solutiondetail.aspx?id=36">智慧养老服务平台</a>--%>
					<%--<div class="nr_ms">‍方案简介：智慧环卫整体解决方案是借助信息化基础发展起来的环卫管理升级模式，通过整合互联网、物联网、GPS、GIS、移动通信网络等信息技术，改变以往依靠人力…</div>--%>
					<%--<a class="more" href="Solutiondetail.aspx?id=36">了解详细<span>>></span></a>--%>
				<%--</dt>--%>
			<%--</dl>--%>
			<%--<span id='DcmsPage_PageInfo' style='display:none;'>1|1</span>--%>


		<%--</ul>--%>


</div>
			</div> <!--内容 END-->


				<!-- =+++++++++++++++++++++-->



		<%--</div>--%>
		<!--end about-main-->
	</div>
	</section>
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
</div>
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