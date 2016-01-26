<%@tag pageEncoding="UTF-8"%>
<%@attribute name="title" type="java.lang.String" required="false"%>
<%@attribute name="index" type="java.lang.Boolean" required="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>romantic factor</title>
<link rel="icon" href="images/logo.png">
<link rel="shortcut icon" href="images/logo.png">
<link href="css/romantic_factor.css" rel='stylesheet' type='text/css' />
<script src="js/jquery-1.7.2.min.js" type="text/javascript"></script>
<script src="js/custom.modernizr.js"></script>
</head>

<body>

<%--
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en" xmlns="http://www.w3.org/1999/html">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7">

<meta http-equiv="Cache-Control" content="no-store" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />

<title>${title==null?"romantic factor":title}</title>
<link rel="icon" href="${ctx}/static/images/favicon.ico" />
<link rel="shortcut icon" href="${ctx}/static/images/favicon.ico" />

<link href="css/romantic_factor.css" rel='stylesheet' type='text/css' />
<script src="js/jquery-1.7.2.min.js" language="jscript" type="text/javascript" />
<script src="js/custom.modernizr.js" />
<script type="text/javascript">
	var currentURL = "${requestScope.currentURL}";
</script>

</head>
<body <c:if test="${index eq true}">class="index bg"</c:if>>
 --%>