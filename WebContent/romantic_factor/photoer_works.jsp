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
	<script src="js/custom.modernizr.js"></script>
</head>

<body>
	<header>
	<div class="header_content header_content_two">
		<%@ include file="/tpl/head_with_title_img.jsp"%>
	</div>
	</header>

	<jsp:include page="/tpl/page_view_artist_works_list.jsp">
		<jsp:param name="currentPageTipCN" value="摄影师" />
		<jsp:param name="currentPageTipEN" value="PHOTOGRAPHY" />
		<jsp:param name="parentPageURL" value="photoer.do" />
		<jsp:param name="currentPageURL" value="photoerWorks.do" />
	</jsp:include>

	<%@ include file="/tpl/footer_more.jsp"%>
	<%@ include file="/tpl/pop_view_img.jsp"%>
</body>
<script src="js/romantic_factor.js" language="jscript" type="text/javascript"></script>
<script type="text/javascript">
	function disp_confirm() {
		var r = confirm("建议使用Google，ie8以上，Firefox，360（极速模式）");
		if (r == true) {
			window.location.href = 'http://rj.baidu.com/soft/detail/14744.html?ald';
		} else {

		}
	}
	setTimeout(
			function() {
				$('body').get(0).style.cssText = $('body').get(0).style.cssText
						+ 'transition: width 1s;-moz-transition: width 1s; -webkit-transition: width 1s;   -o-transition: width 1s;';
				var csstext = $('body').get(0).style.cssText;
				if (csstext.indexOf('transition') + 1
						&& csstext.indexOf('webkit') + 1
						&& csstext.indexOf('moz') + 1 && csstext.indexOf('o')
						+ 1) {
					//disp_confirm();//如果当前浏览器不支持指定属性，弹出窗口提示
				} else {

				}
			}, 1000);
</script>

</html>
