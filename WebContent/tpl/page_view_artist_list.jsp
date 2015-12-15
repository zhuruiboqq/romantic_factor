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
			<li><a href="JavaScript:;">
					<div class="nav_link_text  text_this">${param.currentPageTipCN }</div>
					<div class="nav_link_line line_this"></div>
			</a></li>
		</ul>

	</nav>

	<ul class="dress_content_list fix">
		<c:forEach var="artistInfo" items="${pageHandler.curPageResultList}" varStatus="varStatus">
			<li ${varStatus.index%4==0?"class=\"dress_content_list_fri\"":"" }><a href="${param.childPageURL}?page=1&artistID=${artistInfo.id}"><img
					src="${artistInfo.img_url}" /></a> <span class="en">${artistInfo.name}</span><span>${artistInfo.degree}</span>
				<div>
					<a href="${param.childPageURL}?page=1&artistID=${artistInfo.id}">作品</a><a href="mealIntroduce.do">套餐</a>
				</div></li>
		</c:forEach>

	</ul>

	<div class="dress_btns">
		<c:if test="${pageHandler.curPageIndex ne 1}">
			<a class="fri_btn" href="${param.currentPageURL}?page=1">首頁</a>
			<a href="${param.currentPageURL}?page=${pageHandler.curPageIndex-1}">上一页</a>
		</c:if>
		<c:if test="${pageHandler.curPageIndex gt 2 }">
			<a class="pre_btn" href="${param.currentPageURL}?page=${pageHandler.curPageIndex-2}">${pageHandler.curPageIndex-2}</a>
		</c:if>
		<c:if test="${pageHandler.curPageIndex gt 1 }">
			<a class="pre_btn" href="${param.currentPageURL}?page=${pageHandler.curPageIndex-1}">${pageHandler.curPageIndex-1}</a>
		</c:if>
		<a class="this_btn" href="${param.currentPageURL}?page=${pageHandler.curPageIndex}">${pageHandler.curPageIndex}</a>
		<c:if test="${pageHandler.curPageIndex lt pageHandler.totalPageSize}">
			<a class="next_btn" href="${param.currentPageURL}?page=${pageHandler.curPageIndex+1}">${pageHandler.curPageIndex+1}</a>
		</c:if>
		<c:if test="${pageHandler.curPageIndex+1 lt pageHandler.totalPageSize}">
			<a class="next_btn" href="${param.currentPageURL}?page=${pageHandler.curPageIndex+2}">${pageHandler.curPageIndex+2}</a>
		</c:if>
		<c:if test="${pageHandler.curPageIndex ne pageHandler.totalPageSize}">
			<a href="${param.currentPageURL}?page=${pageHandler.curPageIndex+1}">下一页</a>
			<a class="fri_btn" href="${param.currentPageURL}?page=${pageHandler.totalPageSize}">尾頁</a>
		</c:if>
第 ${pageHandler.curPageIndex } / ${pageHandler.totalPageSize } 页， 总记录：${pageHandler.totalRecordCount }，每页显示：${pageHandler.perPageSize}
		<%--
		<c:choose>
			<c:when test="${pageid==page}">
				<a class="number one this_btn" href="${param.currentPageURL}?page=${page}">${page}</a>
			</c:when>
			<c:otherwise>
				<a class="number one" href="${param.currentPageURL}?page=${page}">${page}</a>
			</c:otherwise>
		</c:choose>


		<c:if test="${page1 ne 0}">
			<c:choose>
				<c:when test="${pageid==page1}">
					<a class="number two this_btn" href="${param.currentPageURL}?page=${page1}">${page1}</a>
				</c:when>
				<c:otherwise>
					<a class="number two" href="${param.currentPageURL}?page=${page1}">${page1}</a>
				</c:otherwise>
			</c:choose>

		</c:if>
		<c:if test="${page2 ne 0}">
			<c:choose>
				<c:when test="${pageid==page2}">
					<a class="number three this_btn" href="${param.currentPageURL}?page=${page2}">${page2}</a>
				</c:when>
				<c:otherwise>
					<a class="number three" href="${param.currentPageURL}?page=${page2}">${page2}</a>
				</c:otherwise>
			</c:choose>

		</c:if>
		<c:if test="${page_last_ignore eq true}">
			<a class="last_btn">...</a>
		</c:if>

		<a class="next_btn" href="${param.currentPageURL}?page=${nextPage}">下一頁</a> <a class="last_btn" href="${param.currentPageURL}?page=${pageCount}">尾頁</a>
		 --%>
	</div>
</article>