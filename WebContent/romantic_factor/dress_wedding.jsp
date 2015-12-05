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
        <nav class="set_meal_content_nav dress_content_nav">
        	<ul>
            	<li>
                	<a href="dress.do?page=1&type=1">
                		<c:choose>
                			<c:when test="${type eq 1}">
                				<div class="nav_link_text  text_this">婚紗</div>
                        		<div class="nav_link_line line_this"></div>
                			</c:when>
                			<c:otherwise>
                				<div class="nav_link_text">婚紗</div>
                        		<div class="nav_link_line"></div>
                			</c:otherwise>
                		</c:choose>
                		
                    </a>
                </li>
                <li><span>/</span></li>
                <li>
                	<a href="dress.do?page=1&type=2">
                		<c:choose>
                			<c:when test="${type eq 2}">
                				<div class="nav_link_text  text_this">晚禮服</div>
                        		<div class="nav_link_line line_this"></div>
                			</c:when>
                			<c:otherwise>
                				<div class="nav_link_text">晚禮服</div>
                        		<div class="nav_link_line"></div>
                			</c:otherwise>
                		</c:choose>
                    	
                    </a>
                </li>
                <li><span>/</span></li>
                <li>
                	<a href="dress.do?page=1&type=3">
                		<c:choose>
                			<c:when test="${type eq 3}">
                				<div class="nav_link_text  text_this">其它</div>
                        		<div class="nav_link_line line_this"></div>
                			</c:when>
                			<c:otherwise>
                				<div class="nav_link_text">其它</div>
                        		<div class="nav_link_line"></div>
                			</c:otherwise>
                		</c:choose>
                    </a>
                </li>
            </ul>
        
        </nav>
        
        <ul class="dress_content_list fix">
        	<c:forEach var="dress" items="${dressList}">
        		<%
        		i++;
        		if(i%4==1){ %>
        			<li class="dress_content_list_fri"><a href="JavaScript:;"><img src="${dress.img_url}" /></a><span>${dress.name}</span><span>${dress.degree}</span></li>
        			
        		<%}else{ %>
        			<li><a href="JavaScript:;"><img src="${dress.img_url}" /></a><span>${dress.name}</span><span>${dress.degree}</span></li>
        		<%} %>
            	
            </c:forEach>
        	
        	
        	
        </ul>
       <%--  <c:when test="${type eq 1}">
                				<div class="nav_link_text  text_this">婚紗</div>
                        		<div class="nav_link_line line_this"></div>
                			</c:when>
                			<c:otherwise>
                				<div class="nav_link_text">婚紗</div>
                        		<div class="nav_link_line"></div>
                			</c:otherwise> --%>
        <div class="dress_btns">
        	<a class="fri_btn" href="dress.do?page=1&type=${type}">首頁</a>
        	<c:if test="${page_first_ignore eq true}">
            	<a class="fri_btn" >...</a>
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
            <a class="last_btn" >...</a>
            </c:if>
            <a class="next_btn" href="dress.do?page=${nextPage}&type=${type}">下一頁</a>
            <a class="last_btn" href="dress.do?page=${pageCount}&type=${type}">尾頁</a>
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
           <!--  <p>全國免費熱線：400-888-8888     佔線電話：0101-88988888</p>
            <p>地址：中國廣州香港深圳上海杭州華南大廈10000號</p> -->
            <p>公司：广州市罗蔓原素婚纱摄影有限公司</p>
        </div> 
    </article>
    
    
    <%@ include file="/romantic_factor/footer.jsp" %>
    
    <!--彈窗內容 start-->
    <div class="dress_dialog_bgd" id="fixed_box_e">
         <div class="dress_dialog_content">
         	<div class="dia_left_no_see"></div>
            <div class="dia_right_no_see"></div>
         	<table class="big_pic">
            	<tr><td><img src="images/dress_wedding_pic1.jpg" /></td></tr>
            </table>
         	<div class="pre_pics">
            	
                <table class="pre_table">
                    <tr>
                        <td><a href="JavaScript:;"><img index="1" class="big_pic_this" src="images/dress_wedding_pic1.jpg" /></a></td>
                        <td><a href="JavaScript:;"><img index="2" src="images/dress_wedding_pic2.jpg" /></a></td>
                        <td><a href="JavaScript:;"><img index="3" src="images/dress_wedding_pic3.jpg" /></a></td>
                        <td><a href="JavaScript:;"><img index="4" src="images/head_pic1.jpg" /></a></td>
                        <td><a href="JavaScript:;"><img index="5" src="images/head_pic2.jpg" /></a></td>
                        <td><a href="JavaScript:;"><img index="6" src="images/brand_content_pic_1.jpg" /></a></td>
                        <td><a href="JavaScript:;"><img index="7" src="images/brand_content_pic_2.jpg" /></a></td>
                        <td><a href="JavaScript:;"><img index="8" src="images/head_pic_sec1.jpg" /></a></td>
                        <td><a href="JavaScript:;"><img index="9" src="images/head_pic_sec2.jpg" /></a></td>
                        <td><a href="JavaScript:;"><img index="10" src="images/head_pic_sec3.jpg" /></a></td>
                        <td><a href="JavaScript:;"><img index="11" src="images/leave_words1.jpg" /></a></td>
                        <td><a href="JavaScript:;"><img index="12" src="images/brand_content_pic_3.jpg" /></a></td>
                    </tr>
                </table>
            </div>
            <a class="close_dialog" href="JavaScript:;">X</a>
            <div class="next_btns">
            	<!--<a href="JavaScript:;"><img class="btn_left" src="images/direction_btn.png" /></a>
                <span class="now_small_pic_index">1</span>
                <span>/</span>
                <span>12</span>
                <a href="JavaScript:;"><img class="btn_right" src="images/direction_btn.png" /></a>
                <p>廣州九龍城</p>-->
            </div>
         </div>
    </div>
    <!--彈窗內容 end-->
</body>
<script src="js/romantic_factor.js" language="jscript" type="text/javascript"></script>
</html>
