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
		<link rel="icon" href="<wp:info key="systemParam" paramName="applicationBaseURL" />favicon.png" type="image/png" />
		<link href="http://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" type="text/css" />

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
		<!--  -->

		<script type="text/javascript">
			<!-- firefox compatiblity fix with mootools 1.2 -->
			try { delete String.prototype.contains; } catch(e) {}
		</script>
		<script type="text/javascript" src="<wp:resourceURL />plugins/jpmyportalplus/static/js/lib/mootools-1.2-core.js"></script>
		<script type="text/javascript" src="<wp:resourceURL />plugins/jpmyportalplus/static/js/lib/mootools-1.2-more.js"></script>

		<link rel="stylesheet" type="text/css" href="<wp:cssURL />grid.css" />
		<link rel="stylesheet" type="text/css" href="<wp:cssURL />columns.css" />
		<link rel="stylesheet" type="text/css" href="<wp:cssURL />entando-demo.css" />
		<link rel="stylesheet" type="text/css" href="<wp:cssURL />pagemodels/generic.css" />
		<link rel="stylesheet" type="text/css" href="<wp:cssURL />pagemodels/internal.css" />

		<script type="text/javascript" src="<wp:resourceURL />static/js/twitter.js"></script>

		<%-- css --%>
		<wp:outputHeadInfo type="CSS">
			<link rel="stylesheet" type="text/css" href="<wp:cssURL /><wp:printHeadInfo />" />
		</wp:outputHeadInfo>

		<%-- css for ie7 --%>
		<wp:outputHeadInfo type="CSS_IE7">
			<!--[if IE 7]>
				<link rel="stylesheet" type="text/css" href="<wp:cssURL /><wp:printHeadInfo />" />
			<![endif]-->
		</wp:outputHeadInfo>

		<%-- css for ie8 --%>
		<wp:outputHeadInfo type="CSS_IE8">
			<!--[if IE 8]>
				<link rel="stylesheet" type="text/css" href="<wp:cssURL /><wp:printHeadInfo />" />
			<![endif]-->
		</wp:outputHeadInfo>

		<%-- js global vars --%>
		<wp:outputHeadInfo type="JS_VARS">
			<script type="text/javascript">
			<!--//--><![CDATA[//><!--
				<wp:printHeadInfo />
			//--><!]]>
			</script>
		</wp:outputHeadInfo>

		<%-- js scripts (remember to include the libraries first) --%>
		<wp:outputHeadInfo type="JS">
			<script type="text/javascript" src="<wp:resourceURL />static/js/<wp:printHeadInfo />"></script>
		</wp:outputHeadInfo>

		<%-- js code --%>
		<wp:outputHeadInfo type="JS_RAW">
			<script type="text/javascript">
			<!--//--><![CDATA[//><!--
				<wp:printHeadInfo />
			//--><!]]>
			</script>
		</wp:outputHeadInfo>
	</head>
	<body>
		<div id="container">

			<div id="header" class="page-space">
			<div id="header-aux">
			<div class="page-space-1"><div class="page-space-2">
				<div id="header-login" class="column-container">
					<div class="column-left-30">
						<%-- Top Header I --%>
						<wp:show frame="0" />
					</div>
					<div class="column-right-30">
						<div class="column-container">
							<%-- Top Header II --%>
							<wp:show frame="1" />
							<%-- Top Header III --%>
							<wp:show frame="2" />
						</div>
					</div>
				</div>

				<div id="header-content-container" class="column-container">
					<div class="column-left-75">
						<div class="column-left-25">
							<a href="<wp:url page="homepage" />" title="goto homepage"><img src="<wp:imgURL />logo.png" alt="" /></a>
						</div>
						<div id="header-content" class="column-right-25">
							<%-- Header I --%>
							<wp:show frame="3" />
							<h1 class="title"><wp:i18n key="SLOGAN_TITLE" escapeXml="false" /></h1>
							<p><wp:i18n key="SLOGAN_DESCRIPTION" escapeXml="false" /></p>
						</div>
					</div>

					<div class="column-right-75">
						<div class="column-container">
							<%-- Header II --%>
							<wp:show frame="4" />
							<%-- Header III --%>
							<wp:show frame="5" />
							<div id="logo2">
								<p>
									<img src="<wp:imgURL />logo-entando.png" alt="" />
								</p>
							</div>
						</div>
					</div>
				</div>

				<div id="choose-profile" class="column-container">
					<p>
						<img src="<wp:imgURL />choose-profile.png" alt="choose your profile" />
					</p>
				</div>
			</div></div></div></div>

			<div id="users" class="page-space"><div class="page-space-1"><div class="page-space-2">
				<div class="column-container">
					<%-- Users I --%>
					<wp:show frame="6" />
					<%-- Users II --%>
					<wp:show frame="7" />
					<%-- Users III --%>
					<wp:show frame="8" />
					<%-- Users IV --%>
					<wp:show frame="9" />
					<jsp:include page="inc/users.jsp" />
				</div>
			</div></div></div>

			<div id="welcome" class="page-space  user-<c:out value="${sessionScope.currentUser}" />"><div class="page-space-1"><div class="page-space-2">
				<div class="column-container">
					<c:if test="${sessionScope.currentUser != 'guest'}">
						<p>
							<wp:i18n key="WELCOME_${sessionScope.currentUser}" escapeXml="false" />
						</p>
					</c:if>
				</div>
				<wp:url var="opencloseActionURL" paramRepeat="false"><wp:urlPar name="openFrame" ><c:out value="${edit_link_href_value}" /></wp:urlPar></wp:url>
			</div></div></div>


			<div id="content" class="page-space"><div class="page-space-1"><div class="page-space-2">
				<c:set var="checkSimpleContents"><wp:show frame="10" /><wp:show frame="11" /><wp:show frame="12" /><wp:show frame="13" /></c:set>
				<c:if test="${checkSimpleContents!='' && (not empty checkSimpleContents)}">
					<div class="column-container" id="simple-contents">
						<div class="">
							<div class="boxspacer">
								<%-- Content I --%>
								<wp:show frame="10" />
								<%-- Content II --%>
								<wp:show frame="11" />
								<%-- Content III --%>
								<wp:show frame="12" />
								<%-- Content IV --%>
								<wp:show frame="13" />
							</div>
						</div>
					</div>
				</c:if>

				<div class="column-container">
					<div class="column-left-75" id="main">
						<div class="colum-container" id="main-aux">
							<%-- Left Column I --%>
							<wp:show frame="14" />
							<%-- Left Column II --%>
							<wp:show frame="15" />
							<%-- Left Column III --%>
							<wp:show frame="16" />
							<%-- Left Column IV --%>
							<wp:show frame="17" />
							<%-- Left Column V --%>
							<wp:show frame="18" />
							<%-- Left Column VI --%>
							<wp:show frame="19" />
							<%-- Left Column VII --%>
							<wp:show frame="20" />
							<%-- Left Column VIII --%>
							<wp:show frame="21" />
							<%-- Left Column IX --%>
							<wp:show frame="22" />
							<%-- Left Column X --%>
							<wp:show frame="23" />
						</div>
					</div>
						<div class="column-right-75" id="right">
							<%-- Right Column I --%>
							<wp:show frame="24" />
							<%-- Right Column II --%>
							<wp:show frame="25" />
							<%-- Right Column III --%>
							<wp:show frame="26" />
							<%-- Right Column IV --%>
							<wp:show frame="27" />
							<%-- Right Column V --%>
							<wp:show frame="28" />
							<%-- Right Column VI --%>
							<wp:show frame="29" />
							<%-- Right Column VII --%>
							<wp:show frame="30" />
							<%-- Right Column VIII --%>
							<wp:show frame="31" />
							<%-- Right Column IX --%>
							<wp:show frame="32" />
							<%-- Right Column X --%>
							<wp:show frame="33" />
						</div>
				</div>

			</div></div></div>

			<div id="footer" class="page-space"><div class="page-space-1"><div class="page-space-2">
				<div class="column-container">
					<div class="column-left-70">
						<%-- Footer I --%>
						<wp:show frame="34" />
						<%-- Footer II --%>
						<wp:show frame="35" />
						<jsp:include page="inc/footer-links.jsp" />

					</div>
					<div class="column-right-70">
						<%-- Footer III --%>
						<wp:show frame="36" />
					</div>
				</div>


				<div class="column-container">
					<div class="column-left-70">
						<p class="copyright">
							<wp:i18n key="COPYRIGHT" escapeXml="false" />
						</p>
					</div>
					<div class="column-right-70">
						<%-- Footer IV --%>
						<wp:show frame="37" />
					</div>
				</div>
			</div></div></div>
		</div>
		
		<c:if test="${outputHeadInfo_JS_JQUERY_isHere}">
			<jsp:include page="/WEB-INF/plugins/jpfrontshortcut/aps/jsp/models/inc/widget_popup_init.jsp" />
		</c:if>
		
	</body>
</html>