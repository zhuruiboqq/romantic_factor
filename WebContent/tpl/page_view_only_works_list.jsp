<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	int i = 0;
%>
<ul class="dress_content_list fix">
	<c:forEach var="worksItem" items="${worksList}">
		<%
			i++;
				if (i % 4 == 1) {
		%>
		<li class="dress_content_list_fri"><a href="JavaScript:;"><img src="${worksItem.img_url}" /></a><span>${worksItem.type}</span>
		<%-- <span>${worksItem.day}</span> --%></li>
		<%
			} else {
		%>
		<li><a href="JavaScript:;"><img src="${worksItem.img_url}" /></a><span>${worksItem.type}</span>
		<%-- <span>${worksItem.day}</span> --%></li>
		<%
			}
		%>

	</c:forEach>

</ul>
<!-- <div id='img_src' value=''></div> -->

<div class="dress_btns">

	<a class="fri_btn" href="${param.currentPageURL}?page=1&artistID=<%=request.getAttribute("id")%>">首頁</a>
	<c:if test="${page_first_ignore eq true}">
		<a class="fri_btn">...</a>
	</c:if>

	<c:choose>
		<c:when test="${pageid==page}">
			<a class="number one this_btn" href="${param.currentPageURL}?page=${page}&artistID=<%=request.getAttribute("id") %>">${page} </a>
		</c:when>
		<c:otherwise>
			<a class="number one" href="${param.currentPageURL}?page=${page}&artistID=<%=request.getAttribute("id") %>">${page} </a>
		</c:otherwise>
	</c:choose>
	<c:if test="${page1 ne 0}">
		<c:choose>
			<c:when test="${pageid==page1}">
				<a class="number two this_btn" href="${param.currentPageURL}?page=${page1}&artistID=<%=request.getAttribute("id") %>">${page1}</a>
			</c:when>
			<c:otherwise>
				<a class="number two" href="${param.currentPageURL}?page=${page1}&artistID=<%=request.getAttribute("id") %>">${page1}</a>
			</c:otherwise>
		</c:choose>

	</c:if>
	<c:if test="${page2 ne 0}">
		<c:choose>
			<c:when test="${pageid==page2}">
				<a class="number three this_btn" href="${param.currentPageURL}?page=${page2}&artistID=<%=request.getAttribute("id") %>">${page2}</a>
			</c:when>
			<c:otherwise>
				<a class="number three" href="${param.currentPageURL}?page=${page2}&artistID=<%=request.getAttribute("id") %>">${page2}</a>
			</c:otherwise>
		</c:choose>
	</c:if>
	<c:if test="${page_last_ignore eq true}">
		<a class="last_btn">...</a>
	</c:if>
	<a class="next_btn" href="${param.currentPageURL}?page=${nextPage}&artistID=<%=request.getAttribute("id") %>">下一頁</a> <a class="last_btn"
		href="${param.currentPageURL}?page=${pageCount}&artistID=<%=request.getAttribute("id") %>">尾頁</a>
</div>