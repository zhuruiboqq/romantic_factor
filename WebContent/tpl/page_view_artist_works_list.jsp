<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<article class="">
	<div class="footer_name_content dress_not_footer">
		<div class="footer_top">
			<div class="line no_show left"></div>
			<img class="icon_left left" src="images/icon_left.png" />
			<div class="text left">
				<h1>
					<img src="images/foot_pic1.png" />
				</h1>
				<h2>羅 蔓 緣 素 婚 紗 攝 影</h2>
			</div>
			<div class="line no_show right"></div>
			<img class="icon_right right" src="images/icon_left.png" />
		</div>

	</div>
	<nav class="set_meal_content_nav makeup_makeer_nav">
		<ul>
			<li><a href="${param.parentPageURL }?page=1">
					<div class="nav_link_text  text_this">${param.currentPageTipCN}</div>
					<div class="nav_link_line line_this"></div>
			</a></li>
		</ul>

	</nav>

	<div class="makeer_info">
		<img src="${artistInfo.img_url}" />
		<div class="makeer_detail">
			<p style="font-size: 24px; color: #353535;">${artistInfo.name}</p>
			<p style="font-size: 24px; line-height: 50px;">${artistInfo.degree}</p>
			<p style="line-height: 25px; margin-top: 35px;">${artistInfo.content}</p>
		</div>
	</div>

	<div class="makeup_works_title">
		<div class="makeup_works_line left"></div>
		<div class="works_title">
			<p>${param.currentPageTipCN}作品</p>
			<span>${param.currentPageTipEN} WORKS</span>
		</div>
		<div class="makeup_works_line right"></div>
	</div>

	<jsp:include page="/tpl/page_view_only_works_list.jsp">
		<jsp:param name="currentPageURL" value="${param.currentPageURL}" />
	</jsp:include>
</article>
