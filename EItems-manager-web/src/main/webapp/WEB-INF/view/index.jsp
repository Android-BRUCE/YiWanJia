<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
  <link rel="icon" sizes="124x124" href="${pageContext.request.contextPath}/images/logo.png">
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/images/logo.png">
<title>杭州钱王万家信息科技有限公司管理后台</title>
<style>
body
{
  scrollbar-base-color:#C0D586;
  scrollbar-arrow-color:#FFFFFF;
  scrollbar-shadow-color:DEEFC6;
}
</style>
</head>
<frameset rows="60,*" cols="*" frameborder="no" border="0" framespacing="0">
  <frame src="${pageContext.request.contextPath}/top.do" name="topFrame" scrolling="no">
  <frameset cols="180,*" name="btFrame" frameborder="NO" border="0" framespacing="0">
    <frame src="${pageContext.request.contextPath}/menu.do" noresize name="menu" scrolling="yes">
    <frame src="${pageContext.request.contextPath}/main.do" noresize name="main" scrolling="yes">
  </frameset>
</frameset>
<noframes>
	<body>您的浏览器不支持框架！</body>
</noframes>
</html>