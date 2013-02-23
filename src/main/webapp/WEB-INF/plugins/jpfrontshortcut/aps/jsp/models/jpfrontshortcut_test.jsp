<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<wp:info key="currentLang" />">
	<head>
		<title>
			<wp:i18n key="PORTAL_TITLE" />&#32;|&#32;<wp:currentPage param="title" />
		</title>
		<%--
		<link rel="icon" href="<wp:info key="systemParam" paramName="applicationBaseURL" />favicon.png" type="image/png" />
		
		<link href="http://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" type="text/css" />
		
		<link rel="stylesheet" type="text/css" href="<wp:cssURL />grid.css" />
		<link rel="stylesheet" type="text/css" href="<wp:cssURL />columns.css" />
		--%>
		<link rel="stylesheet" type="text/css" href="<wp:cssURL />entando-demo.css" />
		<link rel="stylesheet" type="text/css" href="<wp:cssURL />pagemodels/generic.css" />
		<link rel="stylesheet" type="text/css" href="<wp:cssURL />pagemodels/home.css" />
		
		<!-- JS_JQUERY -->
		<wp:outputHeadInfo type="JS_JQUERY">
			<c:set var="outputHeadInfo_JS_JQUERY_isHere" value="${true}" />
			<wp:printHeadInfo />
		</wp:outputHeadInfo>
		<c:if test="${outputHeadInfo_JS_JQUERY_isHere}">
			<!-- This file includes necessary functions/topics for validation and all topic examples -->
			<script type="text/javascript" src="<wp:resourceURL />showcase.js"></script>
			<!-- Extend the Struts2 jQuery Plugin with an richtext editor -->
			<script type="text/javascript" src="<wp:resourceURL />extendplugin.js"></script>
		</c:if>
		<%-- 
		<script type="text/javascript">
			<!-- firefox compatiblity fix with mootools 1.2 -->
			try { delete String.prototype.contains; } catch(e) {}
		</script>
		<script type="text/javascript" src="<wp:resourceURL />plugins/jpmyportalplus/static/js/lib/mootools-1.2-core.js"></script>
		<script type="text/javascript" src="<wp:resourceURL />plugins/jpmyportalplus/static/js/lib/mootools-1.2-more.js"></script>
		--%>
		<%-- jpmyportal plus - static resources start 
		<script type="text/javascript" src="<wp:resourceURL />plugins/jpmyportalplus/static/js/lib/moo-jAPS-jpmyportalplus-sortable.js"></script>
		<script type="text/javascript" src="<wp:resourceURL />plugins/jpmyportalplus/static/js/lib/moo-jAPS-jpmyportalplus.js"></script>
		<jsp:include page="/WEB-INF/plugins/jpmyportalplus/aps/jsp/models/inc/jpmyportalplus_javascript_variables.jsp" />
		<script type="text/javascript" src="<wp:resourceURL />plugins/jpmyportalplus/static/js/jpmyportalplus.js"></script>
		<link rel="stylesheet" type="text/css" href="<wp:resourceURL />plugins/jpmyportalplus/static/css/jpmyportalplus.css" media="screen" />
		jpmyportal plus - static resources end --%>
		<%--
		<script type="text/javascript" src="<wp:resourceURL />static/js/twitter.js"></script>
		--%>
		<%-- css --%>
		<wp:outputHeadInfo type="CSS">
			<link rel="stylesheet" type="text/css" href="<wp:cssURL /><wp:printHeadInfo />" />
		</wp:outputHeadInfo>
		
		<%-- css for ie7 
		<wp:outputHeadInfo type="CSS_IE7">
			<!--[if IE 7]>
				<link rel="stylesheet" type="text/css" href="<wp:cssURL /><wp:printHeadInfo />" />
			<![endif]-->
		</wp:outputHeadInfo>
		--%>
		<%-- css for ie8 
		<wp:outputHeadInfo type="CSS_IE8">
			<!--[if IE 8]>
				<link rel="stylesheet" type="text/css" href="<wp:cssURL /><wp:printHeadInfo />" />
			<![endif]-->
		</wp:outputHeadInfo>
		--%>
		<%-- js global vars 
		<wp:outputHeadInfo type="JS_VARS">
			<script type="text/javascript">
			<!--//--><![CDATA[//><!--
				<wp:printHeadInfo />
			//--><!]]>
			</script>
		</wp:outputHeadInfo>
		--%>
		<%-- js scripts (remember to include the libraries first) --%>
		<wp:outputHeadInfo type="JS">
			<script type="text/javascript" src="<wp:resourceURL />static/js/<wp:printHeadInfo />"></script>
		</wp:outputHeadInfo>
		
		<%-- js code
		<wp:outputHeadInfo type="JS_RAW">
			<script type="text/javascript">
			<!--//--><![CDATA[//><!--
				<wp:printHeadInfo />
			//--><!]]>
			</script>
		</wp:outputHeadInfo>
		--%>
	</head>
	<body>
		<h1><wp:currentPage param="title" /></h1>
		<wp:show frame="0" />
		<wp:show frame="1" />
		<wp:show frame="2" />
		<wp:show frame="3" />
		<wp:show frame="4" />
		<wp:show frame="5" />
		<wp:show frame="6" />
		<wp:show frame="7" />
		<wp:show frame="8" />
		<wp:show frame="9" />
		<c:if test="${outputHeadInfo_JS_JQUERY_isHere}">
			<jsp:include page="/WEB-INF/plugins/jpfrontshortcut/aps/jsp/models/inc/widget_popup_init.jsp" />
		</c:if>
	</body>
</html>
