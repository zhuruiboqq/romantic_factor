<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	int i = 0;
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>romantic factor</title>
<link href="css/romantic_factor.css" rel='stylesheet' type='text/css'>
	<script src="js/jquery-1.7.2.min.js" language="jscript" type="text/javascript"></script>
	<script src="js/custom.modernizr.js"></script>
</head>

<body>
	<header>
	<div class="header_content header_content_two">

		<%@ include file="/tpl/head_with_title_img.jsp"%>
	</div>
	</header>
	
	<jsp:include page="/tpl/page_view_artist_list.jsp">
		<jsp:param name="currentPageTipCN" value="摄影师" />
		<jsp:param name="currentPageTipEN" value="PHOTOGRAPHY" />
		<jsp:param name="parentPageURL" value="makeupMakeer.do" />
		<jsp:param name="currentPageURL" value="photoer.do" />
		<jsp:param name="childPageURL" value="photoerWorks.do" />
	</jsp:include>

	<%@ include file="/tpl/footer_more.jsp"%>

</body>
<script src="js/romantic_factor.js" language="jscript" type="text/javascript"></script>
</html>
