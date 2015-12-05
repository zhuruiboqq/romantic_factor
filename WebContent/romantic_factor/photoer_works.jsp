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
                    	<div class="nav_link_text  text_this">攝影師</div>
                        <div class="nav_link_line line_this"></div>
                    </a>
                </li>
            </ul>
        
        </nav>
        
        <div class="makeer_info">
        	<img src="${photoer.img_url}" />
            <div class="makeer_detail">
            	
        			<p style="font-size:24px;color:#353535;" ><%=request.getAttribute("name") %> </p>
               		<p style="font-size:24px;line-height:50px;"><%=request.getAttribute("degree") %></p>
                	<p style="line-height:25px;margin-top:35px;"><%=request.getAttribute("content") %></p> 
            	
            	
            	
            </div>
        </div>
        
        <div class="makeup_works_title">
        	<div class="makeup_works_line left"></div>
            <div class="works_title">
            	<p>攝影師作品</p>
                <span>PHOTOGRAPHY WORKS</span>
            </div>
            <div class="makeup_works_line right"></div>
        </div>
        
        <ul class="dress_detial_list fix">
        	<c:forEach var="photoerWorks" items="${photoerWorksList}">
        		<%
        		i++;
        		if(i%4==1){ %>
        			<li class="dress_content_list_fri"><div class="tab_box"><a href="JavaScript:;"><img src="${photoerWorks.img_url}" /></a></div><span>${photoerWorks.address}</span><%-- <span>${photoerWorks.day}</span> --%></li>
        		<%}else{ %>
        			 <li><div class="tab_box"><a href="JavaScript:;"><img src="${photoerWorks.img_url}" /></a></div><span>${photoerWorks.address}</span><%-- <span>${photoerWorks.day}</span> --%></li>
        		<%} %>
            	
            </c:forEach>
        	
        </ul>
        <div class="turn_page">
        <div class="dress_btns">
        	<a class="fri_btn" href="photoerWorks.do?page=1&photoer_id=${photoer.id}">首頁</a>
        	<c:if test="${page_first_ignore eq true}">
            	<a class="fri_btn" >...</a>
            </c:if> 
            
            <c:choose>
                <c:when test="${pageid==page}">
                	<a class="number one this_btn" href="photoerWorks.do?page=${page}&photoer_id=${photoer.id}">${page} </a>
                </c:when>
                <c:otherwise>
                	<a class="number one" href="photoerWorks.do?page=${page}&photoer_id=${photoer.id}">${page} </a>			
                </c:otherwise>
            </c:choose>
            
            
            <c:if test="${page1 ne 0}">
           <c:choose>
                <c:when test="${pageid==page1}">
                	<a class="number two this_btn" href="photoerWorks.do?page=${page1}&photoer_id=${photoer.id}">${page1} </a>
                </c:when>
                <c:otherwise>
                	<a class="number two" href="photoerWorks.do?page=${page1}&photoer_id=${photoer.id}">${page1} </a>			
                </c:otherwise>
            </c:choose>
            
            </c:if> 
            <c:if test="${page2 ne 0}">
            <c:choose>
                <c:when test="${pageid==page2}">
                	 <a class="number three this_btn" href="photoerWorks.do?page=${page2}&photoer_id=${photoer.id}">${page2}</a>
                </c:when>
                <c:otherwise>
                	 <a class="number three" href="photoerWorks.do?page=${page2}&photoer_id=${photoer.id}">${page2}</a>	
                </c:otherwise>
            </c:choose>
           
            </c:if>
            <c:if test="${page_last_ignore eq true}">
            <a class="last_btn" >...</a>
            </c:if>
            <a class="next_btn" href="photoerWorks.do?page=${nextPage}&photoer_id=${photoer.id}">下一頁</a>
            <a class="last_btn" href="photoerWorks.do?page=${pageCount}&photoer_id=${photoer.id}">尾頁</a>
        </div>
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
    
    <!--彈窗內容 start-->
    <div class="dress_dialog_bgd" id="fixed_box_e">
         <div class="dress_dialog_content">
         	<!-- <div class="dia_left_no_see"></div>
            <div class="dia_right_no_see"></div> -->
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
<script type="text/javascript">
function disp_confirm(){
  var r=confirm("建议使用Google，ie8以上，Firefox，360（极速模式）");
  if (r==true){
        window.location.href= 'http://rj.baidu.com/soft/detail/14744.html?ald';
    }else{
        
    }
}
setTimeout(function () {
        $('body').get(0).style.cssText = $('body').get(0).style.cssText +  'transition: width 1s;-moz-transition: width 1s; -webkit-transition: width 1s;   -o-transition: width 1s;';
        var csstext = $('body').get(0).style.cssText;
        if ( csstext.indexOf('transition') + 1&&csstext.indexOf('webkit') + 1&&csstext.indexOf('moz') + 1&&csstext.indexOf('o') + 1 ) {
            disp_confirm();
        }else{
          
        }
}, 1000);
</script>

</html>
