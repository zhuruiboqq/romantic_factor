<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<ul class="dress_content_list fix">
	<c:forEach var="worksItem" items="${pageHandler.curPageResultList}" varStatus="varStatus">
		<li ${varStatus.index%4==0?"class=\"dress_content_list_fri\"":"" }><a href="JavaScript:;"><img src="${worksItem.img_url}" /></a> <%-- <span>${worksItem.type}</span>
		 <span>${worksItem.day}</span> --%></li>
	</c:forEach>

</ul>
<!-- <div id='img_src' value=''></div> -->

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
	<c:if test="${pageHandler.curPageIndex-1 lt pageHandler.totalPageSize}">
		<a class="next_btn" href="${param.currentPageURL}?page=${pageHandler.curPageIndex+2}">${pageHandler.curPageIndex+2}</a>
	</c:if>
	<c:if test="${pageHandler.curPageIndex ne pageHandler.totalPageSize}">
		<a href="${param.currentPageURL}?page=${pageHandler.curPageIndex+1}">下一页</a>
		<a class="fri_btn" href="${param.currentPageURL}?page=${pageHandler.totalPageSize}">尾頁</a>
	</c:if>
	<%--
	<a class="fri_btn" href="${param.currentPageURL}?page=1&${param.detailURLParams}">首頁</a>
	<c:if test="${page_first_ignore eq true}">
		<a class="fri_btn">...</a>
	</c:if>

	<c:choose>
		<c:when test="${pageid==page}">
			<a class="number one this_btn" href="${param.currentPageURL}?page=${page}&${param.detailURLParams}">${page} </a>
		</c:when>
		<c:otherwise>
			<a class="number one" href="${param.currentPageURL}?page=${page}&${param.detailURLParams}">${page} </a>
		</c:otherwise>
	</c:choose>
	<c:if test="${page1 ne 0}">
		<c:choose>
			<c:when test="${pageid==page1}">
				<a class="number two this_btn" href="${param.currentPageURL}?page=${page1}&${param.detailURLParams}">${page1}</a>
			</c:when>
			<c:otherwise>
				<a class="number two" href="${param.currentPageURL}?page=${page1}&${param.detailURLParams}">${page1}</a>
			</c:otherwise>
		</c:choose>

	</c:if>
	<c:if test="${page2 ne 0}">
		<c:choose>
			<c:when test="${pageid==page2}">
				<a class="number three this_btn" href="${param.currentPageURL}?page=${page2}&${param.detailURLParams}">${page2}</a>
			</c:when>
			<c:otherwise>
				<a class="number three" href="${param.currentPageURL}?page=${page2}&${param.detailURLParams}">${page2}</a>
			</c:otherwise>
		</c:choose>
	</c:if>
	<c:if test="${page_last_ignore eq true}">
		<a class="last_btn">...</a>
	</c:if>
	<a class="next_btn" href="${param.currentPageURL}?page=${nextPage}&${param.detailURLParams}">下一頁</a> <a class="last_btn"
		href="${param.currentPageURL}?page=${pageCount}&${param.detailURLParams}">尾頁</a>
		 --%>
</div>