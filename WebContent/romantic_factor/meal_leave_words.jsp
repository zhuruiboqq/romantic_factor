<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/tpl/taglibs.jsp" %>
<rf:contentHeaderFront />
	
	<header>
    	<div class="header_content">
        	<div class="my_top_div">
	        	<ul class="my_top_ul">
	        		<li><img src="images/head_pic2.jpg" /></li>
	        		<li><img src="images/head_pic1.jpg" /></li>
	        		<li><img src="images/head_pic2.jpg" /></li>
	        	</ul>
        	</div>
        	<img id="header_logo_img" src="images/logo.png" />
            <div class="nav_content">
            	<a href="romanticFactor.do"><img src="images/logo.png" /></a>
                <nav class="header_nav">
                    <ul>
                        <li class="header_li_1"><a href="brandStory.do"><p>关于我们</p><span>about us</span></a></li>
                        <li class="header_li_2"><a href="photoer.do?page=1"><p>摄影作品</p><span>PHOTOGRAPHY</span></a></li>
                        <li class="header_li_3"><a href="makeupMakeer.do?page=1"><p>化妆作品</p><span>MAKEUP</span></a></li>
                        <li class="header_li_4"><a href="dress.do?page=1&type=1"><p>礼服欣赏</p><span>DRESS</span></a></li>
                        <li class="header_li_5"><a href="mealIntroduce.do"><p>套餐介绍</p><span>PACKAGE</span></a></li>
                        <li class="header_li_6"><a href="training.do"><p>培训</p><span>TRAINING</span></a></li>
                        <li class="header_li_7"><a href="JavaScript:;"><p>婚礼策划</p><span>WEDDING</span></a></li>
                        <li class="header_li_8"><a href="JavaScript:;"><p>录像</p><span>VIDEO</span></a></li>
                        <li class="header_li_9"><a href="JavaScript:;"><p>主持人</p><span>HOST</span></a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>
    <article class="introduce_article meal_leave_words_article">
    	<h1 class="content_top_title">套餐介绍</h1>
    	<h2 class="content_top_title_2">SET MEAL</h2>
    	
        <nav class="set_meal_content_nav">
        	<ul>
            	<li>
                	<a href="mealIntroduce.do">
                    	<div class="nav_link_text">套餐介绍</div>
                        <div class="nav_link_line"></div>
                    </a>
                </li>
                <li><span>/</span></li>
                <li>
                	<a href="mealRecommendLocation.do">
                    	<div class="nav_link_text">景点推介</div>
                        <div class="nav_link_line"></div>
                    </a>
                </li>
                <li><span>/</span></li>
                <li>
                	<a href="mealTripInfo.do">
                    	<div class="nav_link_text">旅游情报</div>
                        <div class="nav_link_line"></div>
                    </a>
                </li>
                <li><span>/</span></li>
                <li>
                	<a href="mealLeaveWords.do">
                    	<div class="nav_link_text text_this">合作留言</div>
                        <div class="nav_link_line line_this"></div>
                    </a>
                </li>
            </ul>
        
        </nav>
        <div class="set_meal_across_line"></div>
        <div class="footer_name_content set_meal_footer not_foot">
            <div class="footer_top">
                <div class="line no_show left"></div>
                <img class="icon_left left" src="images/icon_left.png" />
                <div class="text left">
                    <h1><img src="images/foot_pic1.png" /></h1>
                    <h2>罗 蔓 缘 素 婚 纱 摄 影</h2>
                </div>
                <div class="line no_show right"></div>
                <img class="icon_right right" src="images/icon_left.png" />
            </div>
            
        </div> 
        <div class="leave_words_content">
        	<p style="color:#636363;line-height:30px;font-size:14px;">
            	<strong>合作留言</strong><br />
                您好！若您有合作提案、采访等需求，欢迎在此提出。为了加速我们为您处理的时间，请务必详细填写以下资料后送出，当我们接获您的来信，将会在
				3个工作天內尽快回复您！<br />
				*服务时间：周一至周五 AM09:30-12:00；PM13:30-18:00
            </p>
            <div class="leave_words_inputs left">
            	<div class="unit_line_info">
                    <div class="lable left">
                        <div class="shixin_circle left"></div>
                        <span>姓名：</span>
                    </div>
                    <input type="text" />
                </div>
                <div class="unit_line_info">
                    <div class="lable left">
                        <div class="shixin_circle left"></div>
                        <span>QQ号码：</span>
                    </div>
                    <input type="text" />
                </div>
                <div class="unit_line_info">
                    <div class="lable left">
                        <div class="shixin_circle left"></div>
                        <span>联系电话：</span>
                    </div>
                    <input type="text" />
                </div>
                <div class="unit_line_info">
                    <div class="lable left">
                        <div class="shixin_circle left"></div>
                        <span>电子邮箱：</span>
                    </div>
                    <input type="text" />
                </div>
                <div class="unit_line_info">
                    <div class="lable left">
                        <div class="shixin_circle left"></div>
                        <span>居住地址：</span>
                    </div>
                    <input type="text" />
                </div>
                <div class="unit_line_info">
                    <div class="lable left">
                        <div class="shixin_circle left"></div>
                        <span>建议和要求：</span>
                    </div>
                    <a href="JavaScript:;">提交</a>
                    <a href="JavaScript:;">重设</a>
                </div>
                <textarea class="suggestion_area"></textarea>
            </div>
            <div class="leave_words_img right"><img src="images/leave_words1.jpg" /></div>
        </div>
        <div class="set_meal_across_line meal_leave_words_line"></div>
    	<div class="footer_name_content set_meal_footer">
            <div class="footer_top">
                <div class="line no_show left"></div>
                <img class="icon_left left" src="images/icon_left.png" />
                <div class="text left">
                    <h1><img src="images/foot_pic1.png" /></h1>
                    <h2>罗 蔓 缘 素 婚 纱 摄 影</h2>
                </div>
                <div class="line no_show right"></div>
                <img class="icon_right right" src="images/icon_left.png" />
            </div>
            <div class="icons_link">
                <a href="JavaScript:;"><img src="images/xinlang_icon.png" /></a>
                <a href="JavaScript:;"><img src="images/weixin_icon.png" /></a>
                <a href="JavaScript:;"><img src="images/tengxun_icon.png" /></a>
                <a  target="_blank" href="http://wpa.qq.com/msgrd?v=1&uin=707823233&site=qq&menu=yes"><img src="images/qq.png" /></a>
            </div>
            <p class="frist">© Romantic factor - 2015保留所有权利</p>
            <!-- <p>全国免费热线：400-888-8888     联系电话：0101-88988888</p>
            <p>地址：中国广州香港深圳上海杭州华南大厦10000号</p> -->
            <p>公司：广州市罗蔓缘素婚纱摄影有限公司</p>
        </div> 
    </article>
    
    
    <footer>
    	<div class="left">© Romantic factor - 2015保留所有权利 <a>   粤ICP备15086517       </a>  
        	<a class="frist" href="JavaScript:;">联系方式</a>
            <span>-</span>
            <a href="brandPromise.do">消费保证</a>
            <span>-</span>
            <a href="brandAboutPrivacy.do">关于隐私</a>
        </div>
        <div class="right"><a href="mealLeaveWords.do">留言板</a></div>
    </footer>
    
<rf:contentFooterFront/>