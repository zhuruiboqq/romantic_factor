<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %> 
<%@ include file="/tpl/taglibs.jsp" %>
<rf:contentHeaderFront />
	<header>
    	<div class="header_content header_content_two">
        	
            <%@ include file="/tpl/head_with_title_img.jsp" %>
        </div>
    </header>
    
    <jsp:include page="/tpl/page_view_artist_list.jsp" >
    	<jsp:param name="currentPageTipCN" value="化妆师" />
		<jsp:param name="currentPageTipEN" value="MAKEUP" />
		<jsp:param name="parentPageURL" value="makeupMakeer.do" />
		<jsp:param name="currentPageURL" value="makeupMakeer.do" />
		<jsp:param name="childPageURL" value="makeupWorks.do" />
    </jsp:include>
    
    <%@ include file="/tpl/footer_more.jsp" %>

<rf:contentFooterFront/>
