<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<meta charset="utf-8">
<title>杭州钱王万家信息科技有限公司</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="杭州钱王万家信息科技有限公司" />
<meta name="author" content="杭州钱王万家信息科技有限公司" />
<!-- css --><script type="text/javascript" src="${pageContext.request.contextPath}/js/script/jquery.min.js"></script><script type="text/javascript" src="/js/script/jquery.SuperSlide.2.1.1.js"></script><script type="text/javascript" src="/js/script/countUp.min.js"></script><script src="/js/script/common.js" type="text/javascript"></script><link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"><link rel="stylesheet" href="/materialize/css/materialize.min.css" media="screen,projection" /><link href="/css/bootstrap.min.css" rel="stylesheet" /><link href="/css/fancybox/jquery.fancybox.css" rel="stylesheet"><link href="/css/flexslider.css" rel="stylesheet" /><link href="/css/style.css" rel="stylesheet" />
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>
<div id="wrapper" class="home-page"> 
	<header class="topbar">
		<div class="container">
			<div class="row">
				<!-- social icon-->
				<div class="col-sm-3">
				   <ul class="social-network">
					<%--<li><a class="waves-effect waves-dark" href="#"><i class="fa fa-facebook"></i></a></li>--%>
					<%--<li><a class="waves-effect waves-dark" href="#"><i class="fa fa-twitter"></i></a></li>--%>
					<%--<li><a class="waves-effect waves-dark" href="#"><i class="fa fa-linkedin"></i></a></li>--%>
					<%--<li><a class="waves-effect waves-dark" href="#"><i class="fa fa-pinterest"></i></a></li>--%>
					<%--<li><a class="waves-effect waves-dark" href="#"><i class="fa fa-google-plus"></i></a></li>--%>
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
				<!-- info -->

			</div>
		</div>
	</header>
		
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
                    <a class="navbar-brand" href="index.html">
						<%--<i class="icon-info-blocks material-icons">language</i>--%>
							<img src="/img/top.png" alt="" height="50" width="50" align=""/>
							杭州钱王万家信息科技有限公司
					</a>
                </div>
                <div class="navbar-collapse collapse ">
                    <ul class="nav navbar-nav">
                        <li class="active"><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/index.html">主页</a></li>
                        <li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/portfolio.html">产品展示</a></li>
						<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/services.html">服务与支持</a></li>
                        <%--<li><a class="waves-effect waves-dark" href="${pageContext.request.contextPath}/pricing.html">Pricing</a></li>--%>
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
	<!-- end header -->
	<section id="banner">

	<!-- Slider -->
        <div id="main-slider" class="flexslider">
            <ul class="slides" id="banner_show" >
				<c:forEach items="${banner }" var="pr">
					<li>
						<img src="${pr.image}" alt="" />
						<div class="flex-caption">
							<h3>${pr.title}</h3>
							<p>${pr.point}</p>
						</div>
					</li>
				</c:forEach>
            </ul>
        </div>
	<!-- end slider -->
	</section>  
	<section class="section-padding whyWe nav-bg">
		<div class="container"> 
			<div class="row">
				<div class="col-md-6 col-sm-6">
					<div class="about-text"> 
					<div class="section-title text-left">
						<h2>Why <strong>Choose Us</strong></h2>
						<p>Curabitur aliquet quam id dui posuere blandit. Donec sollicitudin molestie malesuada Pellentesque <br>ipsum id orci porta dapibus. Vivamus suscipit tortor eget felis porttitor volutpat.</p>
					</div> 
						<p>Grids is a responsive Multipurpose Template. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet quam id dui posuere blandit. Donec sollicitudin molestie malesuada. Pellentesque in ipsum id orci porta dapibus. Vivamus suscipit tortor eget felis porttitor volutpat.</p>

						<ul class="withArrow">
							<li><span class="fa fa-angle-right"></span> Lorem ipsum dolor sit amet</li>
							<li><span class="fa fa-angle-right"></span> consectetur adipiscing elit</li>
							<li><span class="fa fa-angle-right"></span> Curabitur aliquet quam id dui</li>
							<li><span class="fa fa-angle-right"></span> Donec sollicitudin molestie malesuada.</li>
						</ul>
						<a href="#" class="btn btn-primary waves-effect waves-dark">Learn More</a>
					</div>
				</div>
				<div class="col-md-6 col-sm-6">
					<div class="about-image">
						<img src="/img/about1.jpg" alt="About Images">
					</div>
				</div>
			</div>
		</div>
	</section>	
	<section id="content">

		<div id="ind_box_service">
			<h1 class="ind_bt">产品</h1>
			<h2 class="ind_ms">PRODUCTS</h2>
			<span class="ind_x"></span>

			<div class="picScroll-left" id="ind_service_box">
				<div class="hd">
					<a class="next"></a>
					<a class="prev"></a>
				</div>
				<div class="bd">
					<div class="tempWrap" style="overflow:hidden; position:relative; width:1100px">
						<ul class="ind_service_list" style="width: 2750px; left: 0px; position: relative; overflow: hidden; padding: 0px; margin: 0px;">

							<c:forEach items="${goods }" var="pr">
								<li style="float: left; width: 255px;">
									<div class="title">
										<a href="${pr.id}/detilPortfolio.html" title="${pr.goodsttile}">${pr.goodsttile}</a>
										<p class="ms"></p>
									</div>
									<div class="pic"><a href="${pr.id}/detilPortfolio.html"><img src="http://localhost:8080${pr.image}" alt=${pr.goodsttile}></a></div>
								</li>
							</c:forEach>

					</ul></div>
				</div>
			</div>
			<script type="text/javascript">
                jQuery(".picScroll-left").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"left",autoPlay:true,vis:4,easing:"easeOutCirc"});
			</script>

		</div>




		<!--================================================= -->
	</section>
		<section class="dishes">
		<div class="container">
	 	<div class="row">
			<div class="col-md-12">
				<div class="aligncenter"><h2 class="aligncenter">Our <strong>Process</strong></h2>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores quae porro consequatur aliquam, incidunt eius magni provident, <br/>doloribus omnis minus ovident, doloribus omnis minus temporibus perferendis nesciunt..</div>
				<br/>
			</div>
		</div>
	
	<div class="row service-v1 margin-bottom-40">
            <div class="col-md-4 md-margin-bottom-40">
					<div class="card small">
                        <div class="card-image">
                             <img class="img-responsive" src="/img/service1.jpg" alt="">
                            <span class="card-title">Designing</span>
                        </div>
                        <div class="card-content">
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores quae porro consequatur aliquam, incidunt
                            </p>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores quae porro consequatur aliquam, incidunt
                            </p>
                        </div>
                    </div>        
            </div>
			   <div class="col-md-4 md-margin-bottom-40">
					<div class="card small">
                        <div class="card-image">
                             <img class="img-responsive" src="/img/service2.jpg" alt="">
                            <span class="card-title">Development</span>
                        </div>
                        <div class="card-content">
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores quae porro consequatur aliquam, incidunt
                            </p>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores quae porro consequatur aliquam, incidunt
                            </p>
                        </div>
                    </div>        
            </div>
			   <div class="col-md-4 md-margin-bottom-40">
					<div class="card small">
                        <div class="card-image">
                             <img class="img-responsive" src="/img/service3.jpg" alt="">
                            <span class="card-title">Quality</span>
                        </div>
                        <div class="card-content">
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores quae porro consequatur aliquam, incidunt
                            </p>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores quae porro consequatur aliquam, incidunt
                            </p>
                        </div>
                    </div>        
            </div> 
        </div>
		</div>
		</section>
	
	<section class="section-padding gray-bg">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="section-title text-center">
						<h2>Our <strong>Business</strong></h2>
						<p>Curabitur aliquet quam id dui posuere blandit. Donec sollicitudin molestie malesuada Pellentesque <br>ipsum id orci porta dapibus. Vivamus suscipit tortor eget felis porttitor volutpat.</p>
					</div>
				</div>
			</div>
			<div class="row"> 
				<div class="col-md-6 col-sm-6">
					<div class="about-image">
						<img src="/img/about.jpg" alt="About Images">
					</div>
				</div>
				<div class="col-md-6 col-sm-6">
					<div class="about-text">
						<p>Grids is a responsive Multipurpose Template. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet quam id dui posuere blandit. Donec sollicitudin molestie malesuada. Pellentesque in ipsum id orci porta dapibus. Vivamus suscipit tortor eget felis porttitor volutpat.</p>

						<p>Grids is a responsive Multipurpose Template. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet quam id dui posuere blandit. Donec sollicitudin molestie malesuada. Pellentesque in ipsum id orci porta dapibus. Vivamus suscipit tortor eget felis porttitor volutpat.</p>

						<p>Grids is a responsive Multipurpose Template. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet quam id dui posuere blandit. Donec sollicitudin molestie malesuada. Pellentesque in ipsum id orci porta dapibus. Vivamus suscipit tortor eget felis porttitor volutpat.</p>

					</div>
				</div>
			</div>
		</div>
	</section>	  
	
 
	<footer>
	<div class="container">
		<div class="row">
			<div class="col-sm-3">
				<div class="widget">
					<h5 class="widgetheading">联系方式</h5>
					<address>
					<strong>杭州钱王万家信息科技有限公司</strong><br>
						杭州临安市青山湖街道958号<br>
						科创大楼1幢1101-06</address>
					<p>
						<i class="icon-phone"></i> 61103779<br>
						<i class="icon-envelope-alt"></i> email@domainname.com
					</p>
				</div>
			</div>
			<div class="col-sm-3">
				<div class="widget">
					<h5 class="widgetheading">关于万家</h5>
					<ul class="link-list">
						<li><a class="waves-effect waves-dark" href="#">万家科技介绍</a></li>
						<li><a class="waves-effect waves-dark" href="#">万家科技新闻动态</a></li>
						<li><a class="waves-effect waves-dark" href="#">万家科技活动</a></li>
						<li><a class="waves-effect waves-dark" href="#">万家科技企业文化</a></li>
						<li><a class="waves-effect waves-dark" href="#">联系我们</a></li>
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
					<h5 class="widgetheading">最新新闻</h5>
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