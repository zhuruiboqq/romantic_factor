<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	int i=0;
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
        	
            <%@ include file="/romantic_factor/head.jsp" %>
        </div>
    </header>
    <article class="">
    	<div class="footer_name_content dress_not_footer">
            <div class="footer_top">
                <div class="line no_show left"></div>
                <img class="icon_left left" src="images/icon_left.png" />
                <div class="text left">
                    <h1><img src="images/foot_pic1.png" /></h1>
                    <h2>羅 蔓 緣 素 婚 紗 攝 影</h2>
                </div>
                <div class="line no_show right"></div>
                <img class="icon_right right" src="images/icon_left.png" />
            </div>
            
        </div>
        <nav class="set_meal_content_nav makeup_makeer_nav">
        	<ul>
            	<li>
                	<a href="JavaScript:;">
                    	<div class="nav_link_text  text_this">化妝師</div>
                        <div class="nav_link_line line_this"></div>
                    </a>
                </li>
            </ul>
        
        </nav>
        
        <ul class="dress_content_list fix">
        	<c:forEach var="makeupMakeer" items="${makeupMakeerList}">
        		<%
        		i++;
        		if(i%4==1){ %>
        			<li class="dress_content_list_fri"><a href="makeupWorks.do?page=1&makeer_id=${makeupMakeer.id}"><img src="${makeupMakeer.img_url}" /></a>
        		
        			<span class="en">${makeupMakeer.name}</span><span>${makeupMakeer.degree}</span><div><a href="makeupWorks.do?page=1&makeer_id=${makeupMakeer.id}">作品</a><a href="mealIntroduce.do">套餐</a></div></li>
        			
        		<%}else{ %>
        			<li><a href="makeupWorks.do?page=1&makeer_id=${makeupMakeer.id}"><img src="${makeupMakeer.img_url}" /></a>
        		
        			<span class="en">${makeupMakeer.name}</span><span>${makeupMakeer.degree}</span><div><a href="makeupWorks.do?page=1&makeer_id=${makeupMakeer.id}">作品</a><a href="mealIntroduce.do">套餐</a></div></li>
        		<%} %>
            	
            </c:forEach>
        	
        </ul>
        
        <div class="dress_btns">
        	<a class="fri_btn" href="makeupMakeer.do?page=1">首頁</a>
        	<c:if test="${page_first_ignore eq true}">
            	<a class="fri_btn" >...</a>
            </c:if> 
            
            <c:choose>
                <c:when test="${pageid==page}">
                	<a class="number one this_btn" href="makeupMakeer.do?page=${page}">${page}</a>
                </c:when>
                <c:otherwise>
                	<a class="number one" href="makeupMakeer.do?page=${page}">${page}</a>			
                </c:otherwise>
            </c:choose>
            
            
            <c:if test="${page1 ne 0}">
            <c:choose>
                <c:when test="${pageid==page1}">
                	<a class="number two this_btn" href="makeupMakeer.do?page=${page1}">${page1}</a>
                </c:when>
                <c:otherwise>
                	<a class="number two" href="makeupMakeer.do?page=${page1}">${page1}</a>		
                </c:otherwise>
            </c:choose>
            
            </c:if> 
            <c:if test="${page2 ne 0}">
           	<c:choose>
                <c:when test="${pageid==page2}">
                	 <a class="number three this_btn" href="makeupMakeer.do?page=${page2}">${page2}</a>
                </c:when>
                <c:otherwise>
                	 <a class="number three" href="makeupMakeer.do?page=${page2}">${page2}</a>
                </c:otherwise>
            </c:choose>
            
             </c:if> 
            <c:if test="${page_last_ignore eq true}">
            	<a class="last_btn" >...</a>
            </c:if> 
            
            <a class="next_btn" href="makeupMakeer.do?page=${nextPage}">下一頁</a>
            <a class="last_btn" href="makeupMakeer.do?page=${pageCount}">尾頁</a>
        </div>
        
    	<div class="footer_name_content fix">
            <div class="footer_top">
                <div class="line no_show left"></div>
                <img class="icon_left left" src="images/icon_left.png" />
                <div class="text left">
                    <h1><img src="images/foot_pic1.png" /></h1>
                    <h2>羅 蔓 緣 素 婚 紗 攝 影</h2>
                </div>
                <div class="line no_show right"></div>
                <img class="icon_right right" src="images/icon_left.png" />
            </div>
            <div class="icons_link">
                <a href="JavaScript:;"><img src="images/xinlang_icon.png" /></a>
                <a href="JavaScript:;"><img src="images/weixin_icon.png" /></a>
                <a href="JavaScript:;"><img src="images/tengxun_icon.png" /></a>
                <a target="_blank" href="http://wpa.qq.com/msgrd?v=1&uin=707823233&site=qq&menu=yes"><img src="images/qq.png" /></a>
            </div>
            <p class="frist">© Romantic factor - 2015保留所有權利</p>
            <!-- <p>全國免費熱線：400-888-8888     佔線電話：0101-88988888</p>
            <p>地址：中國廣州香港深圳上海杭州華南大廈10000號</p> -->
            <p>公司：广州市罗蔓原素婚纱摄影有限公司</p>
        </div> 
    </article>
    
    
    <%@ include file="/romantic_factor/footer.jsp" %>

</body>
<script src="js/romantic_factor.js" language="jscript" type="text/javascript"></script>
</html>
