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
<script src="js/custom.modernizr.js" type="text/javascript"></script>
</head>

<body>
	<header>
	<div class="header_content header_content_two">

		<%@ include file="/tpl/head_with_title_img.jsp"%>
	</div>
	</header>
	<article class="">
	<div class="footer_name_content dress_not_footer">
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
		<li><a href="dress.do?page=1&type=1"> <c:choose>
					<c:when test="${type eq 1}">
						<div class="nav_link_text  text_this">婚纱</div>
						<div class="nav_link_line line_this"></div>
					</c:when>
					<c:otherwise>
						<div class="nav_link_text">婚纱</div>
						<div class="nav_link_line"></div>
					</c:otherwise>
				</c:choose>

		</a></li>
		<li><span>/</span></li>
		<li><a href="dress.do?page=1&type=2"> <c:choose>
					<c:when test="${type eq 2}">
						<div class="nav_link_text  text_this">晚礼服</div>
						<div class="nav_link_line line_this"></div>
					</c:when>
					<c:otherwise>
						<div class="nav_link_text">晚礼服</div>
						<div class="nav_link_line"></div>
					</c:otherwise>
				</c:choose>

		</a></li>
		<li><span>/</span></li>
		<li><a href="dress.do?page=1&type=3"> <c:choose>
					<c:when test="${type eq 3}">
						<div class="nav_link_text  text_this">其它</div>
						<div class="nav_link_line line_this"></div>
					</c:when>
					<c:otherwise>
						<div class="nav_link_text">其它</div>
						<div class="nav_link_line"></div>
					</c:otherwise>
				</c:choose>
		</a></li>
	</ul>

	</nav>

	<ul class="dress_content_list fix">
		<c:forEach var="dress" items="${dressList}">
			<%
				i++;
					if (i % 4 == 1) {
			%>
			<li class="dress_content_list_fri"><a href="JavaScript:;"><img src="${dress.img_url}" /></a><span>${dress.name}</span><span>${dress.degree}</span></li>

			<%
				} else {
			%>
			<li><a href="JavaScript:;"><img src="${dress.img_url}" /></a><span>${dress.name}</span><span>${dress.degree}</span></li>
			<%
				}
			%>

		</c:forEach>



	</ul>
	<%--  <c:when test="${type eq 1}">
                				<div class="nav_link_text  text_this">婚纱</div>
                        		<div class="nav_link_line line_this"></div>
                			</c:when>
                			<c:otherwise>
                				<div class="nav_link_text">婚纱</div>
                        		<div class="nav_link_line"></div>
                			</c:otherwise> --%>
	<div class="dress_btns">
		<a class="fri_btn" href="dress.do?page=1&type=${type}">首页</a>
		<c:if test="${page_first_ignore eq true}">
			<a class="fri_btn">...</a>
		</c:if>
		<c:choose>
			<c:when test="${pageid==page}">
				<a class="number one this_btn" href="dress.do?page=${page}&type=${type}">${page}</a>
			</c:when>
			<c:otherwise>
				<a class="number one" href="dress.do?page=${page}&type=${type}">${page}</a>
			</c:otherwise>
		</c:choose>

		<c:if test="${page1 ne 0}">
			<c:choose>
				<c:when test="${pageid==page1}">
					<a class="number two this_btn" href="dress.do?page=${page1}&type=${type}">${page1}</a>
				</c:when>
				<c:otherwise>
					<a class="number two" href="dress.do?page=${page1}&type=${type}">${page1}</a>
				</c:otherwise>
			</c:choose>

		</c:if>
		<c:if test="${page2 ne 0}">
			<c:choose>
				<c:when test="${pageid==page2}">
					<a class="number three this_btn" href="dress.do?page=${page2}&type=${type}">${page2}</a>
				</c:when>
				<c:otherwise>
					<a class="number three" href="dress.do?page=${page2}&type=${type}">${page2}</a>
				</c:otherwise>
			</c:choose>

		</c:if>
		<c:if test="${page_last_ignore eq true}">
			<a class="last_btn">...</a>
		</c:if>
		<a class="next_btn" href="dress.do?page=${nextPage}&type=${type}">下一页</a> <a class="last_btn" href="dress.do?page=${pageCount}&type=${type}">尾页</a>
	</div>
	</article>


	<%@ include file="/tpl/footer_more.jsp"%>
	<%@ include file="/tpl/pop_view_img.jsp"%>
</body>
<script src="js/romantic_factor.js" language="jscript" type="text/javascript"></script>
</html>
