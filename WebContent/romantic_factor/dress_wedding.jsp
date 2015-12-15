<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>romantic factor</title>
<link href="css/romantic_factor.css" rel='stylesheet' type='text/css'>
	<script src="js/jquery-1.7.2.min.js" language="jscript" type="text/javascript"></script>
	<script src="js/custom.modernizr.js" type="text/javascript"></script>
</head>

<body>
	<header>
	<div class="header_content header_content_two">

		<%@ include file="/tpl/head_with_title_img.jsp"%>
	</div>
	</header>
	<article class="">
	<div class="footer_name_content dress_not_footer" id="subNav">
		<div class="footer_top">
			<div class="line no_show left"></div>
			<img class="icon_left left" src="images/icon_left.png" />
			<div class="text left">
				<h1>
					<img src="images/foot_pic1.png" />
				</h1>
				<h2>罗 蔓 缘 素 婚 纱 摄 影</h2>
			</div>
			<div class="line no_show right"></div>
			<img class="icon_right right" src="images/icon_left.png" />
		</div>

	</div>
	<nav class="set_meal_content_nav dress_content_nav">
	<ul>
		<li><a href="dress.do?page=1&type=1&tagname=subNav"> <span class='nav_link_text   ${type == 1?"text_this":""}'>婚纱</span> <span
				class='nav_link_line ${type == 1?"line_this":""}'></span>

		</a></li>
		<li><span>/</span></li>
		<li><a href="dress.do?page=1&type=2&tagname=subNav"> <span class='nav_link_text  ${type == 2?"text_this":""}'>晚礼服</span> <span
				class='nav_link_line ${type == 2?"line_this":""}'></span>
		</a></li>
		<li><span>/</span></li>
		<li><a href="dress.do?page=1&type=3&tagname=subNav"> <span class='nav_link_text  ${type == 3?"text_this":""}'>其他</span> <span
				class='nav_link_line ${type == 3?"line_this":""}'></span>
		</a></li>
	</ul>

	</nav> <jsp:include page="/tpl/page_view_only_works_list.jsp">
		<jsp:param name="currentPageURL" value="dress.do" />
		<jsp:param name="detailURLParams" value="type=${type}&tagname=subNav" />
	</jsp:include> </article>

	<%@ include file="/tpl/footer_more.jsp"%>
	<%@ include file="/tpl/pop_view_img.jsp"%>
</body>
<script src="js/romantic_factor.js" language="jscript" type="text/javascript"></script>
<script>
	var tagname = '${request.getAttribute("tagname")}';
	var indexTag = location.href.indexOf("tagname");
	if ((tagname != null && tagname != "") || indexTag > 0) {
		document.getElementById("subNav").scrollIntoView();
	}
</script>
</html>